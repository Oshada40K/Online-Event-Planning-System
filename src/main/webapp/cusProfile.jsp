<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Update Profile</title>

    <style>
        body {
            background-image: url('homebackground.jpg'); /* Update with your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white */
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 16px 40px rgba(0, 0, 0, 0.4);
        }

        .card-header {
            background-color: #d63384;
            border-radius: 15px 15px 0 0;
        }

        .btn-primary, .btn-secondary, .btn-three {
            background-color: #d63384;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-primary:active, .btn-secondary:active, .btn-three:active {
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>

<body class="bg-light">


<c:set var = "cus" value = "${Customer}"/>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg" style="width: 100%; max-width: 500px;">
        <div class="card-header text-white text-center">
            <h3>My Profile</h3>
        </div>
        
<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" name = "name" value = "${cus.name }" placeholder="W.Mineth Perera">
  <label for="floatingInput">Name</label>
</div>

<div class="form-floating mb-3">
  <input type="text" class="form-control" id="floatingInput" name = "age" value = "${cus.age }" placeholder="22">
  <label for="floatingInput">Age</label>
</div>

<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInput" name = "email" value = "${cus.email }"placeholder="name@example.com">
  <label for="floatingInput">Email address</label>
</div>
	
<div class="form-floating">
  <input type="password" class="form-control" id="floatingPassword" name = "password" value = "${cus.password }" placeholder="Password">
  <label for="floatingPassword">Password</label>
</div>

<form action = "cusUpdate.jsp" method = "post">
	<input type = "hidden" name = "name" value = "${cus.name }">
	<input type = "hidden" name = "age" value = "${cus.age }">
	<input type = "hidden" name = "email" value = "${cus.email }">
	<input type = "hidden" name = "password" value = "${cus.password }">
	
	<div class="d-grid">
                    <button type="submit" class="btn btn-primary">Update</button><br>
                </div>
</form>


	<form action = "AdminCustomers" method = "post">
		<button type = "submit" class = "btn btn-three">All Customers</button>
	</form>


<div class="card-footer text-center">
            <a href="home.jsp" class="btn btn-secondary">Back</a>
        </div>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>