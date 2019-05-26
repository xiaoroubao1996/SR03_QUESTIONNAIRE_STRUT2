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
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1 class="col-md-3">Edit User</h1>
        <form class="form-horizontal" action="editUser" method="post">
            <div class="form-group">
                <label class="col-md-3"> First name </label>
                <input type="hidden" id="id" name="user.id" value="<s:property value="user.id"/>"/>
                <input class="col-md-3" type="text" id="frname" name="user.firstName" value="<s:property value="user.firstName"/>"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Last name </label>
                <input class="col-md-3" type="text" id="laname" name="user.lastName" value="<s:property value="user.lastName"/>"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3">Email</label>
                <input class="col-md-3" type="email" id="email" name="user.email" value="<s:property value="user.email"/>"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Password </label>
                <input class="col-md-3" type="password" id="psw" name="user.password" value="<s:property value="user.password"/>"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Company </label>
                <input class="col-md-3" type="text" id="cp" name="user.company" value="<s:property value="user.company"/>"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Telephone </label>
                <input class="col-md-3" type="number" id="tel" name="user.telephone" value="<s:property value="user.telephone"/>"/>
                <br>
            </div>

            <div class="form-group col-md-3">
                <s:set name="user" value="user"/>
                <input type="radio" id="typeChoice1" name="user.type" value="ADMIN" <s:if test="%{#user.type == @Model.Constant$USERTYPE@ADMIN}">Checked</s:if>>
                <label for="typeChoice1">Administrator</label>

                <input type="radio" id="typeChoice2" name="user.type" value="TRAINEE" <s:if test="%{#user.type == @Model.Constant$USERTYPE@TRAINEE}">Checked</s:if>>
                <label for="typeChoice2">Trainee</label>
                </br>
            </div>

            <div class="form-group col-md-3">
                <input type="radio" id="activeChoice1" name="user.status" value="ACTIVE" <s:if test="%{#user.status == @Model.Constant$STATUS@ACTIVE}">Checked</s:if>>
                <label for="activeChoice1">Active</label>

                <input type="radio" id="activeChoice2" name="user.status" value="INACTIVE"<s:if test="%{#user.status == @Model.Constant$STATUS@INACTIVE}">Checked</s:if>>
                <label for="typeChoice2">Inactive</label>
            </div>
            <br>
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>
        <form action="index">
            <input class="btn btn-default" type="submit" value="Return"/>
        </form>
    </div>
</div>
</body>
</html>
