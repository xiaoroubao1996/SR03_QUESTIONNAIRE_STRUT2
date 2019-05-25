<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuchenyan
  Date: 2019/5/24
  Time: 下午12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Question</title>
</head>
<body>
<table>

    <tr>
        <td>
            Question Id
        </td>
        <td>
            Text
        </td>
        <td>
            Position
        </td>
        <td>
            Status
        </td>
    </tr>
    <s:iterator value="questionList">
        <tr>
            <td>
                <s:property value="id"/>
            </td>
            <td>
                <s:property value="text"/>
            </td>
            <td>
                <s:property value="position"/>
            </td>
            <td>
                <s:property value="status"/>
            </td>
            <td>
                <form action="displayEditQuestion" method="get">
                    <input type="hidden" name="questionId" value="${id}"/>
                    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId" />"/>
                    <input type="submit" value="Edit"/>
                </form>
            </td>
            <td>
                <form action="moveUpQuestion" method="get">
                    <input type="hidden" name="questionId" value="${id}"/>
                    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId" />"/>
                    <input type="submit" value="Move up"/>
                </form>
            </td>
            <td>
                <form action="moveDownQuestion" method="get">
                    <input type="hidden" name="questionId" value="${id}"/>
                    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId" />"/>
                    <input type="submit" value="Move down"/>
                </form>
            </td>

        </tr>
    </s:iterator>
</table>
<table>
    <tr>
        <s:iterator begin="1" end="%{totalPage}" status="incr">
            <td>
                <form action="displayQuestionList" method="get">
                    <input type="hidden" name="currentPage" value="<s:property value="%{#incr.index+1}" />">
                    <input type="hidden" name="questionnaireId" value="<s:property value="questionnaireId" />">
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
