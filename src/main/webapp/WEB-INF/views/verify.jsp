<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
      <div class="collapse navbar-collapse" id="navbarsExample02">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/">Login</a>
          </li>
           <li class="nav-item ">
            <a class="nav-link" href="/cart">Profile</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="/cart">Cart</a>
          </li>
        </ul>
      </div>
    </nav>
    
<h1 style="text-align: center">Review your information</h1>

	<form class="row g-3" method="post" modelAttribute="user">
	 <div class="col-md-6">
    <label for="address" class="form-label">Address</label>
    <input type="text" class="form-control" name="address" value="${user.address}">
  </div> 
  <div class="col-md-6">
    <label for="city" class="form-label">City</label>
    <input type="text" class="form-control" name="city" value="${user.city}">
  </div> 
  <div class="col-md-6">
    <label for="state" class="form-label">State</label>
    <input type="text" class="form-control" name="state" value="${user.state}">
  </div>
  <div class="col-md-6">
    <label for="state" class="form-label">Zipcode</label>
    <input type="text" class="form-control" name="zipcode" value="${user.zipcode}">
  </div>
  <button type="submit" onclick="AlertFunction()" class="btn btn-primary">Submit</button>
  </form>
  <script type="text/javascript">
  	function AlertFunction(){
  		alert("Order Submitted");
  	}
  </script>
</body>
</html>