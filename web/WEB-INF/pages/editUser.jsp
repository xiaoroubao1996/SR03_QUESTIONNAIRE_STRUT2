<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="Model.Constant" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/17
  Time: 4:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:useBean id="user" class="Model.User" scope="request"></jsp:useBean>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<div>Edit User</div>
<form action="/action/editUser" method="post">
    <label> First name </label>
    <input type="hidden" id="id" name="User id" value="<s:property value="user.id"/>"/>
    <input type="text" id="frname" name="User first name" value="<s:property value="user.firstName"/>"/>
    <br>
    <label> Last name </label>
    <input type="text" id="laname" name="User last name" value="<s:property value="user.lastName"/>"/>
    <br>
    <label>Email</label>
    <input type="email" id="email" name="User email" value="<s:property value="user.email"/>"/>
    <br>
    <label> Password </label>
    <input type="password" id="psw" name="User password" value="<s:property value="user.password"/>"/>
    <br>
    <label> Company </label>
    <input type="text" id="cp" name="User company" value="<s:property value="user.company"/>"/>
    <br>
    <label> Telephone </label>
    <input type="number" id="tel" name="User telephone" value="<s:property value="user.telephone"/>"/>
    <br>

    <s:set name="user" value="user"/>
    <input type="radio" id="typeChoice1" name="User type" value="ADMIN" <s:if test="%{#user.type == @Model.Constant$USERTYPE@ADMIN}">Checked</s:if>>
    <label for="typeChoice1">Administrator</label>

    <input type="radio" id="typeChoice2" name="User type" value="TRAINEE" <s:if test="%{#user.type == @Model.Constant$USERTYPE@TRAINNEE}">Checked</s:if>>
    <label for="typeChoice2">Trainee</label>
    </br>

    <input type="radio" id="activeChoice1" name="User status" value="ACTIVE" <s:if test="%{#user.status == @Model.Constant$STATUS@ACTIVE}">Checked</s:if>>
    <label for="activeChoice1">Active</label>

    <input type="radio" id="activeChoice2" name="User status" value="INACTIVE"<s:if test="%{#user.status == @Model.Constant$STATUS@INACTIVE}">Checked</s:if>>
    <label for="typeChoice2">Inactive</label>

    <br>
    <input type="submit" value="Submit">
</form>
<form action="/index">
    <input type="submit" value="Return"/>
</form>
</body>
</html>
