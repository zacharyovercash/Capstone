<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<div class="form-group">
		<label for="thumbnailUrl">Product Thumbnail:</label><br /> 
		<input type="text" class="form-group" name="thumbnailUrl"><br/> 
		
		<label for="productName">Product Name:</label><br /> 
		<input type="text" class="form-group" name="productName"><br/> 
		
		<label for="productCondition">Product Condition:</label><br /> 
		<input type="text" class="form-group" name="productCondition"><br/> 
		
		<label for="prodcutGenre">Product Genre:</label><br /> 
		<input type="text" class="form-group" name="prodcutGenre"><br/> 
		
		<label for="productPrice">Product Price:</label><br /> 
		<input type="number" step="0.01" class="form-group" name="productPrice"><br/> 
		
		<label for="productDescription">Product Description:</label><br /> 
		<input type="text" class="form-group" name="productDescription"><br/> 

		</div>
			
			
		<input type="submit" value="Add Product">
	</form>
	<a href="/display">Return to list</a>
</body>
</html>