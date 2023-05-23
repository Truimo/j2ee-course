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
}
