<%--
  Created by IntelliJ IDEA.
  User: 23770
  Date: 2023/8/7
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>修改员工信息</title>
  <style>
    #change
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
<%--      准备编辑数据：${emp}<br>--%>
<div id="change">
<form action="/emp/updateSubmit">
  工号：<input type="text" name="eid" value="${emp.eid}" readonly> <br>
  姓名：<input type="text" name="ename" value="${emp.ename}"> <br>
  工作：<input type="text" name="work" value="${emp.work}"> <br>
  工资：<input type="text" name="salary" value="${emp.salary}"> <br>
  <button type="submit">提交</button>
</form>
</div>
</body>
</html>
