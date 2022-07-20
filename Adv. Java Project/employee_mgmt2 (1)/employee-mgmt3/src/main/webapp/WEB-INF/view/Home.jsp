<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">

</style>	
	
</head>
<body style="background-image: url('/project_name/URLToReachImagesFolder/BGImage.JPG');">
<jsp:include page="headerHome.jsp" />

<jsp:include page="footer.jsp" />
</body>
</html>



		
		
		<div class="container p" style="margin-left:20%;;margin-top:4%; position: absolute; align-items: center;justify-content: center; display:inline;">

		<div class="row">
			<div class="col-md-4" style="border-color: red;">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="/project_name/URLToReachImagesFolder/admin.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5"></p>
						<form action="loginAdmin1" method="get">
						<button type="submit" class="btn btn-outline-success">Admin's Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container p" style="margin-left:55%;margin-top:4%; position: absolute; align-items: center;justify-content: center; display:inline;">
<div class="row">
	
			<div class="col-md-4" style="border-color: red;">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="/project_name/URLToReachImagesFolder/emp.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5"></p>
						<form action="loginEmployee1" method="get">
						<button type="submit" class="btn btn-outline-primary">Employee's Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>