<%-- 
    Document   : approve_brand
    Created on : Mar 1, 2018, 8:00:22 AM
    Author     : Chelsey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My account</title>
		
	<link rel="stylesheet" type="text/css" href="STYLES/main.css">
        
        <!--BOOTSTRAP-->
        <%@include file='../STYLES/bootstrap-template.jsp'%>
       
	<!--Set active_page session variable-->
	<% session.setAttribute("page", "products"); %>
    </head>
    <body>
        
        <%@include file='../../TEMPLATES/header.jsp'%> 
        
        <div class="container" style="width:40%; margin-top: 120px; margin-bottom: 230px;">
            <div class="row">
                <div class="col-sm-12 col-md-10 col-md-offset-1">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Brand name</th>
                                <th class="text-center">Approve brand?</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading" style="padding-left: 10px;"><a href="#"> Brand X </a></h4>
                                        </div>
                                    </div>
                                </td>
                                <td class="col-md-1 text-center">
                                <button type="button" class="btn btn-success">
                                    <span class="glyphicon glyphicon-check"></span>
                                </button></td>
                            </tr>
                            
                        </tbody>
                        <tbody>
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading" style="padding-left: 10px;"><a href="#"> Brand Y </a></h4>
                                        </div>
                                    </div>
                                </td>
                                <td class="col-md-1 text-center">
                                <button type="button" class="btn btn-success">
                                    <span class="glyphicon glyphicon-check"></span>
                                </button></td>
                            </tr>
                            
                        </tbody>
                        <tbody>
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading" style="padding-left: 10px;"><a href="#"> Brand Z </a></h4>
                                        </div>
                                    </div>
                                </td>
                                <td class="col-md-1 text-center">
                                <button type="button" class="btn btn-success">
                                    <span class="glyphicon glyphicon-check"></span>
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
