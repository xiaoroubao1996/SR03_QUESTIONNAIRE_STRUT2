<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/27
  Time: 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="questionnaire" class="Model.Questionnaire" scope="request"></jsp:useBean>
<html>
<head>
    <title>Create questionnaire</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<form action="editQuestionnaire" method="post">
    <label> Subject Of Questionnaire </label>
    <input type="hidden" id="id" name="questionnaire.id" value="<s:property value="questionnaire.id"/>"/>
    <input type="text" name="questionnaire.subject" value="<s:property value="questionnaire.subject"/>"/>
    <br>
    <input type="radio" id="statusChoice1" name="questionnaire.status" value="ACTIVE" <s:if test="%{#questionnaire.status == @Model.Constant$STATUS@ACTIVE}">Checked</s:if>>
    <label for="statusChoice1">Active</label>

    <input type="radio" id="statusChoice2" name="questionnaire.status" value="INACTIVE" <s:if test="%{#questionnaire.status == @Model.Constant$STATUS@INACTIVE}">Checked</s:if>>
    <label for="statusChoice2">Inactive</label>
    <br>
    <input type="submit" value="Submit">
</form>

<form action="index">
    <input type="submit" value="Return"/>
</form>


</body>
</html>