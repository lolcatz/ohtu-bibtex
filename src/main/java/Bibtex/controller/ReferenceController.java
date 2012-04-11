/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import Bibtex.service.ReferenceService;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 *
 * @author noemj
 */
@Controller
public class ReferenceController {
    
    @Autowired
    private ReferenceService genreService;
    
    @RequestMapping(value= "*")
    public String listener(){
        return "add";
    }
    
}
