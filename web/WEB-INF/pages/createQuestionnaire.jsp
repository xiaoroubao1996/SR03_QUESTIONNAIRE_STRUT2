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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<form action="createQuestionnaire" method="post">
    <label> Subject Of Questionnaire </label>
    <input type="text" name="subject"/>
    <br>
    <input type="submit" value="Submit">
</form>

<form action="index">
    <input type="submit" value="Return"/>
</form>


</body>
</html>