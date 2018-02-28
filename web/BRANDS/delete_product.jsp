<%-- 
    Document   : delete_product
    Created on : Mar 1, 2018, 2:38:19 AM
    Author     : Chelsey
--%>

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
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
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
        <div class="container text-center" style="margin-top:100px; width:50%;">
            <div class="row">
                
                <!-- Centered Pills -->
                <ul class="nav nav-pills nav-justified" style="margin-bottom: 50px;">
                  <li><a href="add_prodct.jsp">Add a product</a></li>
                  <li ><a href="edit_product.jsp">Edit a product</a></li>
                  <li class="active"><a href="delete_product.jsp">Delete a product</a></li>
                </ul>

                <form class="form-horizontal text-center" name="delete_product" action="" method="post">
                    <div class="input-group">
                        <span class="input-group-addon">Your products</span>
                        <select class="form-control text-center" id="category" style="width:100%;">
                          <option>Shoe 1</option>
                          <option>Shoe 2</option>
                          <option>Shoe 3</option>
                          <option>Shoe 4</option>
                        </select>
                    </div><br>
  
                    <div class="form-group">
                             <div class="col-sm-12 controls">
                                      <input type="submit" value="Delete product" name="deleteproduct" class="btn btn-primary pull-right btn-block"/>
                             </div>
                    </div>
           </form>
            </div>
        </div>
	
	<!--Footer-->
        <%
            if(session.getAttribute("type") == null){
        %>
            <%@include file='../../TEMPLATES/footer.jsp'%> 
        <%}else if(session.getAttribute("type").equals(1)){%>
            <%@include file='../../USERS/TEMPLATES/user_footer.jsp'%> 
            <%}%>
    </body>
</html>




