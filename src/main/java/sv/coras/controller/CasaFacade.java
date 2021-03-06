/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import sv.coras.entity.Casa;

/**
 *
 * @author Juan
 */
@Stateless
public class CasaFacade extends AbstractFacade<Casa> implements CasaFacadeLocal {

    @PersistenceContext(unitName = "ColeccionCoras_PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CasaFacade() {
        super(Casa.class);
    }
    
}
