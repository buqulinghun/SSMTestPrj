<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/7/25
  Time: 23:18
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
    <title>学生信息</title>
    <base href="<%=basepath%>"/>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#btnLoader").click(function(){
                alert("click")
                $.ajax({
                    url:"student/queryStudent.do",
                    type:"get",
                    dataType:"json",
                    success:function (resp){
                        alert(resp)
                        $("#info").html("")
                        $.each(resp, function(i,n){
                            $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                                .append("<td>"+n.name+"</td>")
                                .append("<td>"+n.age+"</td>")
                            .append("</tr>")
                        })
                    }
                })
            })
        })


    </script>

</head>
<body>
<table>
    <thead>
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>年龄</td>
    </tr>
    </thead>
    <tbody id="info">

    </tbody>
</table>

<input type="button" id="btnLoader" value="查询数据"/>

</body>
</html>
