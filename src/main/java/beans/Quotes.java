package beans;

import java.io.Serializable;
import java.util.Date;

public class Quotes implements Serializable {

    private long id;
    private String artist;
    private String name;
    private Date releaseDate;
    private double sales;
    private String genre;

    public Quotes() {
    }

    public Quotes(long id, String artist, String name, Date releaseDate, double sales, String genre) {
        this.artist = artist;
        this.id = id;
        this.name = name;
        this. sales = sales;
        this.genre = genre;
        this.releaseDate = releaseDate;
    }

    public Quotes(String artist, String name, Date releaseDate, double sales, String genre) {
        this.artist = artist;
        this.name = name;
        this. sales = sales;
        this.genre = genre;
        this.releaseDate = releaseDate;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }


    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
