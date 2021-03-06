<%-- 
    Document   : register_brand
    Created on : 02 25, 18, 4:12:12 PM
    Author     : danielflachica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<br>
<form class="form-horizontal" name="login" action="RegisterBrandServlet">
	<div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		<input type="text" class="form-control" name="brandname" placeholder="Brand Name" required>
         </div><br>
         <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		<input type="text" class="form-control" name="uname" placeholder="Username" required>
         </div><br>
	<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		<input type="password" class="form-control" name="pword" placeholder="Password" required>
	</div><br>
	<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		<input type="password" class="form-control" name="confirmpword" placeholder="Confirm Password" required>
	</div><br>
	<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></i></span>
		<input type="text" class="form-control" name="email" placeholder="Official Email Address" required>
         </div><br>
	
         <div id ="contacts">
            <div class="input-group" id="contactNumbers1">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                    <input type="text" class="form-control" name="number1" placeholder="Contact Number" required>
            </div>
         </div>
         <div class="input-group">
             <button class = "btn btn-info pull-right btn-block btn-sm" id="btnAddContact" type="button">Add Contact#</button>
         </div>
	<div class="alert alert-warning">need to add multiple contact #s</div>
	
        <div id="locations">
            <div class="input-group" id="location1">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                    <input type="text" class="form-control" name="location1" placeholder="Location" required>
            </div>
        </div>
        <div class="input-group">
             <button class = "btn btn-info pull-right btn-block btn-sm" id="btnAddLocation" type="button">Add Location</button>
         </div>
	<div class="alert alert-warning">need to add multiple locations</div>
		 
		 
	<div class="input-group">
		<span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
		<input type="url" class="form-control" name="website" placeholder="Website (Optional)">
         </div><br>
         <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
                  <input type="url" class="form-control" name="facebook" placeholder="Facebook (Optional)">
         </div><br>
          <div class="input-group">
                   <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
                   <input type="url" class="form-control" name="twitter" placeholder="Twitter (Optional)">
         </div><br>
         <div class="input-group">
                   <span class="input-group-addon"><i class="glyphicon glyphicon-link"></i></span>
                   <input type="url" class="form-control" name="instagram" placeholder="Instagram (Optional)">
         </div><br>

         <div class="form-group">
                  <div class="col-sm-12 controls">
                           <input type="submit" value="Register" name="register" class="btn btn-primary pull-right btn-block"/>
                  </div>
         </div>
</form>
