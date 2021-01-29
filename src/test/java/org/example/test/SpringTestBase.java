package org.example.test;


import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class SpringTestBase extends AbstractJUnit4SpringContextTests {
}
