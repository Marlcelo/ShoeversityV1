<%-- 
    Document   : viewProduct
    Created on : Feb 27, 2018, 8:09:32 PM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
        <!--BOOTSTRAP-->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
    </head>
    <body>
        <%@include file='../../TEMPLATES/header.jsp'%>     
        
        <form name="loginUser" action="login.jsp">
           <input type="submit" value="Sign In" name="loginUser" />
        </form>
        <p>Products page here! :) Home page!</p>

	
	<!--Footer-->
	<%@include file='../../TEMPLATES/footer.jsp'%> 
    </body>
</html>
