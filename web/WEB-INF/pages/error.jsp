<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/2
  Time: 下午2:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<div><s:if test="%{#error != null}"><s:property value="error"/></s:if><s:else>error</s:else></div>
<form action="loginError">
    <input type="submit" value="Return" />
</form>
</body>
</html>
