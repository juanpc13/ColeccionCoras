/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import java.util.List;
import javax.ejb.Local;
import sv.coras.entity.Sitio;

/**
 *
 * @author Juan
 */
@Local
public interface SitioFacadeLocal {

    void create(Sitio sitio);

    void edit(Sitio sitio);

    void remove(Sitio sitio);

    Sitio find(Object id);

    List<Sitio> findAll();

    List<Sitio> findRange(int[] range);

    int count();
    
}
