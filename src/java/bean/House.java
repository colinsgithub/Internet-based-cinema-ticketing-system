/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.util.Collection;
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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author user
 */
@Entity
@Table(name = "House")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "House.findAll", query = "SELECT h FROM House h"),
    @NamedQuery(name = "House.findByHouseID", query = "SELECT h FROM House h WHERE h.houseID = :houseID"),
    @NamedQuery(name = "House.findBySeatNums", query = "SELECT h FROM House h WHERE h.seatNums = :seatNums")})
public class House implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "houseID")
    private Integer houseID;
    @Column(name = "seatNums")
    private Integer seatNums;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "houseID")
    private Collection<Seat> seatCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "houseID")
    private Collection<MovieSession> movieSessionCollection;
    @JoinColumn(name = "cinemaID", referencedColumnName = "cinemaID")
    @ManyToOne(optional = false)
    private Cinema cinemaID;

    public House() {
    }

    public House(Integer houseID) {
        this.houseID = houseID;
    }

    public Integer getHouseID() {
        return houseID;
    }

    public void setHouseID(Integer houseID) {
        this.houseID = houseID;
    }

    public Integer getSeatNums() {
        return seatNums;
    }

    public void setSeatNums(Integer seatNums) {
        this.seatNums = seatNums;
    }

    @XmlTransient
    public Collection<Seat> getSeatCollection() {
        return seatCollection;
    }

    public void setSeatCollection(Collection<Seat> seatCollection) {
        this.seatCollection = seatCollection;
    }

    @XmlTransient
    public Collection<MovieSession> getMovieSessionCollection() {
        return movieSessionCollection;
    }

    public void setMovieSessionCollection(Collection<MovieSession> movieSessionCollection) {
        this.movieSessionCollection = movieSessionCollection;
    }

    public Cinema getCinemaID() {
        return cinemaID;
    }

    public void setCinemaID(Cinema cinemaID) {
        this.cinemaID = cinemaID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (houseID != null ? houseID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof House)) {
            return false;
        }
        House other = (House) object;
        if ((this.houseID == null && other.houseID != null) || (this.houseID != null && !this.houseID.equals(other.houseID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.House[ houseID=" + houseID + " ]";
    }
    
}
