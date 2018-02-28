<%-- 
    Document   : account_user
    Created on : Feb 26, 2018, 12:46:40 AM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My account</title>
		
	<link rel="stylesheet" type="text/css" href="../STYLES/main.css">
        
        <!--BOOTSTRAP-->
        <%@include file='../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
        
        <% 
            
        %> 
    </head>
    <body>
        <%@include file='TEMPLATES/user_header.jsp'%>
            <div class="container text-center">
                <div class="col-md-4">
                    <img class="img-circle" src="../IMAGES/sample_logo.png" alt="profilepic">
                    <br>
                    <label for="uname">Username:</label><br>
                    
                    <hr>
                    <label for="name">Name:</label><br>
                    
                    <hr>
                    <label for="email">Email:</label><br>
                    
                    <hr>
                    <label for="gnder">Gender:</label><br>
                    
                    <hr>
                </div>
                <div class="col-md-8">
                    <h2>Recent Purchases</h2><hr>
                    
                </div>
                
                
            </div>
        <%@include file='TEMPLATES/user_footer.jsp'%>
    </body>
</html>
