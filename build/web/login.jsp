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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1> 
        
        <form name="login" action="Login">
            Enter username: <input type="text" name="uname" value="" size="30" />
            Enter password: <input type="password" name="password" value="" size="30" />
            
            <input type="submit" value="Login" name="login" />
        </form>
    </body>
</html>
