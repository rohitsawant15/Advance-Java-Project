<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
body {
    font-family: "Lato", sans-serif;
}

.heading{
	font-family: sans-serif;
}

.logoImage{
	margin-left: 80px;
}

.main-head{
    height: 150px;
    background: #FFF;
   
}

.sidenav {
    height: 100%;
    background-color: #0b6ca3;
    overflow-x: hidden;
    padding-top: 20px;
}


.main {
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 40%; 
    }

    .sidenav{
        width: 40%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #000 !important;
    color: #fff;
}

</style>

<script type="text/javascript">
function login(){
	
	if(document.userform.email.value==''){
		alert('Please Enter email');
		document.userform.email.focus();
		return false;
	}
	
	if(!validateEmail(document.userform.email.value)){
		alert('Please Enter Valid Email');
		document.userform.email.focus();
		return false;
	}
	
	if(document.userform.password.value==''){
		alert('Please Enter Password');
		document.userform.password.focus();
		return false;
	}
	
	document.userform.action="<c:url value = "/loginAdmin"/>";
	document.userform.method="get";
	document.userform.submit();
}

function validateEmail(email) 
{
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}

</script>

</head>

	<div class="sidenav">
		<div class="login-main-text">		
			<img class="logoImage" alt="fake employee photo" src="/project_name/URLToReachImagesFolder/logo.jpg" height="250" width="250">
			<h2 class="heading">
				<br>Employee Management App<br>
			</h2>
			<p>Login from here to access.</p>
		</div>
	</div>
	<div class="main">
		<div class="col-md-6 col-sm-12">
			<div class="login-form">
				
				 <form name="userform" action="loginAdmin"  method="get">
					<c:if test = "${not empty userform.errorMsg}">
         				<p style="color: red;"> <c:out value = "${userform.errorMsg}"/><p>
      				</c:if>
				
					<div class="form-group">
						<label>Email</label> 
						<input type="email" class="form-control" name="email" id="email" path="email" placeholder="Email"/>
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="password" id="password" class="form-control" path="password" placeholder="Password"/>
					</div>
					
					<br>
					<input type="button" class="btn btn-primary" value="Login" onclick="login()">
				 </form>
			</div>
		</div>
	</div>