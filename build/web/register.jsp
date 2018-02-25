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
		
		<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
		<!--BOOTSTRAP-->
		<%@include file='STYLES/bootstrap-template.jsp'%>
		
		<!--Set active_page session variable-->
		<% session.setAttribute("page", "register"); %>
	</head>
	<body>
		<!--Header-->
		<%@include file='TEMPLATES/header.jsp'%>  
        
		<div class="container text-center">
			<img class="img-circle" src="IMAGES/sample_logo.png" alt="logo">

			<h1>Register</h1> 
			<div class="content">
				
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
		</div>
		<br><br>
 marl/features/register/brand/jquery/add_location_and_contacts
                <script src="JS_JQ/jqueryFxns.js"></script>

		
		<!--Footer-->
		<%@include file='TEMPLATES/footer.jsp'%> 
	</body>
</html>
