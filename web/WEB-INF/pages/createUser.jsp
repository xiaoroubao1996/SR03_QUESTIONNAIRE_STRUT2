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
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>

<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1 class="col-md-3">Create User</h1>
        <form class="form-horizontal" action="createUser" method="post">
            <div class="form-group">
                <label class="col-md-3"> First name </label>
                <input class="col-md-3" type="text" id="frname" name="user.firstName"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Last name </label>
                <input class="col-md-3" type="text" id="laname" name="user.lastName"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3">Email</label>
                <input class="col-md-3" type="email" id="email" name="user.email"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Password </label>
                <input class="col-md-3" type="password" id="psw" name="user.password"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Company </label>
                <input class="col-md-3" type="text" id="cp" name="user.company"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Telephone </label>
                <input class="col-md-3" type="number" id="tel" name="user.telephone"/>
                <br>
            </div>

            <div class="form-group class="col-md-3"">
                <input type="radio" id="typeChoice1" name="user.type" value="ADMIN">
                <label for="typeChoice1">Administrator</label>

                <input type="radio" id="typeChoice2" name="user.type" value="TRAINEE">
                <label for="typeChoice2">Trainee</label>
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