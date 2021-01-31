<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" >
	<div class="col-xs-2">
	<label for="username">User Name</label>
	<input type ="text" class = "form-group col-lg-1" name="username" placeholder="Enter Username">
	</div>
	<div class="form-group">
	<label for="password">Password</label>
	 <input type ="password" class = "form-group col-lg-1" name = "password" placeholder="Enter Password">
	</div>
	
	
	<input type="submit" value="Login">
	</form>
	<a href="/home">Login Later</a><br/>
	<a href="/register">Register</a>
</body>
</html>