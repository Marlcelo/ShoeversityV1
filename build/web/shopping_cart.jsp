<%-- 
    Document   : shopping_cart
    Created on : Feb 28, 2018, 7:26:00 PM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
        <!--BOOTSTRAP snippet of code credit https://bootsnipp.com/snippets/Ekpjl -->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
    </head>
    <body>
        
        <%@include file='../../TEMPLATES/header.jsp'%> 
        
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
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                <div class="media">
                                    <a class="thumbnail pull-left" href="#"><img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                                    <div class="media-body">
                                        <h4 class="media-heading" style="padding-left: 10px;"><a href="#"> Product name</a></h4>
                                        <h5 class="media-heading" style="padding-left: 10px;"> by <a href="#"> Brand name</a></h5>
                                    </div>
                                </div></td>
                                <td class="col-sm-1 col-md-1" style="text-align: center">
                                <input type="email" class="form-control" id="exampleInputEmail1" value="3">
                                </td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
                                <td class="col-sm-1 col-md-1">
                                <button type="button" class="btn btn-danger">
                                    <span class="glyphicon glyphicon-remove"></span> Remove
                                </button></td>
                            </tr>
                            <tr>
                                <td class="col-md-6">
                                <div class="media">
                                    <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                                    <div class="media-body">
                                        <h4 class="media-heading" style="padding-left: 10px;"><a href="#">Product name</a></h4>
                                        <h5 class="media-heading" style="padding-left: 10px;"> by <a href="#">Brand name</a></h5>
                                    </div>
                                </div></td>
                                <td class="col-md-1" style="text-align: center">
                                <input type="email" class="form-control" id="exampleInputEmail1" value="2">
                                </td>
                                <td class="col-md-1 text-center"><strong>$4.99</strong></td>
                                <td class="col-md-1 text-center"><strong>$9.98</strong></td>
                                <td class="col-md-1">
                                <button type="button" class="btn btn-danger">
                                    <span class="glyphicon glyphicon-remove"></span> Remove
                                </button></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h5>Subtotal</h5></td>
                                <td class="text-right"><h5><strong>$24.59</strong></h5></td>
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
                                <td>   </td>
                                <td>   </td>
                                <td><h3>Total</h3></td>
                                <td class="text-right"><h3><strong>$31.53</strong></h3></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
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
	<%@include file='../../TEMPLATES/footer.jsp'%> 
    </body>
</html>
