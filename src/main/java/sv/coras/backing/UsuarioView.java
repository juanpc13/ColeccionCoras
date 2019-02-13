/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.backing;

import java.io.Serializable;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import sv.coras.controller.UsuarioFacadeLocal;

/**
 *
 * @author Juan
 */
@Named
@ViewScoped
public class UsuarioView implements Serializable{
    
    @Inject
    private UsuarioFacadeLocal ufl;
    
    private Integer numberOfUsers;
    
    @PostConstruct
    public void init(){
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
    
}
