package com.example.controller.error;

import com.example.util.Result;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class _404Handler {

    @RequestMapping("/404.do")
    public Result  _404Handler(){
        return Result.error("404");
    }
}
