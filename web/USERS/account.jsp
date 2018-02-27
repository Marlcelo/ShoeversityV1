<%-- 
    Document   : account
    Created on : 02 26, 18, 9:04:33 PM
    Author     : danielflachica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Shoeversity: My Account</title>
		
		<link rel="stylesheet" type="text/css" href="../STYLES/main.css">
        
		<!--BOOTSTRAP-->
		<%@include file='../../STYLES/bootstrap-template.jsp'%>
       
		<% 
			// Set active_page session variable
			session.setAttribute("page", "account"); 
			
			// Get current user
			String auth_username = session.getAttribute("auth_user_uname").toString();
			pageContext.setAttribute("username", auth_username);
		%>
	</head>
	<body>
		<!--Header-->
		<%@include file='TEMPLATES/user_header.jsp'%>  

		<div class="container text-center">
			<div class="content">
				<h1> Welcome, ${username}! </h1>
			</div>
		</div>
		<br><br>
		
		<!--Footer-->
		<%@include file='TEMPLATES/user_footer.jsp'%>  
	</body>
</html>
