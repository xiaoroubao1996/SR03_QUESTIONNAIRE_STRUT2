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
</head>
<body>
<div>Questionnaire List</div>

<%
    if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
%>
<form action="createQuestionnairePage" method="post">
    <label> Create Questionnaire </label>
    <input type="submit" value="Create">
</form>
<%
    }
%>

<form action="displayQuestionnaireList" method="get">
        <input name="searchContent" value="<s:property value="searchContent"/>">
        <input type="hidden" name="currentPage" value="1">
        <input type="submit" value="Search questionnaire"/>
</form>


<table>

    <tr>
        <td>
            Questionnaire Id
        </td>
        <td>
            Subject
        </td>
        <%
            if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
        %>
        <td>
            Status
        </td>
        <%
            }
        %>
    </tr>

    <s:iterator value="questionnaireList">

        <tr>
            <td>
                <s:property value="id"/>
            </td>
            <td>
                <s:property value="subject"/>
            </td>
            <%
                if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
            %>
            <td>
                <s:property value="status"/>
            </td>
            <%
                }
            %>
            <td>
                <form action="displayQuestionnaire" method="post">
                    <input type="hidden" name="questionnaireId" value="${id}"/>
                    <input type="submit" value="Enter"/>
                </form>
            </td>
            <td>
                <%
                    if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
                %>
                <form action="displayEditQuestionnaire" method="post">
                    <input type="hidden" name="questionnaireId" value="${id}"/>
                    <input type="submit" value="Edit">
                </form>
                <%
                    }
                %>
            </td>
            <td>
                <%
                    if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
                %>
                <form action="displayQuestionList" method="post">
                    <input type="hidden" name="questionnaireId" value="${id}"/>
                    <input type="submit" value="Manage questions">
                </form>
                <%
                    }
                %>
            </td>
        </tr>
    </s:iterator>
</table>

<table>
    <tr>
        <s:iterator begin="1" end="%{totalPage}" status="incr">
            <td>
                <form action="displayQuestionnaireList" method="get">
                    <input type="hidden" name="searchContent" value="<s:property value="searchContent"/>">
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
