/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
 * @author user
 */
@Entity
@Table(name = "Movie")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Movie.findAll", query = "SELECT m FROM Movie m"),
    @NamedQuery(name = "Movie.findByMovieID", query = "SELECT m FROM Movie m WHERE m.movieID = :movieID"),
    @NamedQuery(name = "Movie.findByCategoryID", query = "SELECT m FROM Movie m WHERE m.categoryID = :categoryID"),
    @NamedQuery(name = "Movie.findByMovieName", query = "SELECT m FROM Movie m WHERE m.movieName = :movieName"),
    @NamedQuery(name = "Movie.findByPlot", query = "SELECT m FROM Movie m WHERE m.plot = :plot"),
    @NamedQuery(name = "Movie.findByReleaseDate", query = "SELECT m FROM Movie m WHERE m.releaseDate = :releaseDate"),
    @NamedQuery(name = "Movie.findByDuration", query = "SELECT m FROM Movie m WHERE m.duration = :duration"),
    @NamedQuery(name = "Movie.findByCover", query = "SELECT m FROM Movie m WHERE m.cover = :cover"),
    @NamedQuery(name = "Movie.findByCountry", query = "SELECT m FROM Movie m WHERE m.country = :country"),
    @NamedQuery(name = "Movie.findByDirector", query = "SELECT m FROM Movie m WHERE m.director = :director"),
    @NamedQuery(name = "Movie.findByNumOfVote", query = "SELECT m FROM Movie m WHERE m.numOfVote = :numOfVote"),
    @NamedQuery(name = "Movie.findByRank", query = "SELECT m FROM Movie m WHERE m.rank = :rank")})
public class Movie implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "movieID")
    private Integer movieID;
    @Basic(optional = false)
    @Column(name = "categoryID")
    private int categoryID;
    @Basic(optional = false)
    @Column(name = "movieName")
    private String movieName;
    @Basic(optional = false)
    @Column(name = "plot")
    private String plot;
    @Basic(optional = false)
    @Column(name = "releaseDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date releaseDate;
    @Column(name = "duration")
    @Temporal(TemporalType.TIMESTAMP)
    private Date duration;
    @Column(name = "cover")
    private String cover;
    @Column(name = "country")
    private String country;
    @Column(name = "director")
    private String director;
    @Basic(optional = false)
    @Column(name = "numOfVote")
    private int numOfVote;
    @Basic(optional = false)
    @Column(name = "rank")
    private int rank;
    @JoinTable(name = "Movie_Actor", joinColumns = {
        @JoinColumn(name = "movieID", referencedColumnName = "movieID")}, inverseJoinColumns = {
        @JoinColumn(name = "actorID", referencedColumnName = "actorID")})
    @ManyToMany
    private Collection<Actor> actorCollection;
    @JoinTable(name = "Movie_Category", joinColumns = {
        @JoinColumn(name = "movieID", referencedColumnName = "movieID")}, inverseJoinColumns = {
        @JoinColumn(name = "categoryID", referencedColumnName = "categoryID")})
    @ManyToMany
    private Collection<Category> categoryCollection;
    @OneToMany(mappedBy = "movieID")
    private Collection<Comment> commentCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movieID")
    private Collection<MovieSession> movieSessionCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movieID")
    private Collection<MovieImage> movieImageCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movieID")
    private Collection<MovieVideo> movieVideoCollection;

    public Movie() {
    }

    public Movie(Integer movieID) {
        this.movieID = movieID;
    }

    public Movie(Integer movieID, int categoryID, String movieName, String plot, Date releaseDate, int numOfVote, int rank) {
        this.movieID = movieID;
        this.categoryID = categoryID;
        this.movieName = movieName;
        this.plot = plot;
        this.releaseDate = releaseDate;
        this.numOfVote = numOfVote;
        this.rank = rank;
    }

    public Integer getMovieID() {
        return movieID;
    }

    public void setMovieID(Integer movieID) {
        this.movieID = movieID;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getPlot() {
        return plot;
    }

    public void setPlot(String plot) {
        this.plot = plot;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
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

    @XmlTransient
    public Collection<Actor> getActorCollection() {
        return actorCollection;
    }

    public void setActorCollection(Collection<Actor> actorCollection) {
        this.actorCollection = actorCollection;
    }

    @XmlTransient
    public Collection<Category> getCategoryCollection() {
        return categoryCollection;
    }

    public void setCategoryCollection(Collection<Category> categoryCollection) {
        this.categoryCollection = categoryCollection;
    }

    @XmlTransient
    public Collection<Comment> getCommentCollection() {
        return commentCollection;
    }

    public void setCommentCollection(Collection<Comment> commentCollection) {
        this.commentCollection = commentCollection;
    }

    @XmlTransient
    public Collection<MovieSession> getMovieSessionCollection() {
        return movieSessionCollection;
    }

    public void setMovieSessionCollection(Collection<MovieSession> movieSessionCollection) {
        this.movieSessionCollection = movieSessionCollection;
    }

    @XmlTransient
    public Collection<MovieImage> getMovieImageCollection() {
        return movieImageCollection;
    }

    public void setMovieImageCollection(Collection<MovieImage> movieImageCollection) {
        this.movieImageCollection = movieImageCollection;
    }

    @XmlTransient
    public Collection<MovieVideo> getMovieVideoCollection() {
        return movieVideoCollection;
    }

    public void setMovieVideoCollection(Collection<MovieVideo> movieVideoCollection) {
        this.movieVideoCollection = movieVideoCollection;
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
