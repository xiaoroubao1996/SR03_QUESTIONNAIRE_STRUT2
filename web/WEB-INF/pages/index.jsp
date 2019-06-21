<%@ page import="Model.Constant" %><%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/2
  Time: 下午1:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>

<div class="container panel panel-default col-md-3">
    <div class="panel-body">
        <h1>Welcome</h1>
        <form action="displayQuestionnaireList" method="get">
            <input class="btn btn-primary  col-md-9" type="submit" value="Questionnaire list"/>
        </form>
        <form action="displayResultList" method="post">
            <input type="hidden" name="currentPage" value="1"/>
            <input class="btn btn-primary  col-md-9" type="submit" value="Result list"/>
        </form>

        <%
            if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
        %>

        <form action="userManagement" method="get">
            <input class="btn btn-primary  col-md-9" type="submit" value="User Management"/>
        </form>

        <%
            }
        %>

        <form action="loginPage">
            <input class="btn btn-primary  col-md-9" type="submit" value="Return"/>
        </form>
    </h1>
</div>
</body>
</html>
