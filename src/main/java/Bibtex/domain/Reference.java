package Bibtex.domain;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashMap;

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
    public HashMap<String,String> getFields() { return fields; }
    
    public void setKey(String key) { this.key = key; }
    public void setType(String type) { this.type = type; }
    public void setFields(HashMap<String,String> fields) { this.fields = fields; }
    
    public static HashMap<String,String> extractFields(String fields) {
        HashMap<String,String> parsed = new HashMap<String,String>();
        if (fields != null) {
            String[] lines = fields.split(",");
            for (String s : lines) {
                String key = s.split("=")[0];
                String value = s.substring(key.length() -1);
                parsed.put(key.trim(), value.trim());
            }
        }
        return parsed;
    }
}