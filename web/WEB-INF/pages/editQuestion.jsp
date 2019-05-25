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
    <title>Edit question</title>
</head>
<body>
<div>Edit Question</div>
<form action="editQuestion" method="post">
    <label> Subject </label>
    <input type="text" name="questionText" value="<s:property value="questionText"/>"/>
    <br>
    <label> Answer1 </label>
    <input type="text" name="answer1" value="<s:property value="answer1"/>"/>
    <br>
    <label> Answer2 </label>
    <input type="text" name="answer2" value="<s:property value="answer2"/>"/>
    <br>
    <label> Answer3 </label>
    <input type="text" name="answer3" value="<s:property value="answer3"/>"/>
    <br>
    <label> Answer4 </label>
    <input type="text" name="answer4" value="<s:property value="answer4"/>"/>
    <br>
    <label> Which answer is correct?</label>
    <select name="correction" >
        <option value="0" <s:if test='%{correction=="0"}'>selected="selected"</s:if>>Answer1</option>
        <option value="1" <s:if test='%{correction=="1"}'>selected="selected"</s:if>>Answer2</option>
        <option value="2" <s:if test='%{correction=="2"}'>selected="selected"</s:if>>Answer3</option>
        <option value="3" <s:if test='%{correction=="3"}'>selected="selected"</s:if>>Answer4</option>
    </select>
    <br>
    <input type="hidden" name="questionId" value="<s:property value="questionId"/>">
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
    <input type="submit" value="Submit">
</form>
<form action="displayQuestionList">
    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
    <input type="submit" value="Return"/>
</form>
</body>
</html>
