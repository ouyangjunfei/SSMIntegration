package org.example.dao;

import org.apache.ibatis.annotations.Param;
import org.example.pojo.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookMapper {

    //增加一本书
    int addBook(Book book);

    //删除一本书
    int deleteBookById(@Param("bookID") int id);

    //更新一本书
    int updateBook(Book book);

    //查询一本书
    Book queryBookById(@Param("bookID") int id);

    //查询全部的书
    List<Book> queryAllBooks();

    List<Book> queryBookByName(String bookName);
}
