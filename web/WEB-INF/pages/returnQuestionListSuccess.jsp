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
    <title>Success</title>
</head>
<body>
<div>Success</div>
<form action="displayQuestionList" method="get">
    <input type="hidden" name="currentPage" value="1"/>
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
    <input type="submit" value="Return"/>
</form>
</body>
</html>
