/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.service;

import Bibtex.domain.Reference;
import java.util.List;

/**
 *
 * @author noemj
 */

public interface ReferenceService {
    public void remove(Reference reference);
    public List<Reference> listAll();
    public Reference add(Reference reference);
}
