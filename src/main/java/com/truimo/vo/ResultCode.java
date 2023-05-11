package com.truimo.vo;

public enum ResultCode implements StatusCode {

    SUCCESS(200, "successful"),
    QUERY_SUCCESS(1000, "查询成功"),
    QUERY_FAIL(1002, "查询失败"),
    ADD_SUCCESS(1003, "添加成功"),
    ADD_FAIL(1004, "添加失败"),
    DEL_SUCCESS(1003, "删除成功"),
    DEL_FAIL(1004, "删除失败"),
    UPDATE_SUCCESS(1003, "修改成功"),
    UPDATE_FAIL(1004, "修改失败"),
    FAIL(400, "fail");

    private int code;
    private String message;

    ResultCode(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
