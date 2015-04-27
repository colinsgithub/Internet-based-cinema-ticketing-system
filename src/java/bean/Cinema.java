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
@Table(name = "Cinema")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cinema.findAll", query = "SELECT c FROM Cinema c"),
    @NamedQuery(name = "Cinema.findByCinemaID", query = "SELECT c FROM Cinema c WHERE c.cinemaID = :cinemaID"),
    @NamedQuery(name = "Cinema.findByCinemaName", query = "SELECT c FROM Cinema c WHERE c.cinemaName = :cinemaName"),
    @NamedQuery(name = "Cinema.findByCinemaAddress", query = "SELECT c FROM Cinema c WHERE c.cinemaAddress = :cinemaAddress"),
    @NamedQuery(name = "Cinema.findByNumOfVote", query = "SELECT c FROM Cinema c WHERE c.numOfVote = :numOfVote"),
    @NamedQuery(name = "Cinema.findByRank", query = "SELECT c FROM Cinema c WHERE c.rank = :rank"),
    @NamedQuery(name = "Cinema.findByImage1", query = "SELECT c FROM Cinema c WHERE c.image1 = :image1")})
public class Cinema implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cinemaID")
    private Integer cinemaID;
    @Basic(optional = false)
    @Column(name = "cinemaName")
    private String cinemaName;
    @Basic(optional = false)
    @Column(name = "cinemaAddress")
    private String cinemaAddress;
    @Basic(optional = false)
    @Column(name = "numOfVote")
    private int numOfVote;
    @Basic(optional = false)
    @Column(name = "rank")
    private int rank;
    @Column(name = "image1")
    private String image1;
    @OneToMany(mappedBy = "cinemaID")
    private Collection<Comment> commentCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cinemaID")
    private Collection<House> houseCollection;

    public Cinema() {
    }

    public Cinema(Integer cinemaID) {
        this.cinemaID = cinemaID;
    }

    public Cinema(Integer cinemaID, String cinemaName, String cinemaAddress, int numOfVote, int rank) {
        this.cinemaID = cinemaID;
        this.cinemaName = cinemaName;
        this.cinemaAddress = cinemaAddress;
        this.numOfVote = numOfVote;
        this.rank = rank;
    }

    public Integer getCinemaID() {
        return cinemaID;
    }

    public void setCinemaID(Integer cinemaID) {
        this.cinemaID = cinemaID;
    }

    public String getCinemaName() {
        return cinemaName;
    }

    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }

    public String getCinemaAddress() {
        return cinemaAddress;
    }

    public void setCinemaAddress(String cinemaAddress) {
        this.cinemaAddress = cinemaAddress;
    }

    public int getNumOfVote() {
        return numOfVote;
    }

    public void setNumOfVote(int numOfVote) {
        this.numOfVote = numOfVote;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    @XmlTransient
    public Collection<House> getHouseCollection() {
        return houseCollection;
    }

    public void setHouseCollection(Collection<House> houseCollection) {
        this.houseCollection = houseCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cinemaID != null ? cinemaID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cinema)) {
            return false;
        }
        Cinema other = (Cinema) object;
        if ((this.cinemaID == null && other.cinemaID != null) || (this.cinemaID != null && !this.cinemaID.equals(other.cinemaID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.Cinema[ cinemaID=" + cinemaID + " ]";
    }
    
}
