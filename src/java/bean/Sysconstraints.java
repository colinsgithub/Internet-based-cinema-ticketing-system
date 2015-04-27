/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
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
@Table(name = "sysconstraints")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sysconstraints.findAll", query = "SELECT s FROM Sysconstraints s"),
    @NamedQuery(name = "Sysconstraints.findByConstid", query = "SELECT s FROM Sysconstraints s WHERE s.constid = :constid"),
    @NamedQuery(name = "Sysconstraints.findById", query = "SELECT s FROM Sysconstraints s WHERE s.id = :id"),
    @NamedQuery(name = "Sysconstraints.findByColid", query = "SELECT s FROM Sysconstraints s WHERE s.colid = :colid"),
    @NamedQuery(name = "Sysconstraints.findBySpare1", query = "SELECT s FROM Sysconstraints s WHERE s.spare1 = :spare1"),
    @NamedQuery(name = "Sysconstraints.findByStatus", query = "SELECT s FROM Sysconstraints s WHERE s.status = :status"),
    @NamedQuery(name = "Sysconstraints.findByActions", query = "SELECT s FROM Sysconstraints s WHERE s.actions = :actions"),
    @NamedQuery(name = "Sysconstraints.findByError", query = "SELECT s FROM Sysconstraints s WHERE s.error = :error")})
public class Sysconstraints implements Serializable {
    private static final long serialVersionUID = 1L;
    @Column(name = "constid")
    private Integer constid;
    @Column(name = "id")
    private Integer id;
    @Column(name = "colid")
    private Short colid;
    @Column(name = "spare1")
    private Short spare1;
    @Column(name = "status")
    private Integer status;
    @Column(name = "actions")
    private Integer actions;
    @Column(name = "error")
    private Integer error;

    public Sysconstraints() {
    }

    public Integer getConstid() {
        return constid;
    }

    public void setConstid(Integer constid) {
        this.constid = constid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Short getColid() {
        return colid;
    }

    public void setColid(Short colid) {
        this.colid = colid;
    }

    public Short getSpare1() {
        return spare1;
    }

    public void setSpare1(Short spare1) {
        this.spare1 = spare1;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getActions() {
        return actions;
    }

    public void setActions(Integer actions) {
        this.actions = actions;
    }

    public Integer getError() {
        return error;
    }

    public void setError(Integer error) {
        this.error = error;
    }
    
}
