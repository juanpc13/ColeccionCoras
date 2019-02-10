/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import java.util.List;
import javax.ejb.Local;
import sv.coras.entity.Casa;

/**
 *
 * @author Juan
 */
@Local
public interface CasaFacadeLocal {

    void create(Casa casa);

    void edit(Casa casa);

    void remove(Casa casa);

    Casa find(Object id);

    List<Casa> findAll();

    List<Casa> findRange(int[] range);

    int count();
    
}
