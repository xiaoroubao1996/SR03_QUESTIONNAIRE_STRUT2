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
    <title>Result detail</title>
</head>
<body>
<div><s:property value="questionText"/></div>

<br>
<br>

<s:set name="correction" value="correction"/>
<s:set name="choice" value="choice"/>
<div
        <s:if test="%{#correction==0&&#choice==0}">style='color: #7CFC00;'</s:if>
        <s:if test="%{#correction==0&&#choice!=0}">style='color: #00FFFF;'</s:if>
        <s:if test="%{#correction!=0&&#choice==0}">style='color: #FF0000;'</s:if>
>
    <s:property value="answerText1"/></div>

<div
        <s:if test="%{#correction==1&&#choice==1}">style='color: #7CFC00;'</s:if>
        <s:if test="%{#correction==1&&#choice!=1}">style='color: #00FFFF;'</s:if>
        <s:if test="%{#correction!=1&&#choice==1}">style='color: #FF0000;'</s:if>
>
    <s:property value="answerText2"/></div>

<div
        <s:if test="%{#correction==2&&#choice==2}">style='color: #7CFC00;'</s:if>
        <s:if test="%{#correction==2&&#choice!=2}">style='color: #00FFFF;'</s:if>
        <s:if test="%{#correction!=2&&#choice==2}">style='color: #FF0000;'</s:if>
>
    <s:property value="answerText3"/></div>

<div
        <s:if test="%{#correction==3&&#choice==3}">style='color: #7CFC00;'</s:if>
        <s:if test="%{#correction==3&&#choice!=3}">style='color: #00FFFF;'</s:if>
        <s:if test="%{#correction!=3&&#choice==3}">style='color: #FF0000;'</s:if>
>
    <s:property value="answerText4"/></div>

<br>


<s:set name="lastQuestion" value="lastQuestion"/>
<s:if test="%{#lastQuestion==false}">
    <form action="displayResultDetail" method="post">
        <input type="hidden" name="resultId" value="<s:property value="resultId"/>"/>
        <input type="hidden" name="index" value="<s:property value="index"/>"/>
        <input type="submit" value="Next"/>
    </form>
</s:if>

<form action="index" method="post">
    <input type="submit" value="Return"/>
</form>


</body>
</html>
