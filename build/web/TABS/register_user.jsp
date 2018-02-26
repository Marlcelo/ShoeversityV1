<%-- 
    Document   : tab_user_register
    Created on : 02 25, 18, 3:28:41 PM
    Author     : danielflachica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<br>
<form class="form-horizontal" name="register_user" action="register_user_servlet" method="post">
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
		<input type="text" class="form-control" name="email" placeholder="Email" required>
         </div><br>
	<div class="input-group">
		<span class="input-group-addon">First name</span>
		<input type="text" class="form-control" name="fname" placeholder="Mary Jane" required>
         </div><br>
         <div class="input-group">
                  <span class="input-group-addon">Middle name</span>
                  <input type="text" class="form-control" name="mname" placeholder="Terrence" required>
         </div><br>
          <div class="input-group">
                   <span class="input-group-addon">Last name</span>
                   <input type="text" class="form-control" name="lname" placeholder="Doe" required>
         </div><br>
         <div class="radio">
                  <label><input type="radio" name="gender" value="m" checked>Male</label>
                  <label><input type="radio" name="gender" value="f">Female</label>
         </div><br>

         <div class="form-group">
                  <div class="col-sm-12 controls">
                           <input type="submit" value="Register" name="register" class="btn btn-primary pull-right btn-block"/>
                  </div>
         </div>
</form>