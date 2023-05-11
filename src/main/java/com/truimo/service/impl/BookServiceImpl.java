package com.truimo.service.impl;

import com.truimo.entity.Book;
import com.truimo.mapper.BookMapper;
import com.truimo.service.BookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Resource
    private BookMapper bookMapper;

    @Override
    public Book getBookById(long id) {
        return bookMapper.getBookById(id);
    }

    @Override
    public Book getBookByName(String name) {
        return bookMapper.getBookByName(name);
    }

    @Override
    public List<Book> getAllBook() {
        return bookMapper.getAllBook();
    }

    @Override
    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int delBookById(long id) {
        return bookMapper.delBookById(id);
    }

    @Override
    public int editBook(Book book) {
        return bookMapper.editBookBySet(book);
    }
}
