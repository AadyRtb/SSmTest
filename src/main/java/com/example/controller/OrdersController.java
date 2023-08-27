package com.example.controller;

import com.example.util.Result;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
@RequestMapping("/order")
public class OrdersController{

    @GetMapping("/list")
    public Result showList(){
        Object list = "orders-list";
      //  System.out.println("showList()");
        //System.out.println(1/0);
        return Result.success(list);
    }



}
