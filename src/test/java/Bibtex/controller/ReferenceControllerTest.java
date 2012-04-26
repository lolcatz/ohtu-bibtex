/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.controller;

import javax.servlet.http.HttpServletResponse;
import org.junit.*;
import static org.junit.Assert.*;
import org.springframework.ui.Model;
import Bibtex.domain.Reference;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

/**
 *
 * @author psaikko
 */
public class ReferenceControllerTest {
    
    public ReferenceControllerTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void testBibtexFormat() throws Throwable{
        List<Reference> references = new ArrayList<Reference>() {{
            add(new Reference() {{
            setKey("bk1");
            setType("book");
            setTitle("aaaa");
            setAuthor("asdf");
            }});
            add(new Reference() {{
            setKey("ar1");
            setType("article");
            setTitle("bbbb");
            setAuthor("cccc");
            }});
            add(new Reference() {{
            setKey("ip1");
            setType("inproceedings");
            setTitle("bbbb");
            setAuthor("cccc");
            }});
        }};
        OutputStream os = new ByteArrayOutputStream();
        ReferenceController.writeBibtexToStream(os, references);
        String output = os.toString();
        
        for (Reference ref : references) {
            assertTrue(output.contains("@"+ref.getType()+"{"+ref.getKey()+",\n"));
            assertTrue(output.contains("author = {"+ref.getAuthor()+"}"));
            assertTrue(output.contains("title = {"+ref.getTitle()+"}"));
        }
    }

    @Test
    public void testBibtexFormatWithSpecialCharacters() throws Throwable{
        List<Reference> references = new ArrayList<Reference>() {{
            add(new Reference() {{
                setKey("bk1");
                setType("book");
                setTitle("aäøa");
                setAuthor("Æ");
            }});
            add(new Reference() {{
                setKey("ar1");
                setType("article");
                setTitle("bååb");
                setAuthor("Æ");
            }});
            add(new Reference() {{
                setKey("ip1");
                setType("inproceedings");
                setTitle("äaaäå");
                setAuthor("žÖÄøæ");
            }});
        }};
        List<Reference> check = new ArrayList<Reference>() {{
            add(new Reference() {{
                setKey("bk1");
                setType("book");
                setTitle("a\\\"a{\\o}a");
                setAuthor("{\\AE}");
            }});
            add(new Reference() {{
                setKey("ar1");
                setType("article");
                setTitle("b\\aa\\aab");
                setAuthor("{\\AE}");
            }});
            add(new Reference() {{
                setKey("ip1");
                setType("inproceedings");
                setTitle("\\\"aaa\\\"a\\aa");
                setAuthor("{\\v z}\\\"O\\\"A{\\o}{\\ae}");
            }});
        }};
        OutputStream os = new ByteArrayOutputStream();
        ReferenceController.writeBibtexToStream(os, references);
        String output = os.toString();

        for (Reference ref : check) {
            assertTrue(output.contains("@"+ref.getType()+"{"+ref.getKey()+",\n"));
            assertTrue(output.contains("author = {"+ref.getAuthor()+"}"));
            assertTrue(output.contains("title = {"+ref.getTitle()+"}"));
        }
    }
}
