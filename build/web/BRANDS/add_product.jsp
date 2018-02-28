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
        <div class="container text-center" style="margin-top:100px; width:50%;">
            <div class="row">
                
                <!-- Centered Pills -->
                <ul class="nav nav-pills nav-justified" style="margin-bottom: 50px;">
                  <li class="active"><a href="add_product.jsp">Add a product</a></li>
                  <li><a href="edit_product.jsp">Edit a product</a></li>
                  <li><a href="delete_product.jsp">Delete a product</a></li>
                </ul>
               
                <form class="form-horizontal text-center" name="edit_product" action="" method="post">
                   <div class="input-group">
                           <span class="input-group-addon">Name</span>
                           <input type="text" class="form-control text-center" name="productname" placeholder="Converse" required>
                    </div><br>
                    <div class="input-group">
                             <span class="input-group-addon">Description</span>
                             <textarea class="form-control text-center" rows="5" placeholder="Amazing"></textarea>
                    </div><br>
                    <div class="input-group">
                        <span class="input-group-addon">Category</span>
                        <select class="form-control text-center" id="category" style="width:100%;">
                          <option>Men's sneakers</option>
                          <option>Men's formal</option>
                          <option>Women's casual</option>
                          <option>Women's sneakers</option>
                        </select>
                    </div><br>
                    <div class="input-group">
                           <span class="input-group-addon">Size</span>
                           <input type="number" class="form-control text-center" value="7" required>
                    </div><br>
                    <div class="input-group">
                           <span class="input-group-addon">Price in PhP</span>
                           <input type="number" class="form-control text-center" value="0" required>
                    </div><br>
                    <div class="input-group">
                           <span class="input-group-addon">Color</span>
                           <input type="text" class="form-control text-center" name="color" placeholder="Red" required>
                    </div><br>
                    
                    <div class="input-group" style="width:100%; margin-bottom: 20px;">
                        <div class="input-group input-file" name="Fichier1">
                            <input type="text" class="form-control" placeholder='Choose a file...' />
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-choose" type="button">Choose</button>
                                </span>
                        </div>
                    </div>
                    <div class="form-group" style="width:105%;">
                             <div class="col-sm-12 controls">
                                      <input type="submit" value="Sell product" name="sell" class="btn btn-primary pull-right btn-block"/>
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

