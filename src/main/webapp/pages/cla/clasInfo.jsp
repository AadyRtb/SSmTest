<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/9
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>学生名单</title>
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
<%--      ${clas_info}<br>--%>
<table border="1" cellspacing="0" align="center">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>宿舍</td>
        <td>班级</td>
        <td>操作</td>
    </tr>

    <c:forEach items="${clas_info}"   var="stu">
        <tr>
            <td>${stu.idstudent}</td>
            <td>${stu.studentname}</td>
            <td>${stu.iddormitory}</td>
            <td>${stu.classroom}</td>
            <td>
                <a href="/clazz/delStuByIdstudent?idstudent=${stu.idstudent}">删除</a>
                <a href="/clazz/updateByIdstudent?idstudent=${stu.idstudent}">修改</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="5" align="center">
            <a href="/pages/cla/addCla.jsp">添加</a>
        </td>
    </tr>
</table>
</body>
</html>
