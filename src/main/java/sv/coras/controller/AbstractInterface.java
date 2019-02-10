/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.controller;

import java.util.List;

/**
 *
 * @author Juan
 */
public interface AbstractInterface<T> {

    boolean create(T entity);
    
    T createObId(T entity);

    boolean edit(T entity);

    T find(Object id);

    List<T> findAll();

    int count();

}
