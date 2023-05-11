package com.truimo.controller;

import com.truimo.dto.AddBookDto;
import com.truimo.entity.Book;
import com.truimo.service.BookService;
import com.truimo.vo.ResultCode;
import com.truimo.vo.ResultResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {

    private final BookService bookService;

    BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<ResultResponse<Book>> getBookById(@PathVariable("id") int id) {
        Book book = bookService.getBookById(id);
        return ResponseEntity.ok(new ResultResponse<>(ResultCode.QUERY_SUCCESS, book));
    }

    @PostMapping
    public ResponseEntity<ResultResponse<String>> addBook(@RequestBody @Validated AddBookDto addBookDto) {
        Book book = new Book();
        book.setName(addBookDto.getName());
        book.setPress(addBookDto.getPress());
        book.setAuthor(addBookDto.getAuthor());
        int i = bookService.addBook(book);
        if (i > 0) {
            return ResponseEntity.ok(new ResultResponse<String>(ResultCode.ADD_SUCCESS));
        }
        return ResponseEntity.badRequest().body(new ResultResponse<String>(ResultCode.ADD_FAIL));
    }

    @GetMapping
    public ResponseEntity<ResultResponse<List<Book>>> getAllBook() {
        List<Book> books = bookService.getAllBook();
        return ResponseEntity.ok(new ResultResponse<>(ResultCode.QUERY_SUCCESS, books));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ResultResponse<String>> delBook(@PathVariable("id") int id) {
        int i = bookService.delBookById(id);
        if (i > 0) {
            return ResponseEntity.ok(new ResultResponse<String>(ResultCode.DEL_SUCCESS));
        }
        return ResponseEntity.badRequest().body(new ResultResponse<String>(ResultCode.DEL_FAIL));
    }

    @PutMapping
    public ResponseEntity<ResultResponse<String>> editbook(@RequestBody Book book) {
        int i = bookService.editBook(book);
        if (i > 0) {
            return ResponseEntity.ok(new ResultResponse<String>(ResultCode.UPDATE_SUCCESS));
        }
        return ResponseEntity.badRequest().body(new ResultResponse<String>(ResultCode.UPDATE_FAIL));
    }

}
