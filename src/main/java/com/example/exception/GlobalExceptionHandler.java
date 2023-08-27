package com.example.exception;

import com.example.util.Result;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 全局异常处理
 */
@RestControllerAdvice //@ControllerAdvice+@ResponseBody
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    public Result userExceptionHandler(Exception ex){
        if(ex instanceof NullPointerException){
            return Result.error("空指针异常");
        }else if(ex instanceof ArithmeticException){
            return Result.error("数学异常");
        }else{
            return Result.error(ex.getMessage());
        }
    }
}
