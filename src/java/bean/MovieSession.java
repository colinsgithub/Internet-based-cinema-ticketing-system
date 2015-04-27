/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author poonkaho
 */
@Entity
@Table(name = "MovieSession")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MovieSession.findAll", query = "SELECT m FROM MovieSession m"),
    @NamedQuery(name = "MovieSession.findByMsID", query = "SELECT m FROM MovieSession m WHERE m.msID = :msID"),
    @NamedQuery(name = "MovieSession.findByPlaytime", query = "SELECT m FROM MovieSession m WHERE m.playtime = :playtime"),
    @NamedQuery(name = "MovieSession.findByEndtime", query = "SELECT m FROM MovieSession m WHERE m.endtime = :endtime"),
    @NamedQuery(name = "MovieSession.findByPrice", query = "SELECT m FROM MovieSession m WHERE m.price = :price")})
public class MovieSession implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "msID")
    private Integer msID;
    @Column(name = "playtime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date playtime;
    @Column(name = "endtime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endtime;
    @Column(name = "price")
    private Integer price;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "msID")
    private Collection<Ticket> ticketCollection;
    @JoinColumn(name = "movieID", referencedColumnName = "movieID")
    @ManyToOne(optional = false)
    private Movie movieID;
    @JoinColumn(name = "houseID", referencedColumnName = "houseID")
    @ManyToOne(optional = false)
    private House houseID;

    public MovieSession() {
    }

    public MovieSession(Integer msID) {
        this.msID = msID;
    }

    public Integer getMsID() {
        return msID;
    }

    public void setMsID(Integer msID) {
        this.msID = msID;
    }

    public Date getPlaytime() {
        return playtime;
    }

    public void setPlaytime(Date playtime) {
        this.playtime = playtime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @XmlTransient
    public Collection<Ticket> getTicketCollection() {
        return ticketCollection;
    }

    public void setTicketCollection(Collection<Ticket> ticketCollection) {
        this.ticketCollection = ticketCollection;
    }

    public Movie getMovieID() {
        return movieID;
    }

    public void setMovieID(Movie movieID) {
        this.movieID = movieID;
    }

    public House getHouseID() {
        return houseID;
    }

    public void setHouseID(House houseID) {
        this.houseID = houseID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (msID != null ? msID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MovieSession)) {
            return false;
        }
        MovieSession other = (MovieSession) object;
        if ((this.msID == null && other.msID != null) || (this.msID != null && !this.msID.equals(other.msID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.MovieSession[ msID=" + msID + " ]";
    }
    
}
