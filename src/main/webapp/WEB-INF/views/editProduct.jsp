<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> 
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
            <a class="nav-link" href="/admin/home">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/users">Users</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="/">Logout</a>
          </li>
        </ul>
      </div>
    </nav>

	<h2>Edit Product</h2>
        <form:form method="post" modelAttribute="update">
            <table border="0" cellpadding="5">
               <tr>
                    <td>Id: </td>
                     <td>${update.productId}
                    <form:hidden path="productId"/>
                </tr>    
                <tr>
                    <td>Product Thumbnail: </td>
                    <td><form:input path="thumbnailUrl" /></td>
                </tr>
                 <tr>
                    <td>Product Name: </td>
                    <td><form:input path="productName" /></td>
                </tr>
                 <tr>
                    <td>Product Condition </td>
                    <td><form:input  path="productCondition" /></td>
                    <td>
                </tr>
                 <tr>
                    <td>Product Genre: </td>
                    <td><form:input path="prodcutGenre" /></td>
                </tr>
                 <tr>
                    <td>Product Price: </td>
                    <td><form:input path="productPrice" /></td>
                </tr>
                 <tr>
                    <td>Product Description: </td>
                    <td><form:input path="productDescription"/></td>
                </tr>           
            </table>
            <button type="Submit">Save</button>
        </form:form>

</body>
</html>