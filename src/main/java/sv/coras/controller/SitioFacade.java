/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import sv.coras.entity.Sitio;

/**
 *
 * @author Juan
 */
@Stateless
public class SitioFacade extends AbstractFacade<Sitio> implements SitioFacadeLocal {

    @PersistenceContext(unitName = "ColeccionCoras_PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SitioFacade() {
        super(Sitio.class);
    }
    
}
