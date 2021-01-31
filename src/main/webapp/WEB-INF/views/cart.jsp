<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	box-sizing: border-box;
}

#myInput {
	background-image: url('/css/searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

#myTable {
	border-collapse: collapse;
	width: 100%;
	border: 1px solid #ddd;
	font-size: 18px;
}

#myTable th, #myTable td {
	text-align: left;
	padding: 12px;
}

#myTable tr {
	border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
	background-color: #f1f1f1;
}

#pageHeader {
	text-align: center;
}
</style>
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
          <li class="nav-item">
            <a class="nav-link" href="/profile">Profile</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="/cart">Cart</a>
          </li>
        </ul>
      </div>
    </nav>
	

<h2 style="text-align: center">My Cart</h2>
	<table id="myTable">
			<tr class="header">
				<th>Thumbnail</th>
				<th>Name</th>
				<th>Genre</th>
				<th>Condition</th>
				<th>Price</th>
				<th>Description</th>
			</tr>
			<c:forEach items="${products}" var="products">
				<tr>
					<td><img src="${products.thumbnailUrl}"
						style="height: 100px; width: 100px;"></td>
					<td>${products.productName}</td>
					<td>${products.prodcutGenre}</td>
					<td>${products.productCondition}</td>
					<td>$${products.productPrice}</td>
					<td><a href="productdescription/${products.productId}">Description</a></td>
					
				</tr>

			</c:forEach>
			
	</table>
	<form method="post">
				<button>Checkout</button>
			</form>
</body>
</html>