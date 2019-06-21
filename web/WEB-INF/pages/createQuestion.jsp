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
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1>Create Question</h1>
        <form class="form-horizontal" action="createQuestion" method="post">
            <div class="form-group">
                <label class="col-md-3"> Subject </label>
                <input class="col-md-3" type="text" name="questionText"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Answer1 </label>
                <input class="col-md-3" type="text" name="answer1"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Answer2 </label>
                <input class="col-md-3" type="text" name="answer2"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Answer3 </label>
                <input class="col-md-3" type="text" name="answer3"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Answer4 </label>
                <input class="col-md-3" type="text" name="answer4"/>
                <br>
            </div>

            <div class="form-group">
                <label class="col-md-3"> Which answer is correct?</label>
                <select class="col-md-3" name="correction">
                    <option value="0">Answer1</option>
                    <option value="1">Answer2</option>
                    <option value="2">Answer3</option>
                    <option value="3">Answer4</option>
                </select>
                <br>
            </div>
            <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId"/>">
            <input class="btn btn-primary" type="submit" value="Submit">
        </form>
        <form action="index">
            <input class="btn btn-secondary" type="submit" value="Return"/>
        </form>
    </div>
</div>

</body>
</html>
