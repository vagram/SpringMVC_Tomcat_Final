<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: VagramsMac
  Date: 03.07.2022
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hi User</title>
</head>
<body style="accent-color: cornflowerblue"; bgcolor="#6495ed">
    <h2>HOME</h2>
    <p>What's up USER</p>
    <br>
    <h4>Dear Guest, Please enter TO DO list</h4>
    <form:form action="/todo/info" modelAttribute="thingsToDo">
        NameToDo:
        <br>
        <br>
        <form:radiobuttons path="nameToDo" items="${thingsToDo.nameToDoes}"/>
        <br>
        <br>
        ContextToDo: <form:input path="contextToDo"/>
        <br>
        <br>
        Priority: <form:select path="priority">
        <form:options items="${thingsToDo.priorities}"/>
    </form:select>
        <br><br>
        <input type="submit" value="Send">
    </form:form>

</body>
</html>
