<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="book">
    <label for="titleId">Title:</label>
    <form:input type="text" path="title" id="titleId"/>

    <br/><br/>

    <label for="ratingId">Rating:</label>
    <form:input type="number" path="rating" id="ratingId"/>

    <br/><br/>

    <label for="descriptionId">Description:</label>
    <form:textarea path="description" rows="3" cols="20" id="descriptionId"/>

    <br/><br/>

    <label for="publisherId">Publisher:</label>
    <form:select path="publisher.id" items="${publishers}" itemLabel="name" itemValue="id" id="publisherId"/>

    <br/><br/>

    <label for="authorId">Author:</label>
    <form:select path="authors" items="${authors}" itemLabel="fullName" itemValue="id" id="authorId"/>

    <br/><br/>

    <input type="submit" value="Save">
</form:form>
</body>
</html>

