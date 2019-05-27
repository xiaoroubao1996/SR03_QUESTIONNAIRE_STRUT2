<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/18
  Time: 下午10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>

<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1>Subject: <s:property value="subject"/></h1>
        <br>
        <h2>Score: <s:property value="score"/></h2>
        <br>
        <form action="index" method="post">
            <input class="btn btn-primary" type="submit" value="Return index"/>
        </form>
    </div>
</div>
</body>
</html>
