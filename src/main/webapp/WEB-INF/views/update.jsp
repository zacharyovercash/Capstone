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
	 <h2>Edit User</h2>
        <form:form method="post" modelAttribute="update">
            <table border="0" cellpadding="5">
               <tr>
                    <td>Id: </td>
                     <td>${update.userid}
                    <form:hidden path="userid"/>
                </tr>    
                <tr>
                    <td>Username: </td>
                    <td><form:input path="username" /></td>
                </tr>
                 <tr>
                    <td>First Name: </td>
                    <td><form:input path="fname" /></td>
                </tr>
                 <tr>
                    <td>Last Name: </td>
                    <td><form:input  path="lname" /></td>
                    <td>
                </tr>
                 <tr>
                    <td>Address: </td>
                    <td><form:input path="address" /></td>
                </tr>
                 <tr>
                    <td>City: </td>
                    <td><form:input path="city" /></td>
                </tr>
                 <tr>
                    <td>State: </td>
                    <td><form:input path="state"/></td>
                </tr>
                 <tr>
                    <td>Zipcode: </td>
                    <td><form:input path="zipcode"/></td>
                </tr>                
            </table>
            <button type="Submit">Save</button>
        </form:form>
</body>
</html>