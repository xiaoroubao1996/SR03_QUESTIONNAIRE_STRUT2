<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/3/22
  Time: 上午11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create user</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div>Create User</div>
<form action="createUser" method="post">
    <label> First name </label>
    <input type="text" id="frname" name="user.firstName"/>
    <br>
    <label> Last name </label>
    <input type="text" id="laname" name="user.lastName"/>
    <br>
    <label>Email</label>
    <input type="email" id="email" name="user.email"/>
    <br>
    <label> Password </label>
    <input type="password" id="psw" name="user.password"/>
    <br>
    <label> Company </label>
    <input type="text" id="cp" name="user.company"/>
    <br>
    <label> Telephone </label>
    <input type="number" id="tel" name="user.telephone"/>
    <br>
    <input type="radio" id="typeChoice1" name="user.type" value="ADMIN">
    <label for="typeChoice1">Administrator</label>

    <input type="radio" id="typeChoice2" name="user.type" value="TRAINEE">
    <label for="typeChoice2">Trainee</label>

    <br>
    <input type="submit" value="Submit">
</form>
<form action="index">
    <input type="submit" value="Return"/>
</form>
</body>
</html>