package com.example.controller;


import com.example.model.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@CrossOrigin
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/log")
    public  void log(String username, String password, HttpServletResponse response) throws IOException {
       // System.out.println("user="+username+password);
        User user = userService.log(username,password);
        response.setContentType("text/html;charset=utf-8");
        if(user!=null){
            // return "redirect:/stu/selectAll";//转到登录成功的页面
            response.getWriter().print("<script>alert('登录成功');location.href='/pages/choose.jsp'</script>");
        } else {
//            return "redirect:/pages/login.jsp";//弹出账号或密码错误
            response.getWriter().print("<script>alert('登录失败');location.href='/pages/login.jsp'</script>");
        }
    }

}
