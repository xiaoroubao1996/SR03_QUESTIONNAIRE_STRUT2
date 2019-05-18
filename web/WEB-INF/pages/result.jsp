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
</head>
<body>
<div>Subject: <s:property value="subject"/></div>
<br>
<div>Score: <s:property value="score"/></div>
<br>
<form action="/index" method="post">
    <input type="submit" value="Return index"/>
</form>
</body>
</html>
