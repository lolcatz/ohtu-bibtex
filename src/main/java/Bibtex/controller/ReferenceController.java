/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.controller;

import Bibtex.domain.Reference;
import Bibtex.service.ReferenceService;
import java.io.IOException;
import java.util.List;
import java.util.Map.Entry;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;
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
        return "redirect:/main";
    }
    
    @RequestMapping(value="main")
    public String mainListener() {
        return "main";
    }
    
    @RequestMapping(value="lisaaReference")
    public String referenceListener(
            @RequestParam(value = "type", required = true) final String type,
            @RequestParam(value = "key", required = true) final String key,
            @RequestParam(value = "fields", required = true) final String fields,
            Model model)
                                            {
        System.out.println(type+" "+key+" "+fields);
        
        Reference r = new Reference();
        r.setKey(key);
        try {
            r.setType(type);
            r.setFields(Reference.extractFields(fields));
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
            model.addAttribute("type_", type);
            model.addAttribute("key_", key);
            model.addAttribute("fields_", fields);
            model.addAttribute("types", Reference.fieldsForTypes.keySet());
            return "add";
        }
        
        referenceService.add(r);
        return "redirect:/list";
    }
    
    @RequestMapping(value="edit/{id}")
    public String editListener(@PathVariable("id") Long id, Model model)
    {
        Reference r = referenceService.findByID(id);

        String fields = "";
        for (String field : r.getFields().keySet())
            fields += field + " = " + r.getFields().get(field) +"\n";

        model.addAttribute("type_", r.getType());
        model.addAttribute("key_", r.getKey());
        model.addAttribute("fields_", fields);
        model.addAttribute("error", "Editing, reference will disappear if not resubmitted");
        model.addAttribute("types", Reference.fieldsForTypes.keySet());
        referenceService.remove(r);
        
        return "add";
    }
    
    @RequestMapping(value="listaa")
    public String listaaListener(Model model){
        List<Reference> references = referenceService.listAll();
        model.addAttribute("referencet", references);
        return "list";
    }
    
    @RequestMapping(value="/add")
    public String addListener(Model model){
        model.addAttribute("types", Reference.fieldsForTypes.keySet());
        return "add";
    }
    
    @RequestMapping(value="/bibtex")
    public void getFile(HttpServletResponse response) {
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Disposition","attachment;filename=references.bib"); 
        try 
	{
            ServletOutputStream out = response.getOutputStream();
            writeBibtexToStream(out);
            out.flush();
            out.close();
        } catch (Throwable t) {}
    }
     
    private void writeBibtexToStream(ServletOutputStream out) throws IOException{
	for (Reference ref : referenceService.listAll()) {
            out.println("@"+ref.getType()+"{"+ref.getKey()+",");
            for (String k : ref.getFields().keySet())
                out.println(k+" = {"+ref.getFields().get(k)+"},");
            out.println("}");
        }        
    }
}
