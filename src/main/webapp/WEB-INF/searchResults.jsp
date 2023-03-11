<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Search Results</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Fugaz+One&family=Nunito:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap"
      rel="stylesheet"
    />
    <!--  -->
  </head>
  <body>
    <div
      class="d-flex justify-content-between align-items-baseline"
      id="header-row"
    >
      <h1>Search Results: <c:out value="${searchTerm}"></c:out></h1>
      <a href="/dashboard" class="btn btn-warning">Go back to home</a>
    </div>
    <hr class="mb-4" />
    <div class="card p-4 mb-3" id="table-card">
      <table class="table" id="directory">
        <thead>
          <tr id="header-row">
            <th scope="col">Name</th>
            <th scope="col">Rating</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <c:forEach var="song" items="${songResults}">
          <tr>
            <td>
              <a href="/song/view"><c:out value="${song.title}"></c:out></a>
            </td>
            <td><c:out value="${song.rating}"></c:out></td>
            <td>
              <a href="#" class="btn btn-warning me-0">Delete</a>
            </td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
