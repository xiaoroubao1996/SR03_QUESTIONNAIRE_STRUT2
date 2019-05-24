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
</head>
<body>

<form action="displayQuestionnaireList" method="post">
    <input type="submit" value="Questionnaire list"/>
</form>
<form action="displayResultList" method="post">
    <input type="submit" value="Result list"/>
</form>

<%
    if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
%>

<form action="userManagement" method="get">
    <input type="submit" value="User Management"/>
</form>



<%
    }
%>

</body>
</html>
