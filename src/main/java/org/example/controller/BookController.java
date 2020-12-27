package org.example.controller;

import org.example.pojo.Book;
import org.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/book")
public class BookController {
    @Qualifier("bookServiceImpl")
    private final BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }


    //查询全部的书籍，并且返回到一个书籍展示页面
    @RequestMapping(value = "/all")
    public String queryAllBooks(Model model) {
        List<Book> bookList = bookService.queryAllBooks();
        model.addAttribute("list", bookList);
        return "book";
    }

    //跳转到增加书籍页面
    @RequestMapping("/addPage")
    public String addBookPage() {
        return "addBook";
    }

    //添加一本书的具体内容
    @RequestMapping("/add")
    public String addBook(Book book) {
        bookService.addBook(book);
        return "redirect:/book/all";
    }

    //跳转到修改页面
    @RequestMapping("/updatePage/{id}")
    public String updateBookPage(@PathVariable int id, Model model) {
        Book book = bookService.queryBookById(id);
        model.addAttribute("book", book);
        return "updateBook";
    }

    @RequestMapping("/update")
    public String updateBook(Book book) {
        bookService.updateBook(book);
        return "redirect:/book/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteBook(@PathVariable int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/all";
    }

    @RequestMapping("/query")
    public String queryBook(String bookName, Model model) {
        List<Book> bookList = bookService.queryBookByName(bookName);
        model.addAttribute("list", bookList);
        return "book";
    }
}
