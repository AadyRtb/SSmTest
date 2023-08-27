<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/9
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
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
<%--      ${res_1}<br>--%>
<table border="1" cellspacing="0" align="center" items="${res_1}"   var="res1">
    <tr>
        <td>宿舍楼</td>
        <td>消防员</td>
        <td>消防电话</td>
        <td>宿管</td>
        <td>宿管电话</td>
    </tr>

        <tr>
            <td>${res_1.bname}</td>
            <td>${res_1.fname}</td>
            <td>${res_1.fphone}</td>
            <td>${res_1.rmname}</td>
            <td>${res_1.rmphone}</td>
        </tr>


</table>
</body>
</html>
