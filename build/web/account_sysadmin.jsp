<%-- 
    Document   : account_sysadmin
    Created on : Feb 26, 2018, 12:55:36 AM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My account</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
        <!--BOOTSTRAP-->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
    </head>
    <body>
        <%@include file='TEMPLATES/header.jsp'%>
            <div class="container text-center">
                <div class="col-md-4">
                    <img class="img-circle" src="IMAGES/sample_logo.png" alt="profilepic">
                    <br>
                    <label for="uname">Username:</label><br>
                    
                    <hr>
                    <label for="name">Name:</label><br>
                    
                    <hr>
                    <label for="email">Email:</label><br>
                    
                    <hr>
                    <label for="gnder">Gender:</label>
                    
                    
                </div>
                <div class="col-md-8">
                    <h2>Your products</h2><hr>
                    <!--replace new lines soon-->
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
                
                <!--leave this blank, this is under the account details, unless you want to add something-->
                <div class="col-md-4">
                    <hr>
                    <a href role="button" class="btn btn-default btn-lg">Create an admin account</button></a>
                    <hr>
                </div>
                
                <div class="col-md-8">
                    <h2>Recent customers</h2><hr>
                    
                </div>
            
            </div>
        <%@include file='TEMPLATES/footer.jsp'%>
    </body>
</html>
