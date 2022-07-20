<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee management system</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- <link rel="stylesheet" type="text/css " href="/project_name/URLToReachResourcesFolder/css/my-style-sheet.css">  -->
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
	
	<div class="col-md-4 text-right float-end">
	<form action="showAddEmployeePage">
	<input type="submit" style=" margin-top:10px;margin-bottom:10px" value="ADD EMPLOYEE" class="btn btn-outline-success">
	</form>
	</div>
	
<!--  	<div class="col-md-4 float-start">
	<form action="searchEmployee" method="get">
	<input type="text" class="form-control" name="q" style=" margin-top:10px;margin-bottom:10px" placeholder="Search here..."/>
	<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	</div> -->
	
		<div>
		  <form action="searchEmployee" method="get" class="d-flex ms-auto order-5">
          <input class="form-control me-2" name="q" style=" margin-top:10px;margin-bottom:10px" type="search"  placeholder="Search here..." aria-label="Search">
          <button class="btn btn-outline-success" style=" margin-top:10px;margin-bottom:10px" type="submit">Search</button>
          </form>
		</div>
	
	<br>
		<table border="1" class="table table-striped">
			<thead>
				<tr>
					<td>id</td>
					<td>fname</td>
					<td>lname</td>
					<td>email</td>
					<td>role</td>
				</tr>
			</thead>

			<c:forEach var="employee" items="${employees}">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.fname}</td>
					<td>${employee.lname}</td>
					<td>${employee.email}</td>
					<td>${employee.role}</td>
					<td><a href="/project_name/updateEmployee?userId=${employee.id}" class="btn btn-sm btn-primary">Update</a></td>
					<td><a href="/project_name/deleteEmployee?userId=${employee.id}" class="btn btn-sm btn-danger"
					 onclick="if(!(confirm('Are yousure want to delete this employee ?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<img alt="fake employee photo" src="/project_name/URLToReachImagesFolder/emp1.png">
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>