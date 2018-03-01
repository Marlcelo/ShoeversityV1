<%-- 
    Document   : header
    Created on : 02 24, 18, 3:32:15 PM
    Author     : danielflachica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
	<%
		String active_page = session.getAttribute("page").toString();
		pageContext.setAttribute("highlight", active_page);
	%>
    </head>
    
    <body>
        <!--Header-->
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <img class="img-circle" src="IMAGES/sample_logo.png" width="20px"> </a>
				<a class="navbar-brand" href="#">Shoeversity</a> 
			</div>
		
			<ul class="nav navbar-nav pull-right">
                            <li>
					<form action="../search_results.jsp" class="navbar-form" role="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search" name="q">
							<div class="input-group-btn">
								<button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
							</div>
						</div>
					</form>
				</li>
				<li class="${pageScope.highlight == 'products' ? ' active' : ''}"><a href="index.htm">Products</a></li>
				<li class="${pageScope.highlight == 'login' ? ' active' : ''}"><a href="login.jsp">Login</a></li>
				<li class="${pageScope.highlight == 'register' ? ' active' : ''}"><a href="register.jsp">Register</a></li>
			</ul>
		</div>
        </nav>
    </body>
</html>
