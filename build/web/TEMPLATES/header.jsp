<%-- 
    Document   : header
    Created on : 02 24, 18, 3:32:15 PM
    Author     : danielflachica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	<%
		String active_page = session.getAttribute("page").toString();
	%>
    </head>
    
    <body>
        <!--Header-->
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <img class="img-circle" src="IMAGES/sample_logo.png" width="20px"> </a>
				<a class="navbar-brand" href="#">Shoeversity</a> 
			</div>
		
			<ul class="nav navbar-nav pull-right">
				<li><b> <%= active_page %> </b></li>
				<li class="active"><a href="index.htm">Products</a></li>
				<li><a href="login.jsp">Login</a></li>
				<li><a href="register.jsp">Register</a></li>
			</ul>
		</div>
        </nav>
    </body>
</html>
