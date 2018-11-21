<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script>
        function confirmDelete(id, title) {
            if (confirm("Czy na pewno usunąć książkę \"" + title + "\"")) {
                window.location.href = "/books/delete/" + id;
            }
        }
    </script>
</head>
<body>
    <table>
        <tr>
            <th>Title</th>
            <th>Rating</th>
            <th>Publisher</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.title}</td>
                <td>${book.rating}</td>
                <td>${book.publisher.name}</td>
                <td>${book.description}</td>
                <td>
                    <a href="#" onclick="confirmDelete(${book.id}, '${book.title}')">Delete</a>
                    <a href="/books/update/${book.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
