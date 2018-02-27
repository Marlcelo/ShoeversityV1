<%-- 
    Document   : register_admin
    Created on : Feb 27, 2018, 9:38:18 PM
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
	<!--Header-->
	<%@include file='TEMPLATES/header.jsp'%>  
        
	<div class="container text-center">
            <img class="img-circle" src="IMAGES/sample_logo.png" alt="logo">

            <h1>Create an admin account</h1> 
		<div class="content">
                    
                    <form class="form-horizontal" name="register_user" action="RegisterAdminServlet" method="post">
                        <div class="input-group">
                                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                               <input type="text" class="form-control" name="uname" placeholder="Username" required>
                        </div><br>
                       <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                               <input type="password" class="form-control" name="pword" placeholder="Password" required>
                       </div><br>
                       <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                               <input type="password" class="form-control" name="confirmpword" placeholder="Confirm Password" required>
                       </div><br>
                       <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></i></span>
                               <input type="text" class="form-control" name="email" placeholder="Email" required>
                        </div><br>
                       <div class="input-group">
                               <span class="input-group-addon">First name</span>
                               <input type="text" class="form-control" name="fname" placeholder="Mary Jane" required>
                        </div><br>
                        <div class="input-group">
                                 <span class="input-group-addon">Middle name</span>
                                 <input type="text" class="form-control" name="mname" placeholder="Terrence" required>
                        </div><br>
                         <div class="input-group">
                                  <span class="input-group-addon">Last name</span>
                                  <input type="text" class="form-control" name="lname" placeholder="Doe" required>
                        </div><br>
                        <div class="radio">
                                <label><input type="radio" name="gender" value="m" checked>Male</label>
                                <label><input type="radio" name="gender" value="f">Female</label>
                        </div><br>

                        <div class="form-group">
                                <div class="col-sm-12 controls">
                                        <input type="submit" value="Register admin" name="register" class="btn btn-primary pull-right btn-block"/>
                                </div>
                        </div>
                    </form>
                  
                </div>
        </div>
		<br><br>
  
        <script src="JS_JQ/jqueryFxns.js"></script>

		
	<!--Footer-->
	<%@include file='TEMPLATES/footer.jsp'%> 

	</body>
</html>
