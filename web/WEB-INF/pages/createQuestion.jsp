<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/3
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create question</title>
</head>
<body>
<div>Create Question</div>
<form action="createQuestion" method="post">
    <label> Subject </label>
    <input type="text" name="questionText"/>
    <br>
    <label> Answer1 </label>
    <input type="text" name="answer1"/>
    <br>
    <label> Answer2 </label>
    <input type="text" name="answer2"/>
    <br>
    <label> Answer3 </label>
    <input type="text" name="answer3"/>
    <br>
    <label> Answer4 </label>
    <input type="text" name="answer4"/>
    <br>
    <label> Which answer is correct?</label>
    <select name="correction">
        <option value="0">Answer1</option>
        <option value="1">Answer2</option>
        <option value="2">Answer3</option>
        <option value="3">Answer4</option>
    </select>
    <br>
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
    <input type="submit" value="Submit">
</form>
<form action="index">
    <input type="submit" value="Return"/>
</form>
</body>
</html>
