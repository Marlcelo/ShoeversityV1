<%-- 
    Document   : account_user
    Created on : Feb 26, 2018, 12:46:40 AM
    Author     : Chelsey
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
            int id = Integer.parseInt(request.getParameter("id"));
            
            StringBuilder sb = new StringBuilder();
                    
            try{
                Connection conn = null;
                Statement stmnt = null;
                ResultSet rs = null;
                        
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
                stmnt = conn.createStatement();
                        
                String sql = "SELECT * FROM users WHERE uid = " + id;
                        
                rs = stmnt.executeQuery(sql);
                rs.next();
        %> 
    </head>
    <body>
        <%@include file='TEMPLATES/user_header.jsp'%>
            <div class="container text-center">
                <div class="col-md-4">
                    <img class="img-circle" src="../IMAGES/sample_logo.png" alt="profilepic">
                    <br>
                    <label for="uname">Username: <%= rs.getString("u_username") %></label>
                    <br>
                    
                    <hr>
                    <label for="name">Name: <%= rs.getString("first_name") %> 
                                            <%= rs.getString("middle_name") %> 
                                            <%= rs.getString("last_name") %>
                    </label>
                    <br>
                    
                    <hr>
                    <label for="email">Email: <%= rs.getString("u_email") %></label>
                    <br>
                    
                    <hr>
                    <label for="gnder">Gender: <%= rs.getString("u_gender") %></label>
                    <br>
                    
                    <hr>
                </div>
                <div class="col-md-8">
                    <h2>Recent Purchases</h2><hr>
                    
                </div>              
            </div>
        <%@include file='TEMPLATES/user_footer.jsp'%>
    </body>
</html>
