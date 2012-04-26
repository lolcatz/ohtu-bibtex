/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.service;

import Bibtex.domain.Reference;
import Bibtex.repository.ReferenceRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author noemj
 */
@Service
public class ReferenceServiceImpl implements ReferenceService {

    @Autowired
    ReferenceRepository referenceRepository;
    
    @Override
    public void remove(Reference reference) {
        referenceRepository.delete(reference);
    }

    @Override
    public List<Reference> listAll() {
        return(referenceRepository.findAll());
    }

    @Override
    public Reference add(Reference reference) {
        return(referenceRepository.save(reference));
    }
    
    @Override 
    public Reference findByID(Long id) {
        return referenceRepository.findOne(id);
    }
    
    @Override
    public List<Reference> findByTag(String tag) {
        return referenceRepository.findByTag(tag);
    }
}
