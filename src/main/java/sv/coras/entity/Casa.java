/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Juan
 */
@Entity
@Table(name = "casa", catalog = "postgres", schema = "public")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Casa.findAll", query = "SELECT c FROM Casa c")
    , @NamedQuery(name = "Casa.findByIdCasa", query = "SELECT c FROM Casa c WHERE c.idCasa = :idCasa")
    , @NamedQuery(name = "Casa.findByNombre", query = "SELECT c FROM Casa c WHERE c.nombre = :nombre")
    , @NamedQuery(name = "Casa.findByIdentificador", query = "SELECT c FROM Casa c WHERE c.identificador = :identificador")
    , @NamedQuery(name = "Casa.findByImagen", query = "SELECT c FROM Casa c WHERE c.imagen = :imagen")
    , @NamedQuery(name = "Casa.findByDescripcion", query = "SELECT c FROM Casa c WHERE c.descripcion = :descripcion")
    , @NamedQuery(name = "Casa.findByActivo", query = "SELECT c FROM Casa c WHERE c.activo = :activo")})
public class Casa implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_casa")
    private Integer idCasa;
    @Size(max = 64)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 8)
    @Column(name = "identificador")
    private String identificador;
    @Size(max = 128)
    @Column(name = "imagen")
    private String imagen;
    @Size(max = 2147483647)
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "idCasa")
    private List<Coleccion> coleccionList;

    public Casa() {
    }

    public Casa(Integer idCasa) {
        this.idCasa = idCasa;
    }

    public Integer getIdCasa() {
        return idCasa;
    }

    public void setIdCasa(Integer idCasa) {
        this.idCasa = idCasa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIdentificador() {
        return identificador;
    }

    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Boolean getActivo() {
        return activo;
    }

    public void setActivo(Boolean activo) {
        this.activo = activo;
    }

    @XmlTransient
    public List<Coleccion> getColeccionList() {
        return coleccionList;
    }

    public void setColeccionList(List<Coleccion> coleccionList) {
        this.coleccionList = coleccionList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCasa != null ? idCasa.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Casa)) {
            return false;
        }
        Casa other = (Casa) object;
        if ((this.idCasa == null && other.idCasa != null) || (this.idCasa != null && !this.idCasa.equals(other.idCasa))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sv.coras.entity.Casa[ idCasa=" + idCasa + " ]";
    }
    
}
