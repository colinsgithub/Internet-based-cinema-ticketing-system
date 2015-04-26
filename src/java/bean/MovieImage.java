/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author user
 */
@Entity
@Table(name = "MovieImage")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MovieImage.findAll", query = "SELECT m FROM MovieImage m"),
    @NamedQuery(name = "MovieImage.findByMovieImageID", query = "SELECT m FROM MovieImage m WHERE m.movieImageID = :movieImageID"),
    @NamedQuery(name = "MovieImage.findByImage", query = "SELECT m FROM MovieImage m WHERE m.image = :image")})
public class MovieImage implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "movieImageID")
    private Integer movieImageID;
    @Column(name = "image")
    private String image;
    @JoinColumn(name = "movieID", referencedColumnName = "movieID")
    @ManyToOne(optional = false)
    private Movie movieID;

    public MovieImage() {
    }

    public MovieImage(Integer movieImageID) {
        this.movieImageID = movieImageID;
    }

    public Integer getMovieImageID() {
        return movieImageID;
    }

    public void setMovieImageID(Integer movieImageID) {
        this.movieImageID = movieImageID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Movie getMovieID() {
        return movieID;
    }

    public void setMovieID(Movie movieID) {
        this.movieID = movieID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (movieImageID != null ? movieImageID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MovieImage)) {
            return false;
        }
        MovieImage other = (MovieImage) object;
        if ((this.movieImageID == null && other.movieImageID != null) || (this.movieImageID != null && !this.movieImageID.equals(other.movieImageID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.MovieImage[ movieImageID=" + movieImageID + " ]";
    }
    
}
