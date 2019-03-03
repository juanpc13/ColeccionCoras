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
import sv.coras.controller.CoraFacadeLocal;

/**
 *
 * @author Juan
 */
@Named
@ViewScoped
public class MainView implements Serializable{
    
    @Inject
    private CoraFacadeLocal cfl;
    
    private Integer numberOfQuarters;
    
    @PostConstruct
    public void init(){
        numberOfQuarters = cfl.count();
    }

    public Integer getNumberOfQuarters() {
        return numberOfQuarters;
    }

    public void setNumberOfQuarters(Integer numberOfQuarters) {
        this.numberOfQuarters = numberOfQuarters;
    }
    
}
