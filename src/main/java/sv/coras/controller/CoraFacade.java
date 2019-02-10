/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import sv.coras.entity.Cora;

/**
 *
 * @author Juan
 */
@Stateless
public class CoraFacade extends AbstractFacade<Cora> implements CoraFacadeLocal {

    @PersistenceContext(unitName = "ColeccionCoras_PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CoraFacade() {
        super(Cora.class);
    }
    
}
