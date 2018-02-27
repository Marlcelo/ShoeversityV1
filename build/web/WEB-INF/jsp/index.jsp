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
            <div class="jumbotron">
              <h1>Shoeversity</h1> 
              <p>Buy some very nice sapatoes.</p> 
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="col-md-12 shop-tab-container">
                        <div class="col-md-12">
                            <ul class="nav nav-tabs nav-stacked">
                            <li class="active"><a data-toggle="tab" href="#newshoes">Just In!</a></li>
                            <li><a data-toggle="tab" href="#mens">Men</a></li>
                            <li><a data-toggle="tab" href="#womens">Women</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tab-content">
                        <div id="newshoes" class="tab-pane fade in active">
                            <h3>HOME</h3>
                            <p>Some content.</p>
                            <%@include file='../../TABS/newshoes.jsp'%> 
                        </div>
                        <div id="mens" class="tab-pane fade">
                            <h3>Menu 1</h3>
                            <p>Some content in menu 1.</p>
                        </div>
                        <div id="womens" class="tab-pane fade">
                            <h3>Menu 2</h3>
                            <p>Some content in menu 2.</p>
                        </div>
                    </div>
                </div>
                
                
            </div>
        </div>
	
	<!--Footer-->
	<%@include file='../../TEMPLATES/footer.jsp'%> 
    </body>
</html>

