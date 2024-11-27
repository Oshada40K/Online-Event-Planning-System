<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Payment Details Table</title>

    <style>
        body {
            background-image: url('homebackground.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar {
            background-color: #d63384;
        }

        .navbar-brand {
            font-weight: bold;
        }

        header {
            background-color: rgba(215, 51, 132, 0.8);
            padding: 50px 0;
            color: white;
            text-align: center;
        }

        header h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        header p {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        table {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            margin-top: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        th, td {
            text-align: center;
        }

        .btn-primary, .btn-custom, .btn-secondary {
            background-color: #d63384;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-primary:active, .btn-custom:active, .btn-secondary:active {
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-top: auto;
        }

        footer a {
            color: white;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #d63384;">
    <div class="container-fluid">
        <a class="navbar-brand" href="HomePage.jsp">Event Planner</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="service.jsp">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp#aboutUs">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp#contactUs">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-light text-dark ms-3" href="cusLogin.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header>
    <div class="container">
        <h1>Payment Details Table</h1>
        <p>View and manage all your submitted details.</p>
    </div>
</header>

<div class="container mt-5">
    <table class="table table-striped table-bordered shadow-lg">
        <thead>
            <tr>
                <th scope = "col">Full Name</th>
                <th scope = "col">Email</th>
                <th scope = "col">Address</th>
                <th scope = "col">City</th>
                <th scope = "col">State</th>
                <th scope = "col">Zip Code</th>
                <th scope = "col">Card Holder Name</th>
                <th scope = "col">Credit Card Number</th>
                <th scope = "col">Expiration Date</th>
                <th scope = "col">CVV</th>
            </tr>
        </thead>
        <tbody>
        	 <c:forEach var = "pay" items = "${payment}">
        	 <tr>
        			<td>${pay.fname }</td>
        			<td>${pay.email }</td>
        			<td>${pay.address }</td>
        			<td>${pay.city }</td>
        			<td>${pay.state }</td>
        			<td>${pay.zip }</td>
        			<td>${pay.cardname }</td>
        			<td>${pay.cardnumber }</td>
        			<td>${pay.expmonth }</td>
        			<td>${pay.cvv }</td>
        			<td>
        			<form action = "PaymentDataButton" method = "post">
        				<input type = "hidden" name = "email" value = "${pay.email }">
        				<button type = "submit">Data</button>
        			</form>
        			</td>
        			
        			<td>
   				<form action = "DeletePayment" method = "post">
   					<input type = "hidden" name = "email" value = "${pay.email }">
   					<button type = "submit">Delete</button> 
   				</form>
   			</td>
        		</tr>
        		
        	</c:forEach>
        </tbody>
</table>
</div>
<!-- Footer -->
<footer>
    <div class="container">
        <p>&copy; 2024 Event Planner. All rights reserved.</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            <li class="list-inline-item"><a href="#">Terms of Use</a></li>
        </ul>
    </div>
</footer>

<script src="js/bootstrap.bundle.min.js"></script>
</body>