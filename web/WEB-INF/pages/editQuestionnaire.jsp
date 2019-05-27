<%@ taglib prefix="s" uri="/struts-tags" %>
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
<s:set name="questionnaire" value="questionnaire"/>
<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1>Edit Questionnaire</h1>
        <form class="form-horizontal" action="editQuestionnaire" method="post">
            <label> Subject Of Questionnaire </label>
            <input type="hidden" id="id" name="questionnaire.id" value="<s:property value="questionnaire.id"/>"/>
            <input class="form-control  col-md-3" type="text" name="questionnaire.subject" value="<s:property value="questionnaire.subject"/>"/>
            <br>
            <input type="radio" id="statusChoice1" name="questionnaire.status" value="ACTIVE" <s:if test="%{#questionnaire.status == @Model.Constant$STATUS@ACTIVE}">Checked</s:if>>
            <label for="statusChoice1">Active</label>

            <input type="radio" id="statusChoice2" name="questionnaire.status" value="INACTIVE" <s:if test="%{#questionnaire.status == @Model.Constant$STATUS@INACTIVE}">Checked</s:if>>
            <label for="statusChoice2">Inactive</label>
            <br>
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>

        <form action="displayQuestionnaireList">
            <input  class="btn btn-default" type="submit" value="Return"/>
        </form>
    </div>
</div>


</body>
</html>