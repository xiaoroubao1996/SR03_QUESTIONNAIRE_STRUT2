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
</head>
<body>

<form action="searchUser" method="get">
    <input name="searchContent">
    <input type="submit" value="Search user"/>
</form>


<table>
    <tr>
        <td> User Id </td>
        <td> Email </td>
        <td> First name </td>
        <td> Last name </td>
        <td> Company </td>
        <td> Telephone </td>
        <td> status </td>
        <td> Type </td>
        <td> Edit </td>
    </tr>


<s:iterator value="userList" >
        <tr>
            <td><s:property value="id" /></td>
            <td><s:property value="email" /></td>
            <td><s:property value="firstName" /></td>
            <td><s:property value="lastName" /></td>
            <td><s:property value="company" /></td>
            <td><s:property value="telephone" /></td>
            <td><s:property value="status" /></td>
            <td><s:property value="type" /></td>
            <td>
                <form action="displayEditUser" method="get">
                    <input type="hidden" name="userId" value="<s:property value="id" />">
                    <input type="submit" value="Edit"/>
                </form>
            </td>
        </tr>
    </s:iterator>

</body>
</html>
