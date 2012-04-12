/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.domain;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 *
 * @author psaikko
 */
public class UserInputAdd implements Serializable {
    private String type;
    private String key;
    private String fields;
      
    public String getKey() { return key; }
    public String getType() { return type; }
    public String getFields() { return fields; }
}
