<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>宿舍信息</title>
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
<%--${oroom}<br>--%>
<table border="1" cellspacing="0" align="center" items="${oroom}"   var="oroom">
    <tr>
        <td>宿舍号</td>
        <td>楼层号</td>
        <td>宿舍楼号</td>
        <td>操作</td>
    </tr>
    <tr>
        <td>${oroom.rid}</td>
        <td>${oroom.rfloor}</td>
        <td>${oroom.bid}</td>
        <td>
            <a href="/room/delRoomByRid?rid=${oroom.rid}">删除</a>
            <a href="/room/updateByRid?rid=${oroom.rid}">修改</a>
        </td>
    </tr>

</table>
</body>
</html>
