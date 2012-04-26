/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.controller;

import Bibtex.domain.Reference;
import Bibtex.repository.ReferenceRepository;
import Bibtex.service.ReferenceService;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @RequestMapping(value = "/")
    public String listener() {
        return "redirect:/main";
    }

    @RequestMapping(value = "main")
    public String mainListener() {
        return "main";
    }
    /*
     * @RequestMapping(value = "lisaaReference") public String
     * referenceListener( @RequestParam(value = "type", required = true) final
     * String type, @RequestParam(value = "key", required = true) final String
     * key, @RequestParam(value = "fields", required = true) final String
     * fields, Model model) { System.out.println(type + " " + key + " " +
     * fields);
     *
     * Reference r = new Reference(); r.setKey(key); try { r.setType(type);
     * r.setFields(Reference.extractFields(fields)); } catch (Exception e) {
     * model.addAttribute("error", e.getMessage()); model.addAttribute("type_",
     * type); model.addAttribute("key_", key); model.addAttribute("fields_",
     * fields); model.addAttribute("types", Reference.fieldsForTypes.keySet());
     * return "add"; }
     *
     * referenceService.add(r); return "redirect:/listaa"; }
     */

    @RequestMapping(value = "lisaaReference")
    public String referenceListener(@ModelAttribute Reference reference) {
        referenceService.add(reference);
        return "redirect:/listaa";
    }

    @RequestMapping(value = "list")
    public String listListener() {
        return "list";
    }

    @RequestMapping(value = "book")
    public String bookListener() {
        return "book";
    }

    @RequestMapping(value = "inproceedings")
    public String inproceedingsListener() {
        return "inproceedings";
    }

    @RequestMapping(value = "article")
    public String articleListener() {
        return "article";
    }

    @RequestMapping(value = "delete/{id}")
    public String deleteListener(@PathVariable Long id) {
        Reference deleteMe = referenceService.findByID(id);
        if (deleteMe != null) {
            referenceService.remove(deleteMe);
        }
        return "redirect:/listaa";
    }

    @RequestMapping(value = "edit/{id}")
    public String editListener(@PathVariable Long id, Model model) {
        Reference ref = referenceService.findByID(id);
        model.addAttribute("reference", ref);
        if (ref.getType().equals("book")) {
            referenceService.remove(ref);
            return "editBook";
        }
        if (ref.getType().equals("inproceedings")) {
            referenceService.remove(ref);
            return "editInproceedings";
        }
        if (ref.getType().equals("article")) {
            referenceService.remove(ref);
            return "editArticle";
        }
        return "redirect:/listaa";  
    }

    @RequestMapping(value = "listaa")
    public String listaaListener(Model model) {
        model.addAttribute("referencet", referenceService.listAll());
        return "list";
    }

    @RequestMapping(value = "/add")
    public String addListener(Model model) {
        model.addAttribute("types", Reference.implementedTypes);
        return "add";
    }

    @RequestMapping(value = "/help")
    public String helpListener() {
        return "help";
    }
    
    @RequestMapping(value = "haeTagilla")
    public String haeTagilla(@RequestParam String tag, Model model){
        model.addAttribute("referencet", referenceService.findByTag(tag));
        return "tagList";
    }

    @RequestMapping(value = "/bibtex")
    public void getFile(HttpServletResponse response) {
        response.setContentType("text/plain");
        //response.setHeader("Content-Disposition", "attachment;filename=references.bib");
        try {
            ServletOutputStream out = response.getOutputStream();
            writeBibtexToStream(out, referenceService.listAll());
            out.flush();
            out.close();
        } catch (Throwable t) {
            System.err.println(t.getMessage());
        }
    }
    private static String[][] checkList = {{"ä", "\\\"a"}, {"ö", "\\\"o"}, {"Ä", "\\\"A"}, {"Ö", "\\\"O"},
        {"å", "{\\aa}"}, {"Å", "{\\AA}"}, {"ü", "\\\"u"}, {"Ü", "\\\"U"},
        {"ß", "{\\ss}"}, {"ø", "{\\o}"}, {"Ø", "{\\O}"}, {"æ", "{\\ae}"},
        {"Æ", "{\\AE}"}, {"Š", "{\\v S}"}, {"š", "{\\v s}"}, {"Č", "{\\v C}"},
        {"ž", "{\\v z}"}, {"Ř", "{\\v R}"}, {"ĕ", "{\\v e}"}, {"Λ", "\\Lambda"},};

    private static String convertToBibtexFormat(String s) {
        String retu = "";
        outerloop:
        for (int k = 0; k < s.length(); k++) {
            for (int i = 0; i < checkList.length; i++) {
                if (s.substring(k, k + 1).equals(checkList[i][0])) {
                    retu += checkList[i][1];
                    continue outerloop;
                }
            }
            retu += s.charAt(k);
        }
        return retu;
    }  

    public static void writeBibtexToStream(OutputStream out, List<Reference> references) throws IOException {
        String output = "";
        for (Reference ref : references) {
            output += "@" + ref.getType()
                    + "{" + convertToBibtexFormat(ref.getKey()) + ",\n";
            if (ref.getAddress() != null && !ref.getAddress().isEmpty()) {
                output += "address = {" + convertToBibtexFormat(ref.getAddress()) + "},\n";
            }
            if (ref.getAuthor() != null && !ref.getAuthor().isEmpty()) {
                output += "author = {" + convertToBibtexFormat(ref.getAuthor()) + "},\n";
            }
            if (ref.getBooktitle() != null && !ref.getBooktitle().isEmpty()) {
                output += "booktitle = {" + convertToBibtexFormat(ref.getBooktitle()) + "},\n";
            }
            if (ref.getEdition() != null && !ref.getEdition().isEmpty()) {
                output += "edition = {" + convertToBibtexFormat(ref.getEdition()) + "},\n";
            }
            if (ref.getEditor() != null && !ref.getEditor().isEmpty()) {
                output += "editor = {" + convertToBibtexFormat(ref.getEditor()) + "},\n";
            }
            if (ref.getJournal() != null && !ref.getJournal().isEmpty()) {
                output += "journal = {" + convertToBibtexFormat(ref.getJournal()) + "},\n";
            }
            if (ref.getMonth() != null && !ref.getMonth().isEmpty()) {
                output += "month = {" + convertToBibtexFormat(ref.getMonth()) + "},\n";
            }
            if (ref.getNote() != null && !ref.getNote().isEmpty()) {
                output += "note = {" + convertToBibtexFormat(ref.getNote()) + "},\n";
            }
            if (ref.getNumber() != null && !ref.getNumber().isEmpty()) {
                output += "number = {" + convertToBibtexFormat(ref.getNumber()) + "},\n";
            }
            if (ref.getOrganization() != null && !ref.getOrganization().isEmpty()) {
                output += "organization = {" + convertToBibtexFormat(ref.getOrganization()) + "},\n";
            }
            if (ref.getPages() != null && !ref.getPages().isEmpty()) {
                output += "pages = {" + convertToBibtexFormat(ref.getPages()) + "},\n";
            }
            if (ref.getSeries() != null && !ref.getSeries().isEmpty()) {
                output += "series = {" + convertToBibtexFormat(ref.getSeries()) + "},\n";
            }
            if (ref.getTitle() != null && !ref.getTitle().isEmpty()) {
                output += "title = {" + convertToBibtexFormat(ref.getTitle()) + "},\n";
            }
            if (ref.getPublisher() != null && !ref.getPublisher().isEmpty()) {
                output += "publisher = {" + convertToBibtexFormat(ref.getPublisher()) + "},\n";
            }
            if (ref.getType() != null && !ref.getType().isEmpty()) {
                output += "type = {" + convertToBibtexFormat(ref.getType()) + "},\n";
            }
            if (ref.getVolume() != null && !ref.getVolume().isEmpty()) {
                output += "volume = {" + convertToBibtexFormat(ref.getVolume()) + "},\n";
            }
            if (ref.getYearvalue() != null && !ref.getYearvalue().isEmpty()) {
                output += "year = {" + convertToBibtexFormat(ref.getYearvalue()) + "},\n";
            }
            output += "}\n";
        }

        out.write(output.getBytes());
    }
}
