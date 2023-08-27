<%--
  Created by IntelliJ IDEA.
  User: dong
  Date: 2023/8/7
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>添加学生</title>
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
           <form action="/stu/addStu">
               学号：<input type="text" name="idstudent"> <br>
               姓名：<input type="text" name="studentname"> <br>
               宿舍：<input type="text" name="iddormitory"> <br>
               班级：<input type="text" name="classroom"> <br>
               <button type="submit">添加</button>
           </form>
      </div>
</body>
</html>
