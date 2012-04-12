/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Bibtex.domain;

import java.util.HashMap;

import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author psaikko
 */
public class ReferenceTest {
    
    public ReferenceTest() {
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

    /**
     * Test of getType method, of class Reference.
     */
    @Test
    public void testGetsAndSets() {
        Reference r = new Reference();
        HashMap<String,String> hm = new HashMap<String,String>();
        try {
            r.setKey("asdf1");
            r.setType("book");
            r.setFields(hm);
        } catch (Exception e) {
            assertFalse(true);
        }
        assertEquals(r.getKey(), "asdf1");
        assertEquals(r.getType(), "book");
        assertEquals(r.getFields(), hm);
    }

    /**
     * Test of isValidType method, of class Reference.
     */
    @Test
    public void testIsValidType() {
        for (String s : Reference.validTypes)
            assertTrue(Reference.isValidType(s));
    }

    /**
     * Test of isValidField method, of class Reference.
     */
    @Test
    public void testIsValidField() {
        for (String s : Reference.validFields)
            assertTrue(Reference.isValidField(s));
    }

    /**
     * Test of extractFields method, of class Reference.
     */
    @Test
    public void testExtractFields() throws Exception {
        String input = "title = a\nauthor = b\npublisher = c";
        HashMap<String,String> inputs = new HashMap<String,String>();
        try {
            inputs = Reference.extractFields(input);
        } catch (Exception e) { assertTrue(false); }
        
        assertEquals(inputs.get("title"), "a");
        assertEquals(inputs.get("author"), "b");
        assertEquals(inputs.get("publisher"), "c");
    }
}
