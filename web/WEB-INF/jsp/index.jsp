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
        
<!--        <form name="loginUser" action="login.jsp">
           <input type="submit" value="Sign In" name="loginUser" />
        </form>-->
        <p>Products page here! :) Home page!</p>
        <div class="container">
            <div class="col-lg-12">
                <div class="col-lg-1"></div>
                <div class="col-lg-10">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">New Shoes</a></li>
                        <li><a data-toggle="tab" href="#men">Men</a></li>
                        <li><a data-toggle="tab" href="#women">Women</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="home" class="tab-pane fade in active">
                            <h3>HOME</h3>
                            <p>Some content.</p>
                        </div>
                        <div id="men" class="tab-pane fade">
                            <h3>Mens Shoes</h3>
                            <p>Mens.</p>
                        </div>
                        <div id="women" class="tab-pane fade">
                            <h3>Womens Shoes</h3>
                            <p>Women.</p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-1"></div>
            </div>
        </div>
	
	<!--Footer-->
	<%@include file='../../TEMPLATES/footer.jsp'%> 
    </body>
</html>

