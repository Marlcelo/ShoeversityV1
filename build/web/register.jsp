<%-- 
    Document   : register
    Created on : Feb 24, 2018, 2:30:30 PM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Register</title>
        
		<!--BOOTSTRAP-->
		<%@include file='STYLES/bootstrap-template.jsp'%>
       
		<style>
			.container{
				margin-top: 50px;
				width:400px;
			}
		</style>
	</head>
	<body>
		<!--Header-->
		<%@include file='TEMPLATES/header.jsp'%>  
        
		<center>
			<img src="IMAGES/sample_logo.png" alt="logo">
            
			<h1>Register</h1> 
			<div class="container">
				
				<ul class="nav nav-tabs nav-justified" data-tabs="tabs">
					<li class="active"> <a data-toggle="tab" href="#user_reg">Customer</a> </li>
					<li> <a data-toggle="tab" href="#brand_reg">Brand</a> </li>
				</ul>
					
				<div class="tab-content">
					<div class="tab-pane active" id="user_reg">
						<%@ include file="TABS/register_user.jsp" %>
					</div>
					<div  class="tab-pane" id="brand_reg">
						<%@ include file="TABS/register_brand.jsp" %>
					</div>
				</div>
					
				Already have an account? <a href="login.jsp">Sign in.</a>
			</div>
		</center>
		<br><br>
	</body>
</html>
