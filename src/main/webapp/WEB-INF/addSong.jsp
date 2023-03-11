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
    <title>Add New Song</title>
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
      <h1>Add New Song</h1>
      <a href="/dashboard" class="btn btn-warning">Go back to home</a>
    </div>
    <hr class="mb-4" />
    <div class="card p-4 mb-3" id="sub-page-card">
      <form:form action="/song/new" method="POST" modelAttribute="newSong">
        <div class="mb-3 row">
          <div class="col-2">
            <form:label for="title" class="form-label" path="title"
              >Song Name:</form:label
            >
          </div>
          <div class="col-10">
            <form:input
              name="title"
              type="text"
              class="form-control"
              path="title"
            />
          </div>
          <form:errors path="title"></form:errors>
        </div>
        <div class="mb-3 row">
          <div class="col-2">
            <form:label for="artist" class="form-label" path="artist"
              >Artist:</form:label
            >
          </div>
          <div class="col-10">
            <input
              type="text"
              class="form-control"
              path="artist"
              name="artist"
            />
          </div>
          <form:errors path="artist"></form:errors>
        </div>
        <div class="mb-3 row">
          <div class="col-2">
            <form:label for="rating" class="form-label" path="rating"
              >Rating:</form:label
            >
          </div>
          <div class="col-10 mb-3">
            <form:input
              type="number"
              class="form-control"
              path="rating"
              min="0"
              max="10"
              name="rating"
            />
          </div>
          <form:errors path="rating"></form:errors>
        </div>
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
          <input
            type="submit"
            value="Submit"
            class="btn btn-warning col-2 me-md-2"
          />
        </div>
      </form:form>
    </div>
  </body>
</html>
