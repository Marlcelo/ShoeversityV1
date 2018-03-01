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
       
        <!--Set active_page session variable-->
        <% session.setAttribute("page", "products"); %>
    </head>

    <body>
        <%
            if(session.getAttribute("type") == null){
        %>
            <%@include file='../../TEMPLATES/header.jsp'%>     
            <%}else if(session.getAttribute("type").equals(1)){%>
                <%@include file='../../USERS/TEMPLATES/user_header.jsp'%>
                <% } %>
                
        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="position: absolute; top: 0; margin-bottom: 100px">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="https://www.metaslider.com/wp-content/uploads/2014/11/mountains1.jpg" alt="Los Angeles" style="width:100%; height: 600px">
                        <div class="carousel-caption">
                            <h1>WELCOME TO SHOEVERSITY</h1>
                            <h3>Your one stop for all shoe needs.</h3>
                        </div>
                    </div>

                    <div class="item">
                        <img src="http://www.food4fuel.com/wp-content/uploads/2014/02/rebound-slider-2-bg.jpg" alt="Chicago" style="min-width:100%; height: 600px">
                        <div class="carousel-caption">
                            <p><h3><em>Outfits aren't complete without them sneakas!</em></h3></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="https://www.procloud.com.au/wp-content/uploads/2016/08/slider-dark-bg.jpg" alt="New york" style="width:100%; height: 600px">
                        <div class="carousel-caption">
                            <h3>Explore what we have to offer.</h3>
                            <p>We want to let you discover various brands' products and create your OOTD.</p>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
                
        <div class="container" style="position: relative; top: 600px;">
<!--            <div class="container text-center" style="margin-top: 134px;margin-bottom: 134px;">
                <div class="row">
                
                    <h1>WELCOME TO SHOEVERSITY</h1>
                    <p><h3><em>Outfits aren't complete without them sneakas!</em></h3></p>
                    <p><h3>We want to let you discover various <br>brands' products and create your OOTD.</h3></p>
                    <br>
                </div>
            </div>-->            
            <div class="row">

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

