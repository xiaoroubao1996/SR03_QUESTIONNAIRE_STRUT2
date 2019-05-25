<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/3/22
  Time: 上午11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-3">
    <div class="panel-body">
        <h1>Login</h1>

        <form class="form-horizontal" action="login" method="post">
            <label class="control-label">Email</label>
            <input class="form-control form-top" type="email" id="email" name="email"/>
            <br>
            <label class="control-label"> Password </label>
            <input class="form-control form-bottom" type="password" id="psw" name="password"/>
            <br>
            <input class="btn btn-primary btn-lg" type="submit" value="Login">
        </form>
    </div>
</div>
</body>
</html>