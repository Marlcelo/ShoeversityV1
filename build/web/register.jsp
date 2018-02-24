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
        <%@include file='header.jsp'%>  
        
        <center>
            <h1>Register</h1> 
            <div class="container">
                <form class="form-horizontal" name="login" action="Register">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" class="form-control" name="uname" placeholder="Username">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" class="form-control" name="pword" placeholder="Password">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" class="form-control" name="confirmpword" placeholder="Confirm Password">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></i></span>
                        <input type="text" class="form-control" name="email" placeholder="Email">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">First name</span>
                        <input type="text" class="form-control" name="fname" placeholder="Mary Jane">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">Middle name</span>
                        <input type="text" class="form-control" name="mname" placeholder="Terrence">
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">Last name</span>
                        <input type="text" class="form-control" name="lname" placeholder="Doe">
                    </div><br>
                    <div class="radio">
                        <label><input type="radio" name="male">Male</label>
                        <label><input type="radio" name="female">Female</label>
                    </div><br>

                    <div class="form-group">
                        <div class="col-sm-12 controls">
                            <input type="submit" value="Register" name="register" class="btn btn-primary pull-right btn-block"/>
                        </div>
                    </div>
                </form>
                Already have an account? <a href="login.jsp">Sign in.</a>
            </div>
        </center>
    </body>
</html>
