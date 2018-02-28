<%-- 
    Document   : account_brand
    Created on : Feb 26, 2018, 12:50:48 AM
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
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="../STYLES/main.css">
        
        <!--BOOTSTRAP-->
        <%@include file='../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
        
        <% 
            int bid = Integer.parseInt(request.getParameter("id"));
            
            StringBuilder sb = new StringBuilder();
                    
            try{
                Connection conn = null;
                Statement stmnt = null;
                ResultSet rs_binfo = null, rs_bcn = null, rs_bloc = null,
                        rs_blink_web = null, rs_blink_fb = null, rs_blink_twt = null, rs_blink_ig = null;
                        
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
                stmnt = conn.createStatement();
                        
                String sql_binfo = "SELECT * FROM brands WHERE uid="+bid;
                String sql_bcn = "SELECT * FROM brand_contact_number WHERE brand_id="+bid;
                String sql_blink_web = "SELECT * FROM brand_link WHERE brand_id="+bid+" AND link_type='website'";
                String sql_blink_fb = "SELECT * FROM brand_link WHERE brand_id="+bid+" AND link_type='facebook'";
                String sql_blink_twt = "SELECT * FROM brand_link WHERE brand_id="+bid+" AND link_type='twitter'";
                String sql_blink_ig = "SELECT * FROM brand_link WHERE brand_id="+bid+" AND link_type='instagram'";
                String sql_bloc = "SELECT * FROM brand_location WHERE brand_id="+bid;
                        
                //basic info
                rs_binfo = stmnt.executeQuery(sql_binfo);
                rs_binfo.next();
                
                //contact number(s)
                rs_bcn = stmnt.executeQuery(sql_bcn);
                rs_bcn.next();
                
                //location(s)
                rs_bloc = stmnt.executeQuery(sql_bloc);
                rs_bloc.next();  
                
                //website
                rs_blink_web = stmnt.executeQuery(sql_blink_web);
                rs_blink_web.next();
                
                //facebook
                rs_blink_fb = stmnt.executeQuery(sql_blink_fb);
                rs_blink_fb.next();
                
                //twitter
                rs_blink_twt = stmnt.executeQuery(sql_blink_twt);
                rs_blink_twt.next();
                
                //instragram
                rs_blink_ig = stmnt.executeQuery(sql_blink_ig);
                rs_blink_ig.next();
        %> 
    </head>
    <body>
        <%@include file='TEMPLATES/brand_header.jsp'%>
        <div class="container text-center">
                <div class="col-md-4">
                    <img class="img-circle" src="../IMAGES/USERS/dp.jpg" width="160px" alt="profilepic">
                    <br>
                    <label for="name">Name: <%= rs_binfo.getString("brand_name") %></label><br>
                    
                    <hr>
                    <label for="uname">Username: <%= rs_binfo.getString("b_username") %></label><br>
                    
                    <hr>
                    <label for="email">Email: <%= rs_binfo.getString("b_email") %></label><br>
                    
                    <hr>
                    <label for="contactno">Contact Number(s):
                        <%= rs_bcn.getString("contact") %>
                    </label><br>
                    
                    <hr>
                    <label for="location">Location(s):
                        <%= rs_bloc.getString("location") %>
                    </label><br>
                    
                    <hr>?
                    <label for="website">Web Site: <%= rs_blink_web.getString("link") %></label><br>
                    
                    <hr>
                    <label for="facebook">Facebook: <%= rs_blink_fb.getString("link") %></label><br>
                    
                    <hr>
                    <label for="twitter">Twitter: <%= rs_blink_twt.getString("link") %></label><br>
                    
                    <hr>
                    <label for="instagram">Instagram: <%= rs_blink_ig.getString("link") %></label><br>
                    
                    <hr>
                </div>
                <div class="col-md-8">
                    <h2>Your products</h2><hr>
                    <!--replace new lines soon-->
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                </div>
                
                <!--leave this blank, this is under the account details, unless you want to add something-->
                <div class="col-md-4">
                </div>
                
                <div class="col-md-8">
                    <h2>Recent customers</h2><hr>
                    
                </div>
            
            </div>
        <%}catch(Exception e){
            e.printStackTrace();
        }%>
        
        <%@include file='TEMPLATES/brand_footer.jsp'%>
    </body>
</html>
