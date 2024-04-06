package ru.innopolis.phone_store;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class AppTest extends TestCase {

    public AppTest(String testName) {
        super(testName);
    }

    public static Test suite() {
        return new TestSuite(AppTest.class);
    }

    public void testApp() {
        assertTrue(true);
    }

    public void testAddition() {
        int result = 2 + 2;
        assertEquals(4, result);
    }

    public void testMultiplication() {
        int result = 3 * 5;
        assertEquals(15, result);
    }

    public void testStringLength() {
        String str = "Hello";
        assertEquals(5, str.length());
    }

    public void testArraySize() {
        int[] array = {1, 2, 3, 4, 5};
        assertEquals(5, array.length);
    }

    public void testNotNull() {
        Object obj = new Object();
        assertNotNull(obj);
    }
}