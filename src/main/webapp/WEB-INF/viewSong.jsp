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
    <title>View Song</title>
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
      <h1>Song Details</h1>
      <a href="/dashboard" class="btn btn-warning">Go back to home</a>
    </div>
    <hr class="mb-4" />
    <div class="card p-4 mb-3" id="sub-page-card">
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Song name:</h3>
        <h5 class="col-6"><c:out value="${thisSong.title}"></c:out></h5>
      </div>
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Artist:</h3>
        <h5 class="col-6"><c:out value="${thisSong.artist}"></c:out></h5>
      </div>
      <div class="row g-0 align-items-end mb-3">
        <h3 class="col-3">Rating:</h3>
        <h5 class="col-6"><c:out value="${thisSong.rating}"></c:out></h5>
      </div>
    </div>
  </body>
</html>
