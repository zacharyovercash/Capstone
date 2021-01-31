<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
    
 <form method="post">
     <div class="about-section mb-80">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section-title text-left ">
                                <h2 class="uppercase" style="text-align: center">${productdescription.productName}</h2>
                            </div>
                        </div>
                    </div>                    
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="about-photo p-20 bg-img-1">
                                <img src="${productdescription.thumbnailUrl}" style="width: 400px; height: 400px; alt="">
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="about-description mt-50">
                                <p>Condition: ${productdescription.productCondition}</p>
                                 <p>Genre: ${productdescription.prodcutGenre}</p>
                                  <p>Description: ${productdescription.productDescription}</p>
                                  <p>Price: ${productdescription.productPrice}</p>
                                  <button type="submit">Add to Cart</button>
                                  
                                    
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             </form>
           
    
</body>
</html>