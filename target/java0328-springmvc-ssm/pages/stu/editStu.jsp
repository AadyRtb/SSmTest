<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>修改信息</title>
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
      <%--准备编辑数据：${stu}<br>--%>
      <div id="change">
            <form action="/stu/updateSubmit">
                学号：<input type="text" name="idstudent" value="${stu.idstudent}" readonly> <br>
                姓名：<input type="text" name="studentname" value="${stu.studentname}"> <br>
                宿舍：<input type="text" name="iddormitory" value="${stu.iddormitory}"> <br>
                班级：<input type="text" name="classroom" value="${stu.classroom}"> <br>
                <button type="submit">提交</button>
      </form>
      </div>
</body>
</html>
