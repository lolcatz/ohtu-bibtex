/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import Bibtex.domain.Reference;
import java.util.List;
import org.springframework.stereotype.Repository;
/**
 *
 * @author noemj
 */
@Repository
public interface ReferenceRepository extends JpaRepository<Reference, Long> {
    List<Reference> findByTag(String tag);
    List<Reference> findByType(String type);
}
