import java.io.Serializable;

public class Album implements Serializable {
    private long id;
    private String artist;
    private String record_name;
    private int release_date;
    private float sales;
    private String genre;

    public Album(){

    }

    public Album(long id, String artist, String record_name, int release_date, float sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.record_name = record_name;
        this.release_date = release_date;
        this.sales = sales;
        this.genre = genre;
    }

    public Album(String artist, String record_name, int release_date, float sales, String genre) {
        this.artist = artist;
        this.record_name = record_name;
        this.release_date = release_date;
        this.sales = sales;
        this.genre = genre;
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

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getRecord_name() {
        return record_name;
    }

    public void setRecord_name(String record_name) {
        this.record_name = record_name;
    }

    public int getRelease_date() {
        return release_date;
    }

    public void setRelease_date(int release_date) {
        this.release_date = release_date;
    }

    public float getSales() {
        return sales;
    }

    public void setSales(float sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
