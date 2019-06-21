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
    <title>Questionnaire</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <%
            if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
        %>
        <form class="form-horizontal" action="createQuestionPage" method="post">
            <label> Create New Question </label>
            <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
            <input class="btn btn-primary" type="submit" value="Create">
        </form>
        <%
            }
        %>

        <form class="form-horizontal" action="displayQuestionnaire" method="post">
            <h1><s:property value="questionText"/></h1>
            <br>
            <br>
            <div class="form-group">
                <input class="col-md-1" type="radio" id="choice1" name="choice" value="0">
                <label class="col-md-3" for="choice1"><s:property value="answerText1"/></label>
                <br>
            </div>

            <div class="form-group">
                <input class="col-md-1" type="radio" id="choice2" name="choice" value="1">
                <label class="col-md-3" for="choice2"><s:property value="answerText2"/></label>
                <br>
            </div>

            <div class="form-group">
                <input class="col-md-1" type="radio" id="choice3" name="choice" value="2">
                <label  class="col-md-3" for="choice3"><s:property value="answerText3"/></label>
                <br>
            </div>

            <div class="form-group">
                <input class="col-md-1" type="radio" id="choice4" name="choice" value="3">
                <label class="col-md-3" for="choice4"><s:property value="answerText4"/></label>
            </div>
            <%--<h2>Score</h2>--%>
            <input type="hidden" name="jsonString" value="<s:property value="jsonString"/>"/>
            <input type="hidden" name="index" value="<s:property value="index"/>"/>
            <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
            <br>


            <input class="btn btn-primary" type="submit" value="Next"/>

        </form>
        <form action="displayQuestionnaireList" method="get">
            <input class="btn btn-secondary" type="submit" value="Abandon"/>
        </form>
    </div>
</div>

</body>
</html>
