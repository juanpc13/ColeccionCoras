/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import javax.ejb.Local;
import sv.coras.entity.Usuario;

/**
 *
 * @author Juan
 */
@Local
public interface UsuarioFacadeLocal extends AbstractInterface<Usuario>{
    
    public Usuario findByEmail(String email);
    
}
