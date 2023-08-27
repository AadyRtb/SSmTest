<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>宿舍信息修改</title>
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
<%--      准备编辑数据：${stu}<br>--%>
<div id="change">
<form action="/room/updateSubmit">
    宿舍号：<input type="text" name="rid" value="${room.rid}" readonly> <br>
    楼层号：<input type="text" name="rfloor" value="${room.rfloor}"> <br>
    宿舍楼号：<input type="text" name="bid" value="${room.bid}"> <br>
    <button type="submit">提交</button>
</form>
</div>
</body>
</html>
