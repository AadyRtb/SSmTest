<%--
  Created by IntelliJ IDEA.
  User: 31065
  Date: 2023/8/12
  Time: 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择界面</title>
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
      height: 450px;
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
  <h1>选择界面</h1>
  <div class="inputBox">
    <form action="/user/log">
      <input type="button" class="inputButton" onclick="window.location.href='/stu/selectAll';" value="学生信息管理" />
      <input type="button" class="inputButton" onclick="window.location.href='/room/selectAll';" value="宿舍管理" />
      <input type="button" class="inputButton" onclick="window.location.href='/emp/selectAll';" value="宿舍员工管理" />
      <input type="button" class="inputButton" onclick="window.location.href='/clazz/selectAll';" value="班级管理" />
      <input type="button" class="inputButton" onclick="window.location.href='/bu/selectAll';" value="建筑管理" />
      <input type="button" class="inputButton" onclick="window.location.href='/pages/login.jsp';" value="退出登录" />
    </form>
  </div>
</div>
</body>
</html>
