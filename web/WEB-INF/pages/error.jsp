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
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>

<div class="container panel panel-default col-md-3">
    <div class="content">
        <h1 align="center" width="50%" class="alert alert-danger"><s:if test="%{error != null}"><s:property value="error"/></s:if><s:else>error!</s:else></h1>
    </div>
    <form action="loginError">
        <input class="btn btn-primary" type="submit" value="Return" />
    </form>
</div>




</body>
</html>
