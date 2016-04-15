<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courier Signup</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body background="image/parallax_bg.png">

<div class="container" style="width: 350px;margin-top: 5%">
<h3 style="text-align: center;">Courier SignUp</h3>
<form  action="Courier_signup" method="post" ta-toggle="validator" role="form">
  <div class="form-group">
    <label for="inputName" class="control-label">Name</label>
    <input type="text" name="NAME" class="form-control" id="inputName" placeholder="Enter Your Name" required size="50">
  </div>
  
  <div class="form-group">
    <label for="inputName" class="control-label">User Name</label>
    <input type="text" name="USER_NAME" class="form-control" id="inputName" placeholder="Provide User name" required size="50">
  </div>
  
     <div class="form-group">
    <label for="inputEmail" class="control-label">Email</label>
    <input type="email" name="EMAIL" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
    <div class="help-block with-errors"></div>
  </div>
  
  <div class="form-group">
    <label for="inputEmail" class="control-label">Password</label>
    <input type="password" name="PASSWORD" class="form-control" id="inputEmail" placeholder="Enter Your Password" data-error="Bruh, that email address is invalid" required>
    <div class="help-block with-errors"></div>
  </div>
  
  <div class="form-group" style="text-align: center;">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</div>
</body>
</html>