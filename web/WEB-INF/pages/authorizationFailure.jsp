<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/18
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authorization failure</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>
<div class="container panel panel-default col-md-3">
    <div class="content">
        <h1  align="center" width="50%" class="alert alert-danger" >Authorization failure</h1>
        <form action="index" method="get">
            <input class="btn btn-primary" type="submit" value="Return"/>
        </form>
    </div>
</div>
</body>
</html>
