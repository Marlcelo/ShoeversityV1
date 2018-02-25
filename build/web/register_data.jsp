<%-- 
    Document   : registaer_data
    Created on : Feb 25, 2018, 2:17:19 PM
    Author     : Marl
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String username = request.getParameter("uname");
            String password = request.getParameter("pword");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String first_name = request.getParameter("fname");
            String middle_name = request.getParameter("mname");
            String last_name = request.getParameter("lname");
            
            
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
            
            Statement stmnt = conn.createStatement();
            
            stmnt.executeUpdate("INSERT INTO users(u_username,u_password,u_email,u_gender,first_name,middle_name,last_name) VALUES('"+username+"','"+password+"','"+email+"','"+gender+"','"+first_name+"','"+middle_name+"','"+last_name+"')");
            
            out.println("data is inserted");
        }catch(Exception e){
            out.println(e);
        };
        %>
    </body>
</html>
