<%@ page import="Model.Constant" %>
<%@ page import="org.json.JSONObject" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/2
  Time: 下午12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        Questionnaire
    </title>
</head>
<body>
<%
    if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
%>
<form action="createQuestionPage" method="post">
    <label> Create New Question </label>
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
    <input type="submit" value="Create">
</form>
<%
    }
%>

<form action="displayQuestionnaire" method="post">
    <s:property value="questionText"/>
    <br>
    <br>
    <input type="radio" id="choice1" name="choice" value="0">
    <label for="choice1"><s:property value="answerText1"/></label>

    <br>
    <input type="radio" id="choice2" name="choice" value="1">
    <label for="choice2"><s:property value="answerText2"/></label>

    <br>
    <input type="radio" id="choice3" name="choice" value="2">
    <label for="choice3"><s:property value="answerText3"/></label>

    <br>
    <input type="radio" id="choice4" name="choice" value="3">
    <label for="choice4"><s:property value="answerText4"/></label>

    Score
    <input type="hidden" name="jsonString" value="<s:property value="jsonString"/>"/>
    <input type="hidden" name="index" value="<s:property value="index"/>"/>
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">

    <br>


    <input type="submit" value="Next"/>

</form>
<form action="index" method="post">
    <input type="submit" value="Abandon"/>
</form>
</body>
</html>
