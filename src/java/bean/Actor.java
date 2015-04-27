/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author user
 */
@Entity
@Table(name = "Actor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Actor.findAll", query = "SELECT a FROM Actor a"),
    @NamedQuery(name = "Actor.findByActorID", query = "SELECT a FROM Actor a WHERE a.actorID = :actorID"),
    @NamedQuery(name = "Actor.findByActorName", query = "SELECT a FROM Actor a WHERE a.actorName = :actorName")})
public class Actor implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "actorID")
    private Integer actorID;
    @Basic(optional = false)
    @Column(name = "actorName")
    private String actorName;
    @ManyToMany(mappedBy = "actorCollection")
    private Collection<Movie> movieCollection;

    public Actor() {
    }

    public Actor(Integer actorID) {
        this.actorID = actorID;
    }

    public Actor(Integer actorID, String actorName) {
        this.actorID = actorID;
        this.actorName = actorName;
    }

    public Integer getActorID() {
        return actorID;
    }

    public void setActorID(Integer actorID) {
        this.actorID = actorID;
    }

    public String getActorName() {
        return actorName;
    }

    public void setActorName(String actorName) {
        this.actorName = actorName;
    }

    @XmlTransient
    public Collection<Movie> getMovieCollection() {
        return movieCollection;
    }

    public void setMovieCollection(Collection<Movie> movieCollection) {
        this.movieCollection = movieCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (actorID != null ? actorID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Actor)) {
            return false;
        }
        Actor other = (Actor) object;
        if ((this.actorID == null && other.actorID != null) || (this.actorID != null && !this.actorID.equals(other.actorID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.Actor[ actorID=" + actorID + " ]";
    }
    
}
