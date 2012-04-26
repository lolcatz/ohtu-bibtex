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

//    @Test
//    public void testBibtexFormat() throws Throwable{
//        List<Reference> references = new ArrayList<Reference>() {{
//            add(new Reference() {{
//            setKey("bk1");
//            setType("book");
//            setFields(
//                    new HashMap<String,String>() {{
//                    put("title", "aaaa"); 
//                    }});
//            }});
//            add(new Reference() {{
//            setKey("ar1");
//            setType("article");
//            setFields(
//                    new HashMap<String,String>() {{
//                    put("title", "bbbb");
//                    put("author", "cccc");
//                    }});
//            }});
//            add(new Reference() {{
//            setKey("ip1");
//            setType("inproceedings");
//            setFields(
//                    new HashMap<String,String>() {{
//                    put("title", "bbbb");
//                    put("author", "cccc");
//                    }});
//            }});
//        }};
//        OutputStream os = new ByteArrayOutputStream();
//        ReferenceController.writeBibtexToStream(os, references);
//        String output = os.toString();
//        
//        for (Reference ref : references) {
//            assertTrue(output.contains("@"+ref.getType()+"{"+ref.getKey()+",\n"));
//            for (String key : ref.getFields().keySet()) {
//                assertTrue(output.contains(key + " = {"+ref.getFields().get(key) +"}"));
//            }
//        }
//        
//    }
//
//    public void testBibtexFormatWithSpecialCharacters() throws Throwable{
//        List<Reference> references = new ArrayList<Reference>() {{
//            add(new Reference() {{
//                setKey("bk1");
//                setType("book");
//                setFields(
//                        new HashMap<String,String>() {{
//                            put("title", "aäøa");
//                        }});
//            }});
//            add(new Reference() {{
//                setKey("ar1");
//                setType("article");
//                setFields(
//                        new HashMap<String,String>() {{
//                            put("title", "bååb");
//                            put("author", "Æ");
//                        }});
//            }});
//            add(new Reference() {{
//                setKey("ip1");
//                setType("inproceedings");
//                setFields(
//                        new HashMap<String,String>() {{
//                            put("title", "äaaäå");
//                            put("author", "žÖÄøæ");
//                        }});
//            }});
//        }};
//        List<Reference> check = new ArrayList<Reference>() {{
//            add(new Reference() {{
//                setKey("bk1");
//                setType("book");
//                setFields(
//                        new HashMap<String,String>() {{
//                            put("title", "a\\\"a{\\o}a");
//                        }});
//            }});
//            add(new Reference() {{
//                setKey("ar1");
//                setType("article");
//                setFields(
//                        new HashMap<String,String>() {{
//                            put("title", "b\\aa\\aab");
//                            put("author", "{\\AE}");
//                        }});
//            }});
//            add(new Reference() {{
//                setKey("ip1");
//                setType("inproceedings");
//                setFields(
//                        new HashMap<String,String>() {{
//                            put("title", "\\\"aaa\\\"a\\aa");
//                            put("author", "{\\v z}\\\"O\\\"A{\\o}{\\ae}");
//                        }});
//            }});
//        }};
//        OutputStream os = new ByteArrayOutputStream();
//        ReferenceController.writeBibtexToStream(os, references);
//        String output = os.toString();
//
//        for (Reference ref : check) {
//            assertTrue(output.contains("@"+ref.getType()+"{"+ref.getKey()+",\n"));
//            for (String key : ref.getFields().keySet()) {
//                assertTrue(output.contains(key + " = {"+ref.getFields().get(key) +"}"));
//            }
//        }
//
//    }
}
