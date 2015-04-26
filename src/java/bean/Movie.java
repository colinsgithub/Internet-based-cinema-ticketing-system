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
@Table(name = "Movie")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Movie.findAll", query = "SELECT m FROM Movie m"),
    @NamedQuery(name = "Movie.findByMovieID", query = "SELECT m FROM Movie m WHERE m.movieID = :movieID"),
    @NamedQuery(name = "Movie.findByMovieName", query = "SELECT m FROM Movie m WHERE m.movieName = :movieName"),
    @NamedQuery(name = "Movie.findByMovieDesc", query = "SELECT m FROM Movie m WHERE m.movieDesc = :movieDesc"),
    @NamedQuery(name = "Movie.findByPostedYear", query = "SELECT m FROM Movie m WHERE m.postedYear = :postedYear"),
    @NamedQuery(name = "Movie.findByDuration", query = "SELECT m FROM Movie m WHERE m.duration = :duration"),
    @NamedQuery(name = "Movie.findByCover", query = "SELECT m FROM Movie m WHERE m.cover = :cover")})
public class Movie implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "movieID")
    private Integer movieID;
    @Basic(optional = false)
    @Column(name = "movieName")
    private String movieName;
    @Basic(optional = false)
    @Column(name = "movieDesc")
    private String movieDesc;
    @Basic(optional = false)
    @Column(name = "postedYear")
    @Temporal(TemporalType.TIMESTAMP)
    private Date postedYear;
    @Column(name = "duration")
    @Temporal(TemporalType.TIMESTAMP)
    private Date duration;
    @Column(name = "cover")
    private String cover;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movieID")
    private Collection<MovieSession> movieSessionCollection;
    @JoinColumn(name = "categoryID", referencedColumnName = "categoryID")
    @ManyToOne(optional = false)
    private Category categoryID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movieID")
    private Collection<MovieImage> movieImageCollection;

    public Movie() {
    }

    public Movie(Integer movieID) {
        this.movieID = movieID;
    }

    public Movie(Integer movieID, String movieName, String movieDesc, Date postedYear) {
        this.movieID = movieID;
        this.movieName = movieName;
        this.movieDesc = movieDesc;
        this.postedYear = postedYear;
    }

    public Integer getMovieID() {
        return movieID;
    }

    public void setMovieID(Integer movieID) {
        this.movieID = movieID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMovieDesc() {
        return movieDesc;
    }

    public void setMovieDesc(String movieDesc) {
        this.movieDesc = movieDesc;
    }

    public Date getPostedYear() {
        return postedYear;
    }

    public void setPostedYear(Date postedYear) {
        this.postedYear = postedYear;
    }

    public Date getDuration() {
        return duration;
    }

    public void setDuration(Date duration) {
        this.duration = duration;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    @XmlTransient
    public Collection<MovieSession> getMovieSessionCollection() {
        return movieSessionCollection;
    }

    public void setMovieSessionCollection(Collection<MovieSession> movieSessionCollection) {
        this.movieSessionCollection = movieSessionCollection;
    }

    public Category getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(Category categoryID) {
        this.categoryID = categoryID;
    }

    @XmlTransient
    public Collection<MovieImage> getMovieImageCollection() {
        return movieImageCollection;
    }

    public void setMovieImageCollection(Collection<MovieImage> movieImageCollection) {
        this.movieImageCollection = movieImageCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (movieID != null ? movieID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Movie)) {
            return false;
        }
        Movie other = (Movie) object;
        if ((this.movieID == null && other.movieID != null) || (this.movieID != null && !this.movieID.equals(other.movieID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.Movie[ movieID=" + movieID + " ]";
    }
    
}
