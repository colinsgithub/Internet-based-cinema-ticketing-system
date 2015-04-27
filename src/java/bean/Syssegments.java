/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author poonkaho
 */
@Entity
@Table(name = "syssegments")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Syssegments.findAll", query = "SELECT s FROM Syssegments s"),
    @NamedQuery(name = "Syssegments.findBySegment", query = "SELECT s FROM Syssegments s WHERE s.segment = :segment"),
    @NamedQuery(name = "Syssegments.findByName", query = "SELECT s FROM Syssegments s WHERE s.name = :name"),
    @NamedQuery(name = "Syssegments.findByStatus", query = "SELECT s FROM Syssegments s WHERE s.status = :status")})
public class Syssegments implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "segment")
    private int segment;
    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "status")
    private int status;

    public Syssegments() {
    }

    public int getSegment() {
        return segment;
    }

    public void setSegment(int segment) {
        this.segment = segment;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
