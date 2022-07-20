<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css " href="/project_name/URLToReachResourcesFolder/css/add-employee.css">

</head>
<body>
 <div class="container">
  <h1>Employee Add Form:</h1>
  <div class="card">
   <div class="card-body">
    <form:form action="save-employee" name="userform" modelAttribute="employee" method="POST">
	<form:hidden path="id"/>
     
     <div class="form-group row">
      <label for="firstName" class="col-sm-2 col-form-label">First
       Name</label>
      <div class="col-sm-7">
        <form:input type="text" path="fname" class="form-control" required="required" 
        placeholder="Enter first name"/>
      </div>
     </div>

     <div class="form-group row">
      <label for="lastName" class="col-sm-2 col-form-label">Last
       Name</label>
      <div class="col-sm-7">
         <form:input path="lname" type="text" class="form-control"  required="required" 
        placeholder="Enter last name"/>
      </div>
     </div>

     <div class=" form-group row">
      <label for="lastName" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-7">
        <form:input path="email" type="email" class="form-control"  required="required"      
        placeholder="Enter email"/>
      </div>
     </div>

     <div class="form-group row">
      <label for="lastName" class="col-sm-2 col-form-label">Password</label>
      <div class="col-sm-7">
         <form:input path="password" type="password" class="form-control" required="required" minlength="6" maxlength="15"
        placeholder="Enter Password"/>
      </div>
     </div>

     <div class="form-group row">
      <label for="lastName" class="col-sm-2 col-form-label">Role</label>
      <div class="col-sm-7">
        <form:input path="role" type="text" class="form-control" name="role" id="role" required="required"         
        placeholder="Enter Role"/>
      </div>
     </div>

     <button type="submit" class="btn btn-primary" onclick="login()">Submit</button>
     </form:form>
   </div>
  </div>
 </div>
</body>
</html>