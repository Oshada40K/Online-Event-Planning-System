<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<style>
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.buttonb1 {background-color: #04AA6D;} 
.buttonb2 {background-color: #008CBA;}
.buttonb3 {background-color: purple;} 
.buttonb4 {background-color: red;} 
.buttonb5 {background-color: black;}  


</style>
</head>
<body>

<h1>CRUD operation</h1>


<a href="loging.jsp"><button class="button buttonb1">login</button></a>
<a href="Rejister.jsp"><button class="button buttonb2">Register</button></a>
<a href="Update.jsp"><button class="button buttonb3">Update</button></a>
<a href="Delete.jsp"><button class="button buttonb4">Delete</button></a>
<a href="NewFile.jsp"><button class="button buttonb5">Back</button></a>

<!-- meka ven jsp dekk dala hdpn psse lassanata list ganna eka me -->
		<form action="mgcustomer" method="post">

<button type="submit">All manager</button>
</form>

</body>
</html>