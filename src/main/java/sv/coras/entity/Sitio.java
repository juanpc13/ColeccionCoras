/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
@Table(name = "sitio", catalog = "postgres", schema = "public")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sitio.findAll", query = "SELECT s FROM Sitio s")
    , @NamedQuery(name = "Sitio.findByIdSitio", query = "SELECT s FROM Sitio s WHERE s.idSitio = :idSitio")
    , @NamedQuery(name = "Sitio.findByNombre", query = "SELECT s FROM Sitio s WHERE s.nombre = :nombre")
    , @NamedQuery(name = "Sitio.findByImagen", query = "SELECT s FROM Sitio s WHERE s.imagen = :imagen")
    , @NamedQuery(name = "Sitio.findByDescripcion", query = "SELECT s FROM Sitio s WHERE s.descripcion = :descripcion")
    , @NamedQuery(name = "Sitio.findByActivo", query = "SELECT s FROM Sitio s WHERE s.activo = :activo")})
public class Sitio implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_sitio", nullable = false)
    private Integer idSitio;
    @Size(max = 64)
    @Column(name = "nombre", length = 64)
    private String nombre;
    @Size(max = 128)
    @Column(name = "imagen", length = 128)
    private String imagen;
    @Size(max = 2147483647)
    @Column(name = "descripcion", length = 2147483647)
    private String descripcion;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idSitio")
    private List<Cora> coraList;

    public Sitio() {
    }

    public Sitio(Integer idSitio) {
        this.idSitio = idSitio;
    }

    public Integer getIdSitio() {
        return idSitio;
    }

    public void setIdSitio(Integer idSitio) {
        this.idSitio = idSitio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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
    public List<Cora> getCoraList() {
        return coraList;
    }

    public void setCoraList(List<Cora> coraList) {
        this.coraList = coraList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSitio != null ? idSitio.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sitio)) {
            return false;
        }
        Sitio other = (Sitio) object;
        if ((this.idSitio == null && other.idSitio != null) || (this.idSitio != null && !this.idSitio.equals(other.idSitio))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sv.coras.entity.Sitio[ idSitio=" + idSitio + " ]";
    }
    
}
