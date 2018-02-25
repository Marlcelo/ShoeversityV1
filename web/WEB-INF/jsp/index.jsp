<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
        
        <!--BOOTSTRAP-->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
    </head>

    <body>
        <%@include file='../../TEMPLATES/header.jsp'%>     
        
        <form name="loginUser" action="login.jsp">
           <input type="submit" value="Sign In" name="loginUser" />
        </form>
        <p>Products page here! :) Home page!</p>

    </body>
</html>

