<%--
  Created by IntelliJ IDEA.
  User: 23770
  Date: 2023/8/7
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>添加员工</title>
    <style>
        #add
        {
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px 50px;
            width: 500px;
            height: 400px;
            border-radius: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="add">
<form action="/emp/addEmp" >
  工号：<input type="text" name="eid"> <br>
  姓名：<input type="text" name="ename"> <br>
  工作：<input type="radio" name="work" value="消防员">消防员
       <input type="radio" name="work" value="清洁工">清洁工
       <input type="radio" name="work" value="宿管">宿管
       <input type="radio" name="work" value="维修">维修<br>
  工资：<input type="text" name="salary"> <br>
  <button type="submit">添加</button>
</form>
</div>
</body>
</html>
