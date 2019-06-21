<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.User" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="Model.Constant" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/17
  Time: 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <%@include file="./head.jsp"%>
</head>
<body>
<%@include file="./title.jsp"%>


<div class="container panel panel-default col-md-6">
    <div class="panel-body">
        <h1>User List</h1>
        <form class="form-horizontal" action="displayUserList.action" method="get">
            <div class="form-group">
                <input class="form-control col-md-5"  style="display:inline;" name="searchContent" value="<s:property value="searchContent"/>">
                <input type="hidden" name="currentPage" value="1">
                <input class="btn btn-primary" type="submit" value="Search user"/>
            </div>
        </form>

        <div>
            <table class="table">
                <tr>
                    <td> User Id</td>
                    <td> Email</td>
                    <td> First name</td>
                    <td> Last name</td>
                    <td> Company</td>
                    <td> Telephone</td>
                    <td> status</td>
                    <td> Type</td>
                    <td> Edit</td>
                </tr>

                <tbody>
                <s:iterator  id="user" value="userList">
                    <tr <s:if test="%{#user.status == @Model.Constant$STATUS@INACTIVE}">class="alert-danger"</s:if>>
                        <td><s:property value="id"/></td>
                        <td><s:property value="email"/></td>
                        <td><s:property value="firstName"/></td>
                        <td><s:property value="lastName"/></td>
                        <td><s:property value="company"/></td>
                        <td><s:property value="telephone"/></td>
                        <td><s:property value="status"/></td>
                        <td><s:property value="type"/></td>
                        <td>
                            <form action="displayEditUser" method="get">
                                <input type="hidden" name="userId" value="<s:property value="id" />">
                                <input class="btn btn-primary btn-xs" type="submit" value="Edit"/>
                            </form>
                        </td>
                    </tr>
                </s:iterator>
                </tbody>
            </table>
        </div>

        <div class="btn-group">
            <div>&laquo;</div>
            <s:iterator begin="1" end="%{totalPage}" status="incr">
                <form  class="form-horizontal" action="displayUserList" method="get">
                    <input type="hidden" name="searchContent" value="<s:property value="searchContent"/>" />
                    <input type="hidden" name="currentPage" value="<s:property value="%{#incr.index+1}" />">
                    <input class="btn btn-link"  type="submit" value="<s:property value="%{#incr.index+1}" />"/>
                </form>
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
