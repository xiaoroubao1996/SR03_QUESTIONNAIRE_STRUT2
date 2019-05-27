<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/21
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-3">
    <div class="panel-body">
        <h1>User Management</h1>

        <form action="displayCreateUser" method="get">
            <input class="btn btn-primary" type="submit" value="Create user"/>
        </form>

        <form action="displayUserList" method="get">
            <input class="btn btn-primary" type="submit" value="User list"/>
        </form>

        <form class="form-horizontal" action="index">
            <input class="btn btn-primary" type="submit" value="Return"/>
        </form>
    </div>
</div>
</body>
</html>
