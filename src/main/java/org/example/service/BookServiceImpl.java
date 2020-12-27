package org.example.service;

import org.example.dao.BookMapper;
import org.example.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 业务层调用DAO层
 * 需要进行逻辑判断
 */
@Service("bookServiceImpl")
public class BookServiceImpl implements BookService {

    private BookMapper mapper;

    @Autowired
    public void setMapper(BookMapper mapper) {
        this.mapper = mapper;
    }

    @Override
    public int addBook(Book book) {
        return mapper.addBook(book);
    }

    @Override
    public int deleteBookById(int id) {
        return mapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Book book) {
        return mapper.updateBook(book);
    }

    @Override
    public Book queryBookById(int id) {
        return mapper.queryBookById(id);
    }

    @Override
    public List<Book> queryAllBooks() {
        return mapper.queryAllBooks();
    }

    @Override
    public List<Book> queryBookByName(String bookName) {
        return mapper.queryBookByName(bookName);
    }
}
