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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href=" <%=request.getContextPath()%>/css/bootstrap.css"/>
    <%@include file="../include/head.jsp"%>
</head>
<body>
<div>Login</div>

<form action="login" method="post">
    <label>Email</label>
    <input class="btn" type="email" id="email" name="email"/>
    <br>
    <label> Password </label>
    <input type="password" id="psw" name="password"/>
    <br>
    <input type="submit" value="Login">
</form>

</body>
</html>