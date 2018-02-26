<%-- 
    Document   : user_header
    Created on : 02 26, 18, 9:01:17 PM
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
				<a class="navbar-brand" href="#"> <img class="img-circle" src="../IMAGES/sample_logo.png" width="20px"> </a>
				<a class="navbar-brand" href="#">Shoeversity</a> 
			</div>
		
			<ul class="nav navbar-nav pull-right">
				<li>
					<form class="navbar-form" role="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search" name="q">
							<div class="input-group-btn">
								<button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i></button>
							</div>
						</div>
					</form>
				</li>
				<li class="${pageScope.highlight == 'products' ? ' active' : ''}"><a href="#">Browse</a></li>
				<li class="${pageScope.highlight == 'account' ? ' active' : ''}"><a href="#">My Account</a></li>
				<li class="${pageScope.highlight == 'logout' ? ' active' : ''}"><a href="../Logout">Logout</a></li>
			</ul>
		</div>
        </nav>
    </body>
</html>
