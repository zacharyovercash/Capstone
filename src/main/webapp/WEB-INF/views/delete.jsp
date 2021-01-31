<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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
	 <h2>Delete User</h2>
        <form:form action="delete" method="post" modelAttribute="delete">
            <table border="0" cellpadding="5">
               <tr>
                    <td>Id: </td>
                     <td>${delete.userid}
                    <form:hidden path="userid"/>
                </tr>    
                <tr>
                    <td>Username: </td>
                     <td>${delete.username}
                   <form:hidden path="username"/>
                </tr>
                 <tr>
                    <td>First Name: </td>
                    <td>${delete.fname}
                   <form:hidden path="fname"/>
                </tr>
                 <tr>
                    <td>Last Name: </td>
                    <td>${delete.lname}
                   <form:hidden path="lname"/>
                </tr>
                 <tr>
                    <td>Address: </td>
                   <td>${delete.address}
                   <form:hidden path="address"/>
                </tr>
                 <tr>
                    <td>City: </td>
                   <td>${delete.city}
                   <form:hidden path="city"/>
                </tr>
                 <tr>
                    <td>State: </td>
                   <td>${delete.state}
                   <form:hidden path="state"/>
                </tr>
                 <tr>
                    <td>Zipcode: </td>
                   <td>${delete.zipcode}
                   <form:hidden path="zipcode"/>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Delete User"></td>
                </tr>                   
            </table>
        </form:form>
</body>
</html>