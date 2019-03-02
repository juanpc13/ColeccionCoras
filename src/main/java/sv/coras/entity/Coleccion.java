/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Juan
 */
@Entity
@Table(name = "coleccion", catalog = "postgres", schema = "public")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Coleccion.findAll", query = "SELECT c FROM Coleccion c")
    , @NamedQuery(name = "Coleccion.findByIdColeccion", query = "SELECT c FROM Coleccion c WHERE c.idColeccion = :idColeccion")
    , @NamedQuery(name = "Coleccion.findByEstadoCora", query = "SELECT c FROM Coleccion c WHERE c.estadoCora = :estadoCora")
    , @NamedQuery(name = "Coleccion.findByActivo", query = "SELECT c FROM Coleccion c WHERE c.activo = :activo")})
public class Coleccion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_coleccion")
    private Integer idColeccion;
    @Column(name = "estado_cora")
    private Integer estadoCora;
    @Column(name = "activo")
    private Boolean activo;
    @JoinColumn(name = "id_casa", referencedColumnName = "id_casa")
    @ManyToOne
    private Casa idCasa;
    @JoinColumn(name = "id_cora", referencedColumnName = "id_cora")
    @ManyToOne(optional = false)
    private Cora idCora;
    @JoinColumn(name = "id_usuario", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false)
    private Usuario idUsuario;

    public Coleccion() {
    }

    public Coleccion(Integer idColeccion) {
        this.idColeccion = idColeccion;
    }

    public Integer getIdColeccion() {
        return idColeccion;
    }

    public void setIdColeccion(Integer idColeccion) {
        this.idColeccion = idColeccion;
    }

    public Integer getEstadoCora() {
        return estadoCora;
    }

    public void setEstadoCora(Integer estadoCora) {
        this.estadoCora = estadoCora;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }

    public Casa getIdCasa() {
        return idCasa;
    }

    public void setIdCasa(Casa idCasa) {
        this.idCasa = idCasa;
    }

    public Cora getIdCora() {
        return idCora;
    }

    public void setIdCora(Cora idCora) {
        this.idCora = idCora;
    }

    public Usuario getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Usuario idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idColeccion != null ? idColeccion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Coleccion)) {
            return false;
        }
        Coleccion other = (Coleccion) object;
        if ((this.idColeccion == null && other.idColeccion != null) || (this.idColeccion != null && !this.idColeccion.equals(other.idColeccion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sv.coras.entity.Coleccion[ idColeccion=" + idColeccion + " ]";
    }
    
}
