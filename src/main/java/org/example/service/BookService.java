package org.example.service;

import org.example.pojo.Book;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Book book);

    //删除一本书
    int deleteBookById(int id);

    //更新一本书
    int updateBook(Book book);

    //查询一本书
    Book queryBookById(int id);

    //查询全部的书
    List<Book> queryAllBooks();

    //根据书名模糊查询
    List<Book> queryBookByName(String bookName);
}
