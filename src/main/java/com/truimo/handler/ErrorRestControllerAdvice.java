package com.truimo.handler;

import com.truimo.vo.ResultCode;
import com.truimo.vo.ResultResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class ErrorRestControllerAdvice {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ResultResponse<String>> methodArgumentNotValidExceptionHandler(MethodArgumentNotValidException exception) {
        FieldError fieldError = exception.getBindingResult().getFieldError();
        String message = "错误的请求";
        if (fieldError != null) {
            message = fieldError.getDefaultMessage();
        }
        ResultResponse<String> resultResponse = new ResultResponse<>(400, message, null);
        return ResponseEntity.badRequest().body(resultResponse);
    }

    @ExceptionHandler(BindException.class)
    public ResponseEntity<ResultResponse<String>> bindExceptionHandler() {
        ResultResponse<String> resultResponse = new ResultResponse<>(ResultCode.FAIL, null);
        return ResponseEntity.badRequest().body(resultResponse);
    }

    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public ResponseEntity<ResultResponse<String>> httpRequestMethodNotSupportedExceptionHandler(HttpRequestMethodNotSupportedException exception) {
        String message = String.format("不支持的请求方法“%s”", exception.getMethod());
        ResultResponse<String> resultResponse = new ResultResponse<>(400, message, null);
        return ResponseEntity.badRequest().body(resultResponse);
    }
}
