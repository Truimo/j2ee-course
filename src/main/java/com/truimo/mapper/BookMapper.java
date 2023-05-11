package com.truimo.mapper;

import com.truimo.entity.Book;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookMapper {
    Book getBookById(long id);
    Book getBookByName(String name);
    List<Book> getAllBook();
    int addBook(Book book);
    int delBookById(long id);
    int editBookBySet(Book book);
}
