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
                <s:property value="id" />
            </td>
            <td>
                <s:property value="subject" />
            </td>
            <%
                if (session.getAttribute("type") == Constant.USERTYPE.ADMIN) {
            %>
            <td>
                <s:property value="status" />
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

        </tr>
    </s:iterator>
</table>

<form action="index">
    <input type="submit" value="Return"/>
</form>

</body>
</html>
