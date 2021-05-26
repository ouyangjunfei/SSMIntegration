package org.example.controller;

import lombok.extern.slf4j.Slf4j;
import org.example.pojo.Book;
import org.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@Controller
@RequestMapping(value = "/book")
public class BookController {
    @Qualifier("bookServiceImpl")
    private final BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }


    // 查询全部的书籍，并且返回到一个书籍展示页面
    @GetMapping(value = "/all")
    public String queryAllBooksPage(Model model) {
        List<Book> bookList = bookService.queryAllBooks();
        model.addAttribute("list", bookList);
        return "book";
    }

    // 查询全部书籍的数据
    @PostMapping("/all")
    @ResponseBody
    public List<Book> queryAllBooksData() {
        return bookService.queryAllBooks();
    }

    //跳转到增加书籍页面
    @GetMapping("/addPage")
    public String addBookPage() {
        return "addBook";
    }

    //添加一本书的具体内容
    @PostMapping("/add")
    public String addBook(Book book) {
        int i = bookService.addBook(book);
        log.info("返回值: {}", i);     // 插入成功的结果为1
        return "redirect:/book/all";
    }

    //跳转到修改页面
    @GetMapping("/updatePage/{id}")
    public String updateBookPage(@PathVariable int id, Model model) {
        Book book = bookService.queryBookById(id);
        model.addAttribute("book", book);
        return "updateBook";
    }

    @PostMapping("/update")
    public String updateBook(Book book) {
        bookService.updateBook(book);
        return "redirect:/book/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/all";
    }

    @GetMapping("/query")
    public String queryBook(String bookName, Model model) {
        List<Book> bookList = bookService.queryBookByName(bookName);
        model.addAttribute("list", bookList);
        return "book";
    }

    // 用于测试text/plain类型中的中文是否返回正常
    @PostMapping("/test")
    @ResponseBody
    public String testData() {
        return "123测试test";
    }

    // 前后端Ajax交互模拟提交数据
    @PostMapping("/ajax")
    @ResponseBody
    public String testAjax(@RequestBody Book book) {
        log.info("获取前端数据:{}", book);
        return book.getBookName() + " : " + book.getBookCount();
    }
}
