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
@Table(name = "Seat")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Seat.findAll", query = "SELECT s FROM Seat s"),
    @NamedQuery(name = "Seat.findBySeatID", query = "SELECT s FROM Seat s WHERE s.seatID = :seatID"),
    @NamedQuery(name = "Seat.findBySeatName", query = "SELECT s FROM Seat s WHERE s.seatName = :seatName"),
    @NamedQuery(name = "Seat.findBySurcharge", query = "SELECT s FROM Seat s WHERE s.surcharge = :surcharge")})
public class Seat implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "seatID")
    private Integer seatID;
    @Basic(optional = false)
    @Column(name = "seatName")
    private String seatName;
    @Basic(optional = false)
    @Column(name = "surcharge")
    private int surcharge;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "seatID")
    private Collection<Ticket> ticketCollection;
    @JoinColumn(name = "houseID", referencedColumnName = "houseID")
    @ManyToOne(optional = false)
    private House houseID;

    public Seat() {
    }

    public Seat(Integer seatID) {
        this.seatID = seatID;
    }

    public Seat(Integer seatID, String seatName, int surcharge) {
        this.seatID = seatID;
        this.seatName = seatName;
        this.surcharge = surcharge;
    }

    public Integer getSeatID() {
        return seatID;
    }

    public void setSeatID(Integer seatID) {
        this.seatID = seatID;
    }

    public String getSeatName() {
        return seatName;
    }

    public void setSeatName(String seatName) {
        this.seatName = seatName;
    }

    public int getSurcharge() {
        return surcharge;
    }

    public void setSurcharge(int surcharge) {
        this.surcharge = surcharge;
    }

    @XmlTransient
    public Collection<Ticket> getTicketCollection() {
        return ticketCollection;
    }

    public void setTicketCollection(Collection<Ticket> ticketCollection) {
        this.ticketCollection = ticketCollection;
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
        hash += (seatID != null ? seatID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Seat)) {
            return false;
        }
        Seat other = (Seat) object;
        if ((this.seatID == null && other.seatID != null) || (this.seatID != null && !this.seatID.equals(other.seatID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.Seat[ seatID=" + seatID + " ]";
    }
    
}
