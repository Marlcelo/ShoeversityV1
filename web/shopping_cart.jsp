<%-- 
    Document   : shopping_cart
    Created on : Feb 28, 2018, 7:26:00 PM
    Author     : Chelsey
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.Integer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
        <!--BOOTSTRAP snippet of code credit https://bootsnipp.com/snippets/Ekpjl -->
        <%@include file='STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
    </head>
    <body>
        
        <%@include file='TEMPLATES/header.jsp'%> 
        
        
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-10 col-md-offset-1">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Total</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
          
          
          out.println(session.getAttribute("cart"));
          
          ArrayList<Integer> cart;
          cart = (ArrayList<Integer>)session.getAttribute("cart");
          
          out.println(cart.get(0));
          float subtotal = 0;
          for(int i = 0; i < cart.size(); i++){
              int shoe_id = cart.get(i);
              int qty = cart.get(i+=1);
              
              
              StringBuilder sb = new StringBuilder();
              
              try{
                        Connection conn = null;
                        Statement stmnt = null;
                        ResultSet rs = null;
                        
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoeversity", "root", "");
                        stmnt = conn.createStatement();
                        
                        String sql = "SELECT * FROM shoes WHERE uid = "+shoe_id;
                        
                        rs = stmnt.executeQuery(sql);
                        
                        
                        rs.next();
              
          
          
        %>
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                    <div class="media">
                                        <a class="thumbnail pull-left" href="#"><img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                                        <div class="media-body">
                                            <h4 class="media-heading" style="padding-left: 10px;"><a href="#"> <%= rs.getString("name")  %></a></h4>
                                        </div>
                                    </div>
                                </td>
                                <td class="col-sm-1 col-md-1" style="text-align: center">
                                    <input type="number" class="form-control text-center" value="1">
                                </td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>P<%= rs.getString("price")  %></strong></td>
                                <%
                                    double price = Double.parseDouble(rs.getString("price"));
                                    
                                    double total = price * qty;
                                    
                                    subtotal+=total;
                                %>
                                <td class="col-sm-1 col-md-1 text-center"><strong><%= total  %></strong></td>
                                <td class="col-sm-1 col-md-1">
                                <button type="button" class="btn btn-danger">
                                    <span class="glyphicon glyphicon-remove"></span> Remove
                                </button></td>
                            </tr>
                            
                            <%
                            }catch (Exception e){
                        e.printStackTrace();
                    };
}%>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h5>Subtotal</h5></td>
                                <td class="text-right"><h5><strong><%= subtotal%></strong></h5></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h5>Estimated shipping</h5></td>
                                <td class="text-right"><h5><strong>$6.94</strong></h5></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td> <!--Leave these blank-->
                                <td>   </td>
                                <td><h3>Total</h3></td>
                                <td class="text-right"><h3><strong><%= subtotal+=6.94  %></strong></h3></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td> <!--Leave these blank-->
                                <td>   </td>
                                <td>
                                <button type="button" class="btn btn-default">
                                    <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                                </button></td>
                                <td>
                                <button type="button" class="btn btn-success">
                                    Checkout <span class="glyphicon glyphicon-play"></span>
                                </button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        <!--Footer-->
	<%@include file='TEMPLATES/footer.jsp'%> 
    </body>
</html>
