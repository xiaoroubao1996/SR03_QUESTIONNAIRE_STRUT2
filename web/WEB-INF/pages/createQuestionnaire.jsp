<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/27
  Time: 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create questionnaire</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1>Create Questionnaire</h1>
        <form class="form-horizontal" action="createQuestionnaire" method="post">
            <div class="form-group">
                <label> Subject Of Questionnaire </label>
                <input type="text" name="subject"/>
                <br>
            </div>
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>

        <form action="displayQuestionnaireList">
            <input class="btn btn-secondary" type="submit" value="Return"/>
        </form>
    </div>
</div>


</body>
</html>