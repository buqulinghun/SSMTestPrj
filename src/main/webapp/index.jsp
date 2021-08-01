<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/7/25
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basepath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath()  + "/";
%>
<html>
<head>
    <title>学生管理系统</title>
    <base href="<%=basepath%>"/>
</head>
<body>
    <p>学生管理系统</p>
    <table>
        <tr>
            <td><a href="registStudent.jsp">注册学生</a> </td>
        </tr>
        <tr>
            <td><a href="listStudents.jsp">浏览学生</a></td>
        </tr>
    </table>

</body>
</html>
