/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.controller;

import Bibtex.domain.Reference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import Bibtex.service.ReferenceService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 *
 * @author noemj
 */
@Controller
public class ReferenceController {
    
    @Autowired
    private ReferenceService referenceService;
    
    @RequestMapping(value= "*")
    public String listener(){
        return "/add";
    }
    
    @RequestMapping(value="lisaaReference")
    public String referenceListener(@ModelAttribute Reference reference){
        reference = referenceService.add(reference);
        return "redirect:/listaa";
    }
    
    @RequestMapping(value="listaa")
    public String listaaListener(Model model){
        model.addAttribute("referencet", referenceService.listAll());
        return "list";
    }
    
    @RequestMapping(value="/add")
    public String addListener(){
        return "add";
    }
}
