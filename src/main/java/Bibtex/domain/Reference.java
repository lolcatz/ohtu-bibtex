package Bibtex.domain;

import java.io.Serializable;
import java.util.Arrays;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author psaikko
 */
@Entity
public class Reference implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    @Column(name = "ID")
    private Long id;
    @Column(name = "Type")
    private String type;
    @Column(name = "Key")
    private String key;
    @Column(name = "Fields")
    private HashMap<String, String> fields;
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

    public HashMap<String, String> getFields() {
        return fields;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public void setType(String type) throws Exception {
        if (!isValidType(type)) {
            throw new Exception("Error: bad type name, " + type);
        }
        this.type = type;
    }

    public void setFields(HashMap<String, String> fields) throws Exception {
        for (String field : fields.keySet()) {
            if (!isValidField(field)) {
                throw new Exception("Error: bad field name, " + field);
            }
        }
        this.fields = fields;
    }
    public static final HashMap<String, List<String>> fieldsForTypes = new HashMap<String, List<String>>() {

        {
            put("article", Arrays.asList("author", "title", "journal", "year", "volume",
                    "number", "pages", "month", "note", "key"));
            put("book", Arrays.asList("author", "editor", "title", "publisher", "year",
                    "volume", "number", "series", "address", "edition", "month", "note", "key"));
            put("inproceedings", Arrays.asList("author", "title", "booktitle", "year",
                    "editor", "volume", "number", "series", "pages", "address", "month",
                    "organization", "publisher", "note", "key"));
        }
    };
    public static final List<String> validTypes = Arrays.asList("article", "book", "booklet", "conference", "inbook",
            "incollection", "inproceedings", "manual", "mastersthesis", "misc", "phdthesis",
            "proceedings", "techreport", "unpublished");
    public static final List<String> validFields = Arrays.asList(new String[]{"address", "annote", "author", "booktitle", "chapter", "crossref",
                "edition", "editor", "howpublished", "institution", "journal", "key", "month", "note",
                "number", "organization", "pages", "publisher", "school", "series", "title", "type",
                "volume", "year", "affiliation", "abstract", "contents", "copyright", "ISBN", "ISSN", "keywords",
                "language", "location", "LCCN", "mrnumber", "URL"});

    //public static final HashMap<String,String> 
    public static boolean isValidType(String s) {
        String s_ = s.trim().toLowerCase();
        for (String type : validTypes) {
            if (type.toLowerCase().equals(s_)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidField(String s) {
        String s_ = s.trim().toLowerCase();
        for (String field : validFields) {
            if (field.toLowerCase().equals(s_)) {
                return true;
            }
        }
        return false;

    }

    public static HashMap<String, String> extractFields(String fields) throws Exception {
        HashMap<String, String> parsed = new HashMap<String, String>();
        if (fields != null) {
            String[] lines = fields.split("\n");
            for (String s : lines) {
                if (!s.trim().equals("")) {
                    String key = s.split("=")[0].trim();
                    String value = s.split("=")[1].trim();
                    parsed.put(key, value);
                }
            }
        }
        return parsed;
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