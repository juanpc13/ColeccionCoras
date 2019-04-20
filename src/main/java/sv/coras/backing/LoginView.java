/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.backing;

import sv.coras.utils.UserAuthentication;
import java.io.Serializable;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Named;
import sv.coras.entity.Usuario;

/**
 *
 * @author jcpleitez
 */
@Named
@ViewScoped
public class LoginView implements Serializable{
    
    private Usuario usuario;
    private String correo = "";
    private String password = "";
    
    UserAuthentication ua = new UserAuthentication();

    @PostConstruct
    public void init() {        
        if (ua.validUserKey()) {
            ua.redirect("/index.jsf");
        }
        usuario = new Usuario();
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public void registrar(){
        usuario.setActivo(true);
        usuario.setFoto("");
        System.out.println(usuario.getNombres());
        
    }
    
    public void iniciar(){
        ua.logInUsuario(correo, password);
        if (ua.validUserKey()) {
            ua.redirect("/index.jsf");
        }
    }
    
    
}
