<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <!--  <img src="<c:url value = "/project_name/URLToReachImagesFolder/xyz.png"/>" height="50" width="50"> -->
  <img alt="fake employee photo" src="/project_name/URLToReachImagesFolder/xyz.png" height="50" width="50">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" onclick="home()">Employee Management App<span class="sr-only">(current)</span></a>
      </li>
    </ul>
  </div>
</nav>