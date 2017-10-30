package com.niit.gadgets.test;

import org.junit.Test;
import static org.junit.Assert.assertEquals;
public class AppTest {
   @Test
   public void testSetup() {
      String str= "I am done with Junit setup";
      assertEquals("I am done with Junit setup",str);
   }
}