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
        <div class="container text-center" style="margin-top: 134px;margin-bottom: 134px;">
            <div class="row">
                
            <h1>WELCOME TO SHOEVERSITY</h1>
            <p><h3><em>Outfits aren't complete without them sneakas!</em></h3></p>
            <p><h3>We want to let you discover various <br>brands' products and create your OOTD.</h3></p>
            <br>
            </div>
        </div>
        
        <%@include file='../../index1.jsp'%>
	
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

