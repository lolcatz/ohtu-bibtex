/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.controller;

import Bibtex.domain.Reference;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import Bibtex.domain.UserInputAdd;
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
        return "/main";
    }
    
    @RequestMapping(value="lisaaReference")
    public String referenceListener(@ModelAttribute UserInputAdd userInput){
        System.err.println(userInput.getKey()+" "+userInput.getType());
        
        Reference r = new Reference();
        r.setKey(userInput.getKey());
        r.setType(userInput.getType());
        r.setFields(Reference.extractFields(userInput.getFields()));
        referenceService.add(r);
        return "redirect:/listaa";
    }
    
    @RequestMapping(value="listaa")
    public String listaaListener(Model model){
        List<Reference> references = referenceService.listAll();
        
        System.err.println("references: "+references.size());
        for (Reference r : references) {
            System.err.println(r.getType());
            System.err.println(r.getKey());
            for (Entry<String,String> e: r.getFields().entrySet()) {
                System.err.println(e.getKey()+" = "+e.getValue());
            }
        }
        
        model.addAttribute("referencet", references);
        return "list";
    }
    
    @RequestMapping(value="/add")
    public String addListener(){
        return "add";
    }
}
