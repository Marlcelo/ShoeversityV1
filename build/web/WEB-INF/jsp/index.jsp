<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Shoeversity!</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
        <!--BOOTSTRAP-->
        <%@include file='../../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
    </head>

    <body>
        <%@include file='../../TEMPLATES/header.jsp'%>     
        <div class="container">
            <div class="jumbotron">
              <h1>Shoeversity</h1> 
              <p>Buy some very nice sapatoes.</p> 
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="col-md-12 shop-tab-container">
                        <div class=" shop-tab-menu">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> Laptop & PC's</h4>
                                </a>
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> Cameras</h4>
                                </a>
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> Mens Clothing</h4>
                                </a>
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> Womens Clothing</h4>
                                </a>
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> Watches</h4>
                                </a>
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> Tablets</h4>
                                </a>
                                <a href="#" class="list-group-item">
                                  <h4><i class="fa fa-chevron-right" aria-hidden="true"></i> All Categories</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-9">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail" >
                            <h4 class="text-center"><span class="label label-info">Samsung</span></h4>
                            <img src="" class="img-responsive">
                            <div class="caption">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <h3>Galaxy S5</h3>
                                    </div>
                                    <div class="col-md-6 col-xs-6 price">
                                        <h3><label>$649.99</label></h3>
                                    </div>
                                </div>
                                
                                <p>32GB, 2GB Ram, 1080HD, 5.1 inches, Android</p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
                                    </div>
                                <div class="col-md-6">
                                    <a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
                                </div>
                                <p> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail" >
                            <h4 class="text-center"><span class="label label-info">Samsung</span></h4>
                            <img src="" class="img-responsive">
                            <div class="caption">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <h3>Galaxy S5</h3>
                                    </div>
                                    <div class="col-md-6 col-xs-6 price">
                                        <h3><label>$649.99</label></h3>
                                    </div>
                                </div>
                                
                                <p>32GB, 2GB Ram, 1080HD, 5.1 inches, Android</p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
                                    </div>
                                <div class="col-md-6">
                                    <a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
                                </div>
                                <p> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail" >
                            <h4 class="text-center"><span class="label label-info">Samsung</span></h4>
                            <img src="" class="img-responsive">
                            <div class="caption">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6">
                                        <h3>Galaxy S5</h3>
                                    </div>
                                    <div class="col-md-6 col-xs-6 price">
                                        <h3><label>$649.99</label></h3>
                                    </div>
                                </div>
                                
                                <p>32GB, 2GB Ram, 1080HD, 5.1 inches, Android</p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
                                    </div>
                                <div class="col-md-6">
                                    <a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
                                </div>
                                <p> </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<!--Footer-->
	<%@include file='../../TEMPLATES/footer.jsp'%> 
    </body>
</html>

