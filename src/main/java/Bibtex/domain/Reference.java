/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.domain;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author noemj
 */
@Entity
public class Reference implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name = "ID")
    private Long id;
    
    @Column(name = "Address")
    private String address;
    @Column(name = "Annote")
    private String annote;
    @Column(name = "Author")
    private String author;
    @Column(name = "Booktitle")
    private String booktitle;
    @Column(name = "Chapter")
    private String chapter;
    @Column(name = "Crossref")
    private String crossref;
    @Column(name = "Edition")
    private String edition;
    @Column(name = "Editor")
    private String editor;
    @Column(name = "Howpublished")
    private String howpublished;
    @Column(name = "Institution")
    private String institution;
    @Column(name = "Journal")
    private String journal;
    @Column(name = "Keyvalue")
    private String key;
    @Column(name = "Monthvalue")
    private String month;
    @Column(name = "Note")
    private String note;
    @Column(name = "Number")
    private String number;
    @Column(name = "Organization")
    private String organization;
    @Column(name = "Pages")
    private String pages;
    @Column(name = "Publisher")
    private String publisher;
    @Column(name = "School")
    private String school;
    @Column(name = "Series")
    private String series;
    @Column(name = "Title")
    private String title;
    @Column(name = "Type")
    private String type;
    @Column(name = "Volume")
    private String volume;
    @Column(name = "Yearvalue")
    private String year;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAnnote() {
        return annote;
    }

    public void setAnnote(String annote) {
        this.annote = annote;
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

    public String getChapter() {
        return chapter;
    }

    public void setChapter(String chapter) {
        this.chapter = chapter;
    }

    public String getCrossref() {
        return crossref;
    }

    public void setCrossref(String crossref) {
        this.crossref = crossref;
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

    public String getHowpublished() {
        return howpublished;
    }

    public void setHowpublished(String howpublished) {
        this.howpublished = howpublished;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public String getJournal() {
        return journal;
    }

    public void setJournal(String journal) {
        this.journal = journal;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
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

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
