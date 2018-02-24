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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="/bootstrap.min.css" rel="stylesheet">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <style>
            body{
                margin-top: 50px;
            }
            .container{
                width:400px;
            }
        </style>
        <title>Register</title>
    </head>
    <body>
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
        <center>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
