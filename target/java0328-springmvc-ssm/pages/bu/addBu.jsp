<%--
  Created by IntelliJ IDEA.
  User: 23770
  Date: 2023/8/9
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>添加建筑信息</title>
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
  <form action="/bu/addBuilding">
    楼号：<input type="text" name="bid"> <br>
    楼名：<input type="text" name="bname"> <br>
    消防负责人：<input type="text" name="fid"> <br>
    <button type="submit">添加</button>
  </form>
</div>
</body>
</html>
