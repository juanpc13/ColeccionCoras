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
import javax.inject.Inject;
import javax.inject.Named;
import sv.coras.controller.UsuarioFacadeLocal;
import sv.coras.entity.Usuario;

/**
 *
 * @author Juan
 */
@Named
@ViewScoped
public class UsuarioView implements Serializable{
    
    private Usuario usuario;
    
    @Inject
    private UsuarioFacadeLocal ufl;
    
    private Integer numberOfUsers;
    
    @PostConstruct
    public void init(){
        UserAuthentication ua = new UserAuthentication();        
        if (ua.validUserKey()) {
            usuario = ua.getUsuario();
        }else{
            ua.redirect("/login.jsf");
        }
        numberOfUsers = ufl.count();
    }
    
    public UsuarioView() {
    }

    public Integer getNumberOfUsers() {
        return numberOfUsers;
    }

    public void setNumberOfUsers(Integer numberOfUsers) {
        this.numberOfUsers = numberOfUsers;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    
    
}
