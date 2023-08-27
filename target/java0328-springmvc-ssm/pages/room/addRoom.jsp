<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>添加宿舍</title>
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
<form action="/room/addRoom">
    宿舍号：<input type="text" name="rid"> <br>
    楼层号：<input type="text" name="rfloor"> <br>
    宿舍楼号：<input type="text" name="bid"> <br>
    <button type="submit">添加</button>
</form>
</div>
</body>
</html>
