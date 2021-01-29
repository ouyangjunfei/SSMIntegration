package org.example.service;

import org.example.pojo.Book;
import org.example.test.SpringTestBase;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BookServiceTest extends SpringTestBase {

    @Autowired
    private BookService bookService;

    @Test
    public void queryAllBooks() {
        List<Book> bookList = bookService.queryAllBooks();
        for (Book book : bookList) {
            System.out.println(book);
        }
    }
}