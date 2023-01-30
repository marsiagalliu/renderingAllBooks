<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>All Books</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Title</th>
        <th scope="col">Language</th>
        <th scope="col"># Pages</th>
    </tr>
    </thead>
<tbody>
</tbody>
            <c:forEach var="books" items="${books}">
        <tr>
           <td> <c:out value="${books.id}"></c:out> </td>
           <td> <a href="/books/${books.id}"><c:out value="${books.title}"></c:out> </a> </td>
           <td> <c:out value="${books.language}"></c:out> </td>
           <td> <c:out value="${books.numberOfPages}"></c:out> </td>
        </tr>
            </c:forEach>
</table>
</body>
</html>