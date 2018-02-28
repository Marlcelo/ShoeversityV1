<%-- 
    Document   : delete_product
    Created on : Mar 1, 2018, 2:38:19 AM
    Author     : Chelsey
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/index.css">
        <link href="https://fonts.googleapis.com/css?family=Pacifico&subset=latin-ext,vietnamese" rel="stylesheet">
        
        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&subset=latin-ext,vietnamese" rel="stylesheet">
        
        <!--BOOTSTRAP snippet of code credit https://bootsnipp.com/snippets/Ekpjl -->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
       
    </head>

    <body>
        <%
            if(session.getAttribute("type") == null){
        %>
            <%@include file='../../TEMPLATES/header.jsp'%>     
            <%}else if(session.getAttribute("type").equals(1)){%>
                <%@include file='../../USERS/TEMPLATES/user_header.jsp'%>
                <% } %>
        <div class="container">
            <div class="row">
                
                <!-- Centered Pills -->
                <ul class="nav nav-pills nav-justified">
                  <li><a href="add_prodct.jsp">Add a product</a></li>
                  <li><a href="edit_product.jsp">Edit a product</a></li>
                  <li><a href="delete_product.jsp">Delete a product</a></li>
                </ul>

                
            </div>
        </div>
	
	<!--Footer-->
        <%
            if(session.getAttribute("type") == null){
        %>
            <%@include file='../../TEMPLATES/footer.jsp'%> 
        <%}else if(session.getAttribute("type").equals(1)){%>
            <%@include file='../../USERS/TEMPLATES/user_footer.jsp'%> 
            <%}%>
    </body>
</html>


