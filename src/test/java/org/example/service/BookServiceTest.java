package org.example.service;

import org.example.pojo.Book;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class BookServiceTest {

    @Test
    public void queryAllBooks() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookService = applicationContext.getBean("bookServiceImpl", BookService.class);
        List<Book> bookList = bookService.queryAllBooks();
        for (Book book : bookList) {
            System.out.println(book);
        }
    }
}