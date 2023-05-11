package com.truimo.entity;

import lombok.Data;

import javax.persistence.Entity;
import java.io.Serializable;
import java.util.Date;

@Entity
@Data
public class Book implements Serializable {
    private long id;
    private String book_title;
    private String book_author;
    private String book_summary;
    private int type_id;
    private int download_time;
    private Date book_pubYear;
    private String book_file;
    private String book_cover;
    private String book_format;
}
