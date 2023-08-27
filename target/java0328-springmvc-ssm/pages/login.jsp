<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录界面</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            background-image: url(img/background.jpg);
            background-repeat: no-repeat;
        }
        a{
            color: #666;
            text-decoration: none;
        }
        #login
        {
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px 50px;
            background-color: #000000;
            width: 500px;
            height: 400px;
            border-radius: 20px;
            text-align: center;
            background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
        }
        #login h1
        {
            font-size: 40px;
            color: floralwhite;
        }
        #login .inputBox
        {
            margin-top: 35px;
        }
        #login .inputBox .inputText
        {
            margin-top: 20px;
        }
        #login .inputBox .inputText input
        {
            border: 0;
            padding: 10px 10px;
            border-bottom: 1px solid white;
            background-color: #00000000;
            color: white;
            width: 200px;
            height: 40px;
            font-size: 20px;
        }
        #login .inputBox .inputText i
        {
            color: white;
        }
        #login .inputBox .inputButton
        {
            border: 0;
            width: 200px;
            height: 50px;
            color: white;
            margin-top: 55px;
            border-radius:20px;
            background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%,#b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);
        }


    </style>
</head>
<body>
    <div id="login">
        <h1>登录</h1>
        <div class="inputBox">
            <form action="/user/log">
                <div class="inputText">
                    <i class="fa fa-user-circle" style="color:whitesmoke;"></i>
                    <input type="text" placeholder="用户名" name="username"/>
                </div>
                <div class="inputText">
                    <i class="fa fa-key" style="color:whitesmoke;"></i>
                    <input type="password" placeholder="密码" name="password"/>
                </div>
                <input type="submit" class="inputButton" value="LOGIN" />
            </form>
        </div>
    </div>
</body>
</html>
