<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form class="row g-3" method="post">
  <div class="col-md-6">
    <label for="username" class="form-label">Username</label>
    <input type="text" class="form-control" name="username">
  </div>
  <div class="col-md-6">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" name="password">
  </div>
  <div class="col-md-6">
    <label for="fname" class="form-label">First Name</label>
    <input type="text" class="form-control" name="fname">
  </div>
  <div class="col-md-6">
    <label for="lname" class="form-label">Last Name</label>
    <input type="text" class="form-control" name="lname">
  </div>
  <div class="col-md-6">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" name="address">
  </div> 
  <div class="col-md-6">
    <label for="city" class="form-label">City</label>
    <input type="text" class="form-control" name="city">
  </div> 
  <div class="col-md-6">
    <label for="state" class="form-label">State</label>
    <input type="text" class="form-control" name="state">
  </div>
  <div class="col-md-6">
    <label for="zipcode" class="form-label">Zipcode</label>
    <input type="text" class="form-control" name="zipcode">
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Register</button>
  </div>
</form>
</body>
</html>