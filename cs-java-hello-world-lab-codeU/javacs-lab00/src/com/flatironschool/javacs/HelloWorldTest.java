package com.flatironschool.javacs;

import static org.junit.Assert.assertTrue;

/**
 * Created by pletcher on 3/10/16.
 */
public class HelloWorldTest {

    @org.junit.Test
    public void testGetVersion() throws Exception {
        HelloWorld main = new HelloWorld();
        assertTrue(main.getVersion() >= 1.7);
    }
}
