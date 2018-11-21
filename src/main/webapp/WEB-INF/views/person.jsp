<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="person">
    <label for="loginId">Login:</label>
    <form:input type="text" path="login" id="loginId"/>

    <br/><br/>

    <label for="passwordId">Password:</label>
    <form:input type="password" path="password" id="passwordId"/>

    <br/><br/>

    <label for="emailId">Email:</label>
    <form:input type="email" path="email" id="emailId"/>

    <br/><br/>

    <input type="submit" value="Save">
</form:form>
</body>
</html>
