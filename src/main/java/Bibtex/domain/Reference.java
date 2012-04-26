package Bibtex.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;
import java.util.Arrays;

/**
 *
 * @author psaikko
 */
@Entity
public class Reference implements Serializable {

    public static List<String> implementedTypes = Arrays.asList("book", "inproceedings", "article");
    
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name = "ID")
    private Long id;
    @Column(name = "Type")
    private String type;
    @Column(name = "Key")
    private String key;
    @Column(name = "Author")
    private String author;
    @Column(name = "Title")
    private String title;
    @Column(name = "Journal")
    private String journal;
    @Column(name = "Year")
    private String year;
    @Column(name = "Volume")
    private String volume;
    @Column(name = "Number")
    private String number;
    @Column(name = "Pages")
    private String pages;
    @Column(name = "Month")
    private String month;
    @Column(name = "Note")
    private String note;
    @Column(name = "Editor")
    private String editor;
    @Column(name = "Address")
    private String address;
    @Column(name = "Edition")
    private String edition;
    @Column(name = "Booktitle")
    private String booktitle;
    @Column(name = "Organization")
    private String organization;
    @Column(name = "Series")
    private String series;

    public String getKey() {
        return key;
    }

    public String getType() {
        return type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBooktitle() {
        return booktitle;
    }

    public void setBooktitle(String booktitle) {
        this.booktitle = booktitle;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public String getEditor() {
        return editor;
    }

    public void setEditor(String editor) {
        this.editor = editor;
    }

    public String getJournal() {
        return journal;
    }

    public void setJournal(String journal) {
        this.journal = journal;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public String getPages() {
        return pages;
    }

    public void setPages(String pages) {
        this.pages = pages;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
    
    
}