/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import java.util.List;
import javax.ejb.Local;
import sv.coras.entity.Cora;

/**
 *
 * @author Juan
 */
@Local
public interface CoraFacadeLocal {

    void create(Cora cora);

    void edit(Cora cora);

    void remove(Cora cora);

    Cora find(Object id);

    List<Cora> findAll();

    List<Cora> findRange(int[] range);

    int count();
    
}
