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
@Table(name = "tipo_cora", catalog = "postgres", schema = "public")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TipoCora.findAll", query = "SELECT t FROM TipoCora t")
    , @NamedQuery(name = "TipoCora.findByIdTipoCora", query = "SELECT t FROM TipoCora t WHERE t.idTipoCora = :idTipoCora")
    , @NamedQuery(name = "TipoCora.findByNombre", query = "SELECT t FROM TipoCora t WHERE t.nombre = :nombre")
    , @NamedQuery(name = "TipoCora.findByImagen", query = "SELECT t FROM TipoCora t WHERE t.imagen = :imagen")
    , @NamedQuery(name = "TipoCora.findByDescripcion", query = "SELECT t FROM TipoCora t WHERE t.descripcion = :descripcion")
    , @NamedQuery(name = "TipoCora.findByActivo", query = "SELECT t FROM TipoCora t WHERE t.activo = :activo")})
public class TipoCora implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_tipo_cora")
    private Integer idTipoCora;
    @Size(max = 64)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 128)
    @Column(name = "imagen")
    private String imagen;
    @Size(max = 2147483647)
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "activo")
    private Boolean activo;
    @OneToMany(mappedBy = "idTipoCora")
    private List<Cora> coraList;

    public TipoCora() {
    }

    public TipoCora(Integer idTipoCora) {
        this.idTipoCora = idTipoCora;
    }

    public Integer getIdTipoCora() {
        return idTipoCora;
    }

    public void setIdTipoCora(Integer idTipoCora) {
        this.idTipoCora = idTipoCora;
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
        hash += (idTipoCora != null ? idTipoCora.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoCora)) {
            return false;
        }
        TipoCora other = (TipoCora) object;
        if ((this.idTipoCora == null && other.idTipoCora != null) || (this.idTipoCora != null && !this.idTipoCora.equals(other.idTipoCora))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sv.coras.entity.TipoCora[ idTipoCora=" + idTipoCora + " ]";
    }
    
}
