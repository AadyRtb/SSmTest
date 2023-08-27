<%--
  Created by IntelliJ IDEA.
  User: 23770
  Date: 2023/8/9
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>建筑信息</title>
  <style>
    table{
      width: 100%;
      border-collapse: collapse;
    }

    table caption{
      font-size: 2em;
      font-weight: bold;
      margin: 1em 0;
    }

    th,td{
      border: 1px solid #999;
      text-align: center;
      padding: 20px 0;
    }

    table thead tr{
      background-color: #008c8c;
      color: #fff;
    }

    table tbody tr:nth-child(odd){
      background-color: #eee;
    }

    table tbody tr:hover{
      background-color: #ccc;
    }

    table tbody tr td:first-child{
      color: #f40;
    }

    table tfoot tr td{
      text-align: right;
      padding-right: 20px;
    }
  </style>
</head>
<body>
<table border="1" cellspacing="0" align="center" items="${obu}"   var="obu">
  <tr>
    <td>楼号</td>
    <td>楼名</td>
    <td>消防负责人</td>
    <td>操作</td>
  </tr>
  <tr>
    <td>${obu.bid}</td>
    <td>${obu.bname}</td>
    <td>${obu.fid}</td>
    <td>
      <a href="/bu/delBuBybid?bid=${obu.bid}">删除</a>
      <a href="/bu/updateBybid?bid=${obu.bid}">修改</a>
    </td>
  </tr>

</table>
</body>
</html>
