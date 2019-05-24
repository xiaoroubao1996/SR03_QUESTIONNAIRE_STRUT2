<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/2
  Time: 下午12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Result list</title>
</head>
<body>
<table>

    <tr>
        <td>
            Result Id
        </td>
        <td>
            Trainee
        </td>
        <td>
            Date creation
        </td>
        <td>
            Score
        </td>
    </tr>
    <s:iterator value="resultList">
        <% %>
        <tr>
            <td>
                <s:property value="id"/>
            </td>
            <td>
                <s:property value="trainee"/>
            </td>
            <td>
                <s:property value="dateCreation"/>
            </td>
            <td>
                <s:property value="score"/>
            </td>
            <td>
                <form action="displayResultDetail" method="get">
                    <input type="hidden" name="resultId" value="${id}"/>
                    <input type="submit" value="Detail"/>
                </form>
            </td>

        </tr>
    </s:iterator>
</table>
<table>
    <tr>
        <s:iterator begin="1" end="%{totalPage}" status="incr">
            <td>
                <form action="displayResultList" method="get">
                    <input type="hidden" name="currentPage" value="<s:property value="%{#incr.index+1}" />">
                    <input type="submit" value="<s:property value="%{#incr.index+1}" />"/>
                </form>
            </td>
        </s:iterator>
    </tr>
</table>
<form action="index">
    <input type="submit" value="Return"/>
</form>
</body>
</html>
