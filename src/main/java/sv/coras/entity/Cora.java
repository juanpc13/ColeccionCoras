/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.coras.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Juan
 */
@Entity
@Table(name = "cora", catalog = "postgres", schema = "public")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cora.findAll", query = "SELECT c FROM Cora c")
    , @NamedQuery(name = "Cora.findByIdCora", query = "SELECT c FROM Cora c WHERE c.idCora = :idCora")
    , @NamedQuery(name = "Cora.findByImagen", query = "SELECT c FROM Cora c WHERE c.imagen = :imagen")
    , @NamedQuery(name = "Cora.findByDisenador", query = "SELECT c FROM Cora c WHERE c.disenador = :disenador")
    , @NamedQuery(name = "Cora.findByDescripcion", query = "SELECT c FROM Cora c WHERE c.descripcion = :descripcion")
    , @NamedQuery(name = "Cora.findByFechaIncorporacion", query = "SELECT c FROM Cora c WHERE c.fechaIncorporacion = :fechaIncorporacion")
    , @NamedQuery(name = "Cora.findByFechaEmision", query = "SELECT c FROM Cora c WHERE c.fechaEmision = :fechaEmision")
    , @NamedQuery(name = "Cora.findByProducidas", query = "SELECT c FROM Cora c WHERE c.producidas = :producidas")
    , @NamedQuery(name = "Cora.findByActivo", query = "SELECT c FROM Cora c WHERE c.activo = :activo")})
public class Cora implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_cora", nullable = false)
    private Integer idCora;
    @Size(max = 128)
    @Column(name = "imagen", length = 128)
    private String imagen;
    @Size(max = 64)
    @Column(name = "disenador", length = 64)
    private String disenador;
    @Size(max = 2147483647)
    @Column(name = "descripcion", length = 2147483647)
    private String descripcion;
    @Column(name = "fecha_incorporacion")
    @Temporal(TemporalType.DATE)
    private Date fechaIncorporacion;
    @Column(name = "fecha_emision")
    @Temporal(TemporalType.DATE)
    private Date fechaEmision;
    @Column(name = "producidas")
    private Integer producidas;
    @Column(name = "activo")
    private Boolean activo;
    @JoinColumn(name = "id_casa", referencedColumnName = "id_casa")
    @ManyToOne
    private Casa idCasa;
    @JoinColumn(name = "id_estado", referencedColumnName = "id_estado", nullable = false)
    @ManyToOne(optional = false)
    private Estado idEstado;
    @JoinColumn(name = "id_sitio", referencedColumnName = "id_sitio", nullable = false)
    @ManyToOne(optional = false)
    private Sitio idSitio;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCora")
    private List<Coleccion> coleccionList;

    public Cora() {
    }

    public Cora(Integer idCora) {
        this.idCora = idCora;
    }

    public Integer getIdCora() {
        return idCora;
    }

    public void setIdCora(Integer idCora) {
        this.idCora = idCora;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDisenador() {
        return disenador;
    }

    public void setDisenador(String disenador) {
        this.disenador = disenador;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechaIncorporacion() {
        return fechaIncorporacion;
    }

    public void setFechaIncorporacion(Date fechaIncorporacion) {
        this.fechaIncorporacion = fechaIncorporacion;
    }

    public Date getFechaEmision() {
        return fechaEmision;
    }

    public void setFechaEmision(Date fechaEmision) {
        this.fechaEmision = fechaEmision;
    }

    public Integer getProducidas() {
        return producidas;
    }

    public void setProducidas(Integer producidas) {
        this.producidas = producidas;
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

    public Estado getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(Estado idEstado) {
        this.idEstado = idEstado;
    }

    public Sitio getIdSitio() {
        return idSitio;
    }

    public void setIdSitio(Sitio idSitio) {
        this.idSitio = idSitio;
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
        hash += (idCora != null ? idCora.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cora)) {
            return false;
        }
        Cora other = (Cora) object;
        if ((this.idCora == null && other.idCora != null) || (this.idCora != null && !this.idCora.equals(other.idCora))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sv.coras.entity.Cora[ idCora=" + idCora + " ]";
    }
    
}
