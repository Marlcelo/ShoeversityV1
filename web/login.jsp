<%-- 
    Document   : login
    Created on : Feb 24, 2018, 12:16:09 PM
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
        <title>Login</title>
        <link href="/bootstrap.min.css" rel="stylesheet">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <style>
            body{
                margin-top: 230px;
            }
            .container{
                width:400px;
            }
        </style>
    </head>
    <body>
        <center>
            <h1>Login</h1> 
            <div class="container">
                <form class="form-horizontal" name="login" action="Login">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="uname" placeholder="Username">
                </div><br>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" class="form-control" name="pword" placeholder="Password">
                </div><br>
                <div class="form-group">
                    <div class="col-sm-12 controls">
                        <input type="submit" value="Login" name="login" class="btn btn-primary pull-right btn-block"/>
                    </div>
                </div>

                </form>
            </div>
        <center>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
