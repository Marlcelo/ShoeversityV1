<%-- 
    Document   : login
    Created on : Feb 24, 2018, 12:16:09 PM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Login</title>
		
		<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
		<!--BOOTSTRAP-->
		<%@include file='../../STYLES/bootstrap-template.jsp'%>
       
		<!--Set active_page session variable-->
		<% session.setAttribute("page", "login"); %>
	</head>
	<body>
		<!--Header-->
		<%@include file='TEMPLATES/header.jsp'%>  

		<div class="container text-center">
			<img class="img-circle" src="IMAGES/sample_logo.png" alt="logo">

			<h1>Login</h1> 
			<div class="content">
				<form class="form-horizontal" name="login" action="Login">
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input type="text" class="form-control" name="uname" placeholder="Username">
					</div><br>
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input type="password" class="form-control" name="pword" placeholder="Password">
					</div><br>
					<div class="input-group pull-right">
						<input type="checkbox" name="isAdmin" value="yes"> &nbsp; I am a System Administrator.
					</div><br><br>
					<div class="form-group">
						<div class="col-sm-12 controls">
							<input type="submit" value="Login" name="login" class="btn btn-primary pull-right btn-block"/>
						</div>
					</div>
				</form>
				Don't have an account yet? <a href="register.jsp">Register here.</a>
			</div>
		</div>
	</body>
</html>
