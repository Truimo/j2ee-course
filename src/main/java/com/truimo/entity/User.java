package com.truimo.entity;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private long id;
    private String userCode;
    private String userPassword;
    private String userName;
    private String email;
    private short avatarNum;
    private int contribution;
    private Date creationDate;
}
