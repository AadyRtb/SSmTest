<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>宿舍管理</title>
    <style>
        .select1{
            width:500px;
            height:40px;
            border:2px solid red;
            margin:0 auto auto 0;
            float: left;
        }

        .select2{
            width:500px;
            height:40px;
            border:2px solid #ff0000;
            margin:0 auto auto 0;
            float: left;
        }

        .text{
            float:left;
            width:400px;/*宽400*/
            height:38px;/*高38（因为文本框内外边框要占用1像素所以总体高度减2，其他盒子同理）*/
            outline:none;
            border:none;/*取消文本框内外边框*/
        }

        .inputButton{
            float:left;
            width:100px;
            height:40px;
            color:white;
            background-color:deepskyblue;/*将按钮背景设置为红色，字体设置为白*/
            border:none;
            outline:none;/*取消边框和外边框将按钮边框去掉*/
        }

        .exit{
            width:96px;
            height:40px;
            margin:0 0 auto auto;
            float: right;
        }

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
<%--      ${stu_info}<br>--%>
<form action="selectByRid">
    <div class="select1">
        <input href="getRoomByRid?rid=${room.rid}" class="text" type="text" placeholder="根据宿舍号查询宿舍信息" name="rid"/>
        <input type="submit" class="inputButton" value="查询" />
    </div>

    <div>
        <input type="button" onclick="window.location.href='/pages/choose.jsp';" class="exit" value="返回选择界面" />
    </div>
</form>

<form action="selectByRid2">
    <div class="select2">
        <input href="selectByRid2?rid=${room.rid}" class="text" type="text" placeholder="根据宿舍号查询管理信息" name="rid"/>
        <input type="submit" class="inputButton" value="查询" />
    </div>
</form>

<table border="1" cellspacing="0" align="center">
    <tr>
        <td>宿舍号</td>
        <td>楼层号</td>
        <td>宿舍楼号</td>
        <td>操作</td>
    </tr>

    <c:forEach items="${room_info}"   var="room">
        <tr>
            <td>${room.rid}</td>
            <td>${room.rfloor}</td>
            <td>${room.bid}</td>
            <td>
                <a href="/room/delRoomByRid?rid=${room.rid}">删除</a>
                <a href="/room/updateByRid?rid=${room.rid}">修改</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" align="center">
            <a href="/pages/room/addRoom.jsp">添加</a>
        </td>
    </tr>
</table>
</body>
</html>
