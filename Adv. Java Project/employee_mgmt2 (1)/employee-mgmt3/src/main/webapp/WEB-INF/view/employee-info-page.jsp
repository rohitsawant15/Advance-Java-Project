<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee management system</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!--<link rel="stylesheet" type="text/css " href="/project_name/URLToReachResourcesFolder/css/my-style-sheet.css"> -->
</head>
<body>
<jsp:include page="headerEmployee.jsp" />
   		
   		<div class="container p-6" style="margin-left:20%;margin-top:4%;position:absolute; align-items: center;justify-content: center; display:inline;">

		<div class="row">
			<div class="col-md-8" style="border-color: red;">
				<div class="card paint-card">
					<div class="card-body">
						<h1><span style="color:blue;">Name</span>      :<c:out value = "${employee.fname}"/> &nbsp;<c:out value = "${employee.lname}"/></h1><br>
				     	 <h1><span style="color: blue;" >Email</span>    : ${ employee.getEmail() } </h1><br>			 
				     	 <h1><span style="color: blue;">Password</span> : ${ employee.getPassword() } </h1><br>
				     	 <h1><span style="color: blue;">Role</span>     : ${ employee.getRole() } </h1><br>
					</div>
				</div>
			</div>
		</div>
	</div>
   
   
   

<jsp:include page="footer.jsp" />
</body>
</html>