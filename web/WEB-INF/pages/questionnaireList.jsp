<%@ page import="Model.Constant" %>
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
    <title>Questionnaire list</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1>Questionnaire List</h1>

        <%
            if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
        %>
        <form class="form-horizontal" action="createQuestionnairePage" method="get">
            <label> Create Questionnaire </label>
            <input class="btn btn-primary" type="submit" value="Create">
        </form>
        <%
            }
        %>

        <form class="form-horizontal" action="displayQuestionnaireList" method="get">
                <input class="form-control col-md-5"  style="display:inline;" name="searchContent" value="<s:property value="searchContent"/>">
                <input type="hidden" name="currentPage" value="1">
                <input class="btn btn-primary" type="submit" value="Search questionnaire"/>
        </form>


        <table  class="table">
            <tr>
                <td>Questionnaire Id</td>
                <td>Subject</td>
                <%
                    if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
                %>
                <td>Status</td>
                <%
                    }
                %>
            </tr>

            <s:iterator id="questionnaire" value="questionnaireList">

                <tr <s:if test="%{#questionnaire.status == @Model.Constant$STATUS@INACTIVE}">class="alert-danger"</s:if>>
                    <td><s:property value="id"/></td>
                    <td><s:property value="subject"/></td>
                    <%
                        if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
                    %>
                    <td><s:property value="status"/></td>
                    <%
                        }
                    %>
                    <td>
                        <form action="displayQuestionnaire" method="post">
                            <input type="hidden" name="questionnaireId" value="${id}"/>
                            <input  class="btn btn-primary btn-xs" type="submit" value="Enter"/>
                        </form>
                    </td>
                    <td>
                        <%
                            if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
                        %>
                        <form action="displayEditQuestionnaire" method="post">
                            <input type="hidden" name="questionnaireId" value="${id}"/>
                            <input  class="btn btn-primary btn-xs" type="submit" value="Edit">
                        </form>
                        <%
                            }
                        %>
                    </td>
                    <td>
                        <%
                            if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
                        %>
                        <form action="displayQuestionList" method="get">
                            <input type="hidden" name="currentPage" value="1"/>
                            <input type="hidden" name="questionnaireId" value="${id}"/>
                            <input  class="btn btn-primary btn-xs" type="submit" value="Manage questions">
                        </form>
                        <%
                            }
                        %>
                    </td>
                </tr>
            </s:iterator>
        </table>

        <div class="btn-group">
            <div>&laquo;</div>
                <s:iterator begin="1" end="%{totalPage}" status="incr">
                    <td>
                        <form action="displayQuestionnaireList" method="get">
                            <input type="hidden" name="searchContent" value="<s:property value="searchContent"/>">
                            <input type="hidden" name="currentPage" value="<s:property value="%{#incr.index+1}" />">
                            <input class="btn btn-link" type="submit" value="<s:property value="%{#incr.index+1}" />"/>
                        </form>
                    </td>
                </s:iterator>
            <div>&raquo;</div>
        </div>
        <form action="index">
            <input class="btn btn-primary" type="submit" value="Return"/>
        </form>
    </div>
</div>

</body>
</html>
