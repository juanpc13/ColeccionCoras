/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.utils;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.primefaces.json.JSONObject;
import sv.coras.controller.UsuarioFacadeLocal;
import sv.coras.entity.Usuario;

/**
 *
 * @author jcpleitez
 */
public class UserAuthentication {

    private Usuario usuario;

    @EJB
    UsuarioFacadeLocal ufl;

    private static String name = "usuario";
    
    FacesContext facesContext = FacesContext.getCurrentInstance();
    HttpServletRequest request = (HttpServletRequest) facesContext.getExternalContext().getRequest();
    HttpServletResponse response = (HttpServletResponse) facesContext.getExternalContext().getResponse();

    public boolean validUserKey() {
        JSONObject jsonData = null;        

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    jsonData = new JSONObject(cookie.getValue());
                }
            }
        }

        if (jsonData != null) {
            Integer id = Integer.parseInt(jsonData.getString("id"));
            String llave = jsonData.getString("llave");

            Usuario tempUser = ufl.find(id);
            if (tempUser.getLlave().equals(llave)) {
                usuario = tempUser;
                return true;
            }
        }

        return false;
    }

    public void redirect(String redirect) {
        if (usuario == null) {
            ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();
            try {
                context.redirect(context.getRequestContextPath() + redirect);
            } catch (IOException ex) {
                Logger.getLogger(this.getClass().getSimpleName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public boolean logInUsuario(String correo, String password) {
        Usuario tempUser = ufl.findByEmail(correo);
        if (tempUser.getPassword().equals(password)) {
            usuario = tempUser;
            JSONObject jsonData = new JSONObject();
            jsonData.put("id", usuario.getIdUsuario());
            jsonData.put("llave", usuario.getLlave());

            Cookie cookie = null;
            Cookie[] cookies = request.getCookies();
            for (Cookie c : cookies) {
                if (c.getName().equals(name)) {
                    cookie = c;
                    break;
                }
            }

            if (cookie != null) {
                cookie.setValue(jsonData.toString());
            } else {
                cookie = new Cookie(name, jsonData.toString());
                cookie.setPath(request.getContextPath());
            }
            cookie.setMaxAge(72 * 60 * 60);//72 Horas

            response.addCookie(cookie);
            return true;
        }
        return false;
    }

    public void removeUsuario() {
        usuario = null;
    }

}
