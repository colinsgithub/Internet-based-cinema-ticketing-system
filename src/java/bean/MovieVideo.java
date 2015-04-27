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
@Table(name = "MovieVideo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MovieVideo.findAll", query = "SELECT m FROM MovieVideo m"),
    @NamedQuery(name = "MovieVideo.findByMovieVideoID", query = "SELECT m FROM MovieVideo m WHERE m.movieVideoID = :movieVideoID"),
    @NamedQuery(name = "MovieVideo.findByVideo", query = "SELECT m FROM MovieVideo m WHERE m.video = :video")})
public class MovieVideo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "movieVideoID")
    private Integer movieVideoID;
    @Basic(optional = false)
    @Column(name = "video")
    private String video;
    @JoinColumn(name = "movieID", referencedColumnName = "movieID")
    @ManyToOne(optional = false)
    private Movie movieID;

    public MovieVideo() {
    }

    public MovieVideo(Integer movieVideoID) {
        this.movieVideoID = movieVideoID;
    }

    public MovieVideo(Integer movieVideoID, String video) {
        this.movieVideoID = movieVideoID;
        this.video = video;
    }

    public Integer getMovieVideoID() {
        return movieVideoID;
    }

    public void setMovieVideoID(Integer movieVideoID) {
        this.movieVideoID = movieVideoID;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
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
        hash += (movieVideoID != null ? movieVideoID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MovieVideo)) {
            return false;
        }
        MovieVideo other = (MovieVideo) object;
        if ((this.movieVideoID == null && other.movieVideoID != null) || (this.movieVideoID != null && !this.movieVideoID.equals(other.movieVideoID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.MovieVideo[ movieVideoID=" + movieVideoID + " ]";
    }
    
}
