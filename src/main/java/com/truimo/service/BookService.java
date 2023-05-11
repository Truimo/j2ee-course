package com.truimo.service;

import com.truimo.entity.Book;

import java.util.List;

public interface BookService {
    Book getBookById(long id);
    Book getBookByName(String name);
    List<Book> getAllBook();
    int addBook(Book book);
    int delBookById(long id);
    int editBook(Book book);
}
