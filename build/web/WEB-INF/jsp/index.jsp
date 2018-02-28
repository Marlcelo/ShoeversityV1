<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/index.css">
        <link href="https://fonts.googleapis.com/css?family=Pacifico&subset=latin-ext,vietnamese" rel="stylesheet">
        
        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&subset=latin-ext,vietnamese" rel="stylesheet">
        
        <!--BOOTSTRAP snippet of code credit https://bootsnipp.com/snippets/Ekpjl -->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
       
    </head>

    <body>
        <%
            if(session.getAttribute("type") == null){
        %>
            <%@include file='../../TEMPLATES/header.jsp'%>     
            <%}else if(session.getAttribute("type").equals(1)){%>
                <%@include file='../../USERS/TEMPLATES/user_header.jsp'%>
                <% } %>
        <div class="container">
            <div class="container text-center" style="margin-top: 134px;margin-bottom: 134px;">
                <div class="row">
                
                    <h1>WELCOME TO SHOEVERSITY</h1>
                    <p><h3><em>Outfits aren't complete without them sneakas!</em></h3></p>
                    <p><h3>We want to let you discover various <br>brands' products and create your OOTD.</h3></p>
                    <br>
                </div>
            </div>
            <div class="row">

                <!-- Centered Pills -->
                <ul class="nav nav-pills nav-justified">
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Menu 1</a></li>
                  <li><a href="#">Menu 2</a></li>
                  <li><a href="#">Menu 3</a></li>
                </ul>

                <!-- BEGIN PRODUCTS -->
                <%
                    StringBuilder sb = new StringBuilder();
                    
                    try{
                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
                        stmnt = conn.createStatement();
                        
                        String sql = "SELECT * FROM shoes";
                        
                        rs = stmnt.executeQuery(sql);
                        
                        while(rs.next()){%>
                                <div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
                    <img src="<%= rs.getString("photo_url")  %>" alt="...">
      			<h4><% rs.getString("name");  %></h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
                        <p><label class="lead"><%= rs.getString("name")  %></label> </p>
                        <p><b>COLOR:</b> <%= rs.getString("color")%></p>
                        <p><b>SIZE:</b> <%= rs.getString("size")  %> </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">P<%= rs.getString("price")  %></p>
      				</div>
      				<div class="col-md-6 col-sm-6">
                                    <a href="view_selected_product.jsp?id=<%= rs.getString("uid")%>" target="_self">	<button class="btn-md btn-info pull-right" > BUY ITEM</button></a>
      				</div>
      				
      			</div>
    		</span>
  		</div>
                        <%}
                        
                    }catch (Exception e){
                        e.printStackTrace();
                    };
                    
//                    sb.append("")
                   
                %>
  		

            </div>
        </div>
	
    </body>
</html>

