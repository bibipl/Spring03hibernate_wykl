<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: bibipl
  Date: 20.11.18
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Person DETAILS</title>
</head>
<body>
<form:form method="post" modelAttribute="person">

    <label for="loginId">Login:</label>
    <form:input type="text" path="login" id="loginId"/>
    <br/><br/>

    <label for="passwordId">Password:</label>
    <form:input type="password" path="password" id="passwordId"/><br>

    <label for="emailId">Email:</label>
    <form:input type="text" path="email" id="emailId"/><br>

   <label for="firstNameId">First Name:</label>
    <form:input type="text" path="firstName" id="firstNameId"/><br>

    <label for="lastNameId">Last Name:</label>
    <form:input type="text" path="lastName" id="lastNameId"/><br>

    <label for="maleId">Male:</label>
    Male: <form:radiobutton path="gender" value="M" id="maleId"/>
    <label for="femaleId">Male:</label>
    Female: <form:radiobutton path="gender" value="F" id="femaleId"/><br>

    <label for="countryId">Country:</label>
    <form:select path="country" items="${countries}" id="countryId" /><br>
    <br/><br/>

    <label for="notesId">Notes:</label>
    <form:textarea path="notes" rows="3" cols="20" id="notesId"/>

    <br/><br/>

    <label for="notesId">Mailing list:</label>
    <form:checkbox path="mailingList"/>

    <br/><br/>

    <label for="skillId">Skills:</label>
    <form:select path="skills" items="${skills}" id="skillId" multiple="true"/>

    <br/><br/>

    <label for="hobbiesId">Hobbies:</label>
    <form:checkboxes items="${hobbies}" path="hobbies" id="hobbiesId"/><br>

    <input type="submit" value="Save">
</form:form>

</body>
</html>
