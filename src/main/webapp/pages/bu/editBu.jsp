<%--
  Created by IntelliJ IDEA.
  User: 23770
  Date: 2023/8/9
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>建筑信息修改</title>
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
<div id="change">
<form action="/bu/updateSubmit">
  楼号：<input type="text" name="bid" value="${bu.bid}" readonly> <br>
  楼名：<input type="text" name="bname" value="${bu.bname}"> <br>
  消防负责人：<input type="text" name="fid" value="${bu.fid}"> <br>
  <button type="submit">提交</button>
</form>
</div>
</body>
</html>
