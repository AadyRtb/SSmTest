<%--
  Created by IntelliJ IDEA.
  User: 23770
  Date: 2023/8/7
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>员工信息</title>
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
<%--${oemp}<br>--%>
<table border="1" cellspacing="0" align="center" items="${oemp}"   var="oemp">
  <tr>
    <td>工号</td>
    <td>姓名</td>
    <td>工作</td>
    <td>工资</td>
    <td>操作</td>
  </tr>
  <tr>
    <td>${oemp.eid}</td>
    <td>${oemp.ename}</td>
    <td>${oemp.work}</td>
    <td>${oemp.salary}</td>
    <td>
      <a href="/emp/delEmpByeid?eid=${oemp.eid}">删除</a>
      <a href="/emp/updateByeid?eid=${oemp.eid}">修改</a>
    </td>
  </tr>

</table>
</body>
</html>
