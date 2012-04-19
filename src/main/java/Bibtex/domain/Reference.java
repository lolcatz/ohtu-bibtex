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
    private HashMap<String,String> fields;
      
    public String getKey() { return key; }
    public String getType() { return type; }
    public Long getId() { return id; }
    public HashMap<String,String> getFields() { return fields; }

    public void setId(Long id) {
        this.id = id;
    }
    
    public void setKey(String key) {  
        this.key = key; 
    }
    public void setType(String type) throws Exception {
        if (!isValidType(type))
            throw new Exception("Error: bad type name, "+type);
        this.type = type;
    }
    public void setFields(HashMap<String,String> fields) throws Exception {
        for (String field : fields.keySet())
            if (!isValidField(field))
                throw new Exception("Error: bad field name, "+field);
        this.fields = fields; 
    }
    
    
    public static final HashMap<String,List<String>> fieldsForTypes = new HashMap<String,List<String>>() {{
        put("article", Arrays.asList("author", "title", "journal", "year", "volume",
                "number", "pages", "month", "note", "key"));
        put("book", Arrays.asList("author", "editor", "title", "publisher", "year",
                "volume", "number", "series", "address", "edition", "month", "note", "key"));
        put("inproceedings", Arrays.asList("author", "title", "booktitle", "year",
                "editor", "volume", "number", "series", "pages", "address", "month",
                "organization", "publisher", "note", "key"));
    }};
    
    public static final List<String> validTypes = Arrays.asList("article","book","booklet","conference","inbook",
    "incollection","inproceedings","manual","mastersthesis","misc","phdthesis",
    "proceedings","techreport","unpublished");
    
    public static final List<String> validFields = Arrays.asList(new String[]{"address","annote","author","booktitle","chapter","crossref",
    "edition", "editor", "howpublished", "institution", "journal", "key", "month","note",
    "number", "organization", "pages", "publisher", "school", "series", "title", "type",
    "volume", "year", "affiliation", "abstract", "contents", "copyright", "ISBN", "ISSN", "keywords",
    "language", "location", "LCCN", "mrnumber", "URL"});
    
    //public static final HashMap<String,String> 
    
    
    public static boolean isValidType(String s) {
        String s_ = s.trim().toLowerCase();
        for (String type : validTypes) {
            if (type.toLowerCase().equals(s_))
                return true;
        }
        return false;
    }
    
    public static boolean isValidField(String s) {
        String s_ = s.trim().toLowerCase();
        for (String field : validFields) {
            if (field.toLowerCase().equals(s_))
                return true;
        }
        return false;
        
    }
    
    public static HashMap<String,String> extractFields(String fields) throws Exception{
        HashMap<String,String> parsed = new HashMap<String,String>();
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
}