<%-- 
    Document   : search_results
    Created on : Mar 1, 2018, 8:42:43 AM
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
        <title>Search Results</title>
        
        <%  String key=request.getParameter("searchkey"); 
            pageContext.setAttribute("searchkey", key);
        %>
        
        <link rel="stylesheet" type="text/css" href="STYLES/view_product.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
        
        <!--BOOTSTRAP-->
        <%@include file='STYLES/bootstrap-template.jsp'%>
        
        <%
            
            StringBuilder sb = new StringBuilder();
                    
                    try{
                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;
                        
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
                        stmnt = conn.createStatement();
                        
                        String sql = "SELECT * FROM shoes WHERE name LIKE "+key;
                        
                        rs = stmnt.executeQuery(sql);
                        
                        rs.next();%>
    </head>
     <body>
        <%--<%@include file='TEMPLATES/header.jsp'%>--%>    
        <%
            if(session.getAttribute("type") == null){
        %>
            <%@include file='../../TEMPLATES/header.jsp'%>     
            <%}else if(session.getAttribute("type").equals(1)){%>
                <%@include file='../../USERS/TEMPLATES/user_header.jsp'%>
                <% } %>
        <div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
                                            <img src="<%= rs.getString("photo_url")  %>"/>
					</div>
					<div class="details col-md-6">
                                            <h3 class="product-title"> <%= rs.getString("name")  %> </h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description"> <%= rs.getString("description")  %> </p>
						<h4 class="price">Price: <span>PHP <%= rs.getString("price")  %></span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">Size:
                                                    <span class="size" data-toggle="tooltip" ><%= rs.getString("size")  %></span>
		
						</h5>
                                                
                                                <h5 class="qty">Qty:
                                                    <span style="margin-left:5px;"><input style="width: 10%; display: inline; " type="number" class="form-control text-center" value="1"></span>
                                                </h5>
                
						<h5 class="colors">Colors:
							<span class="color <%= rs.getString("color")  %>"></span>
						</h5>
						<div class="action">
							<button class="add-to-cart btn btn-default" type="button">add to cart</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-star"></span> Rate</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
        <%}catch(Exception e){
                        e.printStackTrace();
                    }%>
	
	<!--Footer-->
	<%@include file='TEMPLATES/footer.jsp'%> 
    </body>
</html>