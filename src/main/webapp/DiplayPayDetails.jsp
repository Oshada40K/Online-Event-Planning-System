<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>

<html lang="en">



<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="css/bootstrap.min.css">

<title>Event Planner - Payment Page</title>



<style>

body {

background-image: url('homebackground.jpg');

background-size: cover;

background-position: center;

background-repeat: no-repeat;

}



.navbar {

background-color: #d63384;

}



.navbar-brand {

font-weight: bold;

}



header {

background-color: rgba(215, 51, 132, 0.8);

padding: 30px 0;

color: white;

text-align: center;

}



header h1 {

font-size: 2.5rem;

font-weight: bold;

}



header p {

font-size: 1.5rem;

margin-bottom: 20px;

}



.payment-container {

display: flex;

justify-content: space-between;

background-color: rgba(255, 255, 255, 0.9);

padding: 30px;

border-radius: 15px;

box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);

margin: 50px auto;

max-width: 900px;

}



.input-box {

margin-bottom: 15px;

}



.input-box span {

display: block;

font-weight: bold;

}



.input-box input {

width: 100%;

padding: 8px;

border-radius: 5px;

border: 1px solid #ddd;

}



.btn {

background-color: #d63384;
color: white;
padding: 10px;
border-radius: 5px;
width: 100%;
border: none;
cursor: pointer;

}

.btn:hover {
            background-color: #c0246b;
            color: white;
        }



footer {

background-color: #333;

color: white;

padding: 10px 0;

text-align: center;

position: relative;

bottom: 0;

width: 100%;

}



footer a {

color: white;

text-decoration: none;

}



footer a:hover {

text-decoration: underline;

}



.column {

flex-basis: 45%;

}

</style>

</head>



<body>

<c:set var = "pay" value = "${payment}"/>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container-fluid">

<a class="navbar-brand" href="HomePage.jsp">Event Planner</a>

<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"

aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse" id="navbarNav">

<ul class="navbar-nav ms-auto">

<li class="nav-item">

<a class="nav-link active" href="HomePage.jsp">Home</a>

</li>

<li class="nav-item">

<a class="nav-link" href="Service.jsp">Services</a>

</li>

<li class="nav-item">

<a class="nav-link" href="HomePage.jsp#aboutUs">About Us</a>

</li>

<li class="nav-item">

<a class="nav-link" href="HomePage.jsp#contactUs">Contact</a>

</li>

<li class="nav-item">

<a class="nav-link btn btn-light text-dark ms-3" href="Login.jsp">Login</a>

</li>

</ul>

</div>

</div>

</nav>



<!-- Header Section -->

<header>

<h1>Your Payment Details</h1>

<p>Your information is safe with us</p>

</header>



<!-- Payment Section -->

<div class="container">

<div class="payment-container">

<!-- Billing Information (Left) -->

<div class="column">

<h3>Billing Information</h3>



<div class="input-box">

<span>Full Name:</span>

<input type="text" name="fname" placeholder="Enter your name"  value = "${pay.fname }" required>

</div>



<div class="input-box">

<span>Email:</span>

<input type="email" name="email" placeholder="Enter your email" value = "${pay.email }"  required>

</div>



<div class="input-box">

<span>Address:</span>

<input type="text" name="address" placeholder="Enter your address" value = "${pay.address }"  required>

</div>



<div class="input-box">

<span>City:</span>

<input type="text" name="city" placeholder="Enter your city" value = "${pay.city }"  required>

</div>



<div class="input-box">

<span>State:</span>

<input type="text" name="state" placeholder="Enter your state" value = "${pay.state }"  required>

</div>



<div class="input-box">

<span>Zip Code:</span>

<input type="number" name="zip" placeholder="Enter your zip code" value = "${pay.zip }"  required>

</div>

</div>

<!-- Payment Information (Right) -->

<div class="column">

<h3>Payment Information</h3>

<div class="input-box">

<span>Card Holder Name:</span>

<input type="text" name="cardname" placeholder="Enter name on card" value = "${pay.cardname }" required>

</div>



<div class="input-box">

<span>Credit Card Number:</span>

<input type="number" name="cardnumber" placeholder="Enter your card number" value = "${pay.cardnumber }"  required>

</div>



<div class="input-box">

<span>Expiration Date:</span>

<input type="text" name="expmonth" placeholder="MM/YY" value = "${pay.expmonth }"  required>

</div>



<div class="input-box">

<span>CVV:</span>

<input type="number" name="cvv" placeholder="CVV" value = "${pay.cvv }"  required>

</div>


<br>

<form action = "PaymentDetailsUpdate.jsp">
<input type = "hidden" name = "fname" value = "${pay.fname }">
<input type = "hidden" name = "email" value = "${pay.email }">
<input type = "hidden" name = "address" value = "${pay.address }">
<input type = "hidden" name = "city" value = "${pay.city }">
<input type = "hidden" name = "state" value = "${pay.state }">
<input type = "hidden" name = "zip" value = "${pay.zip }">
<input type = "hidden" name = "cardname" value = "${pay.cardname }">
<input type = "hidden" name = "cardnumber" value = "${pay.cardnumber }">
<input type = "hidden" name = "expmonth" value = "${pay.expmonth }">
<input type = "hidden" name = "cvv" value = "${pay.cvv }">

<button type="submit" class="btn">Update Details</button><br><br>
</form>

<form action = "TablePaymentSercve" method = "post">
	<button type="submit" class="btn">All Payment Details</button>
</form>


</div>

</div>

</div>



<!-- Footer -->

<footer>

<p>&copy; 2024 Event Planner. All rights reserved.</p>

<ul class="list-inline">

<li class="list-inline-item"><a href="#">Privacy Policy</a></li>

<li class="list-inline-item"><a href="#">Terms of Use</a></li>

</ul>

</footer>



<script src="js/bootstrap.bundle.min.js"></script>

</body>



</html>