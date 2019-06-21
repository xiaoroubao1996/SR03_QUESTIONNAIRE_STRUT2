<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/25
  Time: 下午5:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<h1 class="align-middle">Error</h1>
<form action="displayQuestionList" method="get">
    <input type="hidden" name="currentPage" value="1"/>
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
    <input class="btn btn-primary"type="submit" value="Return"/>
</form>
</body>
</html>
