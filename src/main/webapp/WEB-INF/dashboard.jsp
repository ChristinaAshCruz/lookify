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
    <title>Dashboard</title>
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
    <h1 class="mb-2">Your Lookify Dashboard</h1>
    <hr class="mb-4" />
    <div class="row">
      <div class="col-5">
        <a href="/song/new" class="btn btn-warning col-4 me-2">Add New Song</a>
        <a href="/songs/top-ten" class="btn btn-warning col-4">Top Songs</a>
      </div>
      <div class="col-7">
        <form action="/search" method="POST">
          <div class="input-group mb-3">
            <input
              type="text"
              class="form-control"
              placeholder="Search by artist..."
              aria-describedby="button-addon2"
              name="artist"
            />
            <button
              class="btn btn-outline-secondary"
              type="submit"
              id="button-addon2"
            >
              Search
            </button>
          </div>
        </form>
      </div>
    </div>
    <div class="card p-4 mb-3" id="table-card">
      <table class="table" id="directory">
        <thead>
          <tr id="header-row">
            <th scope="col">Name</th>
            <th scope="col">Rating</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tr>
            <c:forEach var="song" items="${allSongs}">
                <td><a href="/song/${song.id}/view"><c:out value="${song.title}" /></a></td>
                <td><c:out value="${song.rating}" /></td>
                <td>
                    <a href="/song/${song.id}/delete" class="btn btn-warning me-0">Delete</a>
                </td>
            </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
