package com.truimo.dto;

import org.hibernate.validator.constraints.NotBlank;

public class AddBookDto {
    @NotBlank(message = "名字不能为空")
    private String name;
    @NotBlank(message = "出版社不能为空")
    private String press;
    @NotBlank(message = "作者不能为空")
    private String author;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
