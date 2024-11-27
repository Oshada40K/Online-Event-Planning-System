<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Payment Confirmation</title>

    <style>
        body {
            background-image: url('homebackground.jpg'); /* Update the path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        /* 3D effect on the card */
        .card {
            background-color: rgba(255, 255, 255, 0.7); /* Transparent white */
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3); /* 3D shadow */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Hover effect to give it a more 3D feel */
        .card:hover {
            transform: translateY(-10px); /* Slightly raise the card on hover */
            box-shadow: 0 16px 40px rgba(0, 0, 0, 0.4); /* Increase shadow for 3D effect */
        }

        /* Styling for the card header */
        .card-header {
            background-color: #d63384; /* New color */
            border-radius: 15px 15px 0 0;
        }

        /* Style adjustments for the 'Confirm Payment' button */
        .btn-primary {
            background-color: #d63384; /* Updated color */
            background: linear-gradient(145deg, #d63384, #a02761); /* Add gradient for a more stylish button */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Add depth to the button */
        }

        .btn-primary:active {
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.2); /* Pressed effect for button */
        }

        /* Style adjustments for the 'Back' button */
        .btn-secondary {
            background-color: #d63384; /* Updated color */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add depth to the back button */
        }

        .navbar {
            background-color: #d63384; /* Theme color */
        }

        .navbar-brand {
            font-weight: bold;
        }

        /* Header section styling */
        header {
            background-color: rgba(215, 51, 132, 0.8); /* Semi-transparent theme color */
            padding: 10px 0;
            color: white;
            text-align: center;
        }

        header h1 {
            font-size: 2.5rem; /* Adjust header font size */
            font-weight: bold;
        }

        header p {
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 50px 0; /* Reduced padding for compactness */
            text-align: center;
            margin: 0px 0; /* Set margin for the footer */
        }

        footer a {
            color: white;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>

    <script>
        function validateForm() {
            // Full Name validation
            const fullName = document.forms["paymentForm"]["fname"].value.trim();
            if (fullName.length < 3) {
                alert("Full Name must be at least 3 characters long.");
                return false;
            }

            // Email validation
            const email = document.forms["paymentForm"]["email"].value.trim();
            const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!email.match(emailPattern)) {
                alert("Please enter a valid email address.");
                return false;
            }

            return true;
        }
    </script>
</head>

<body class="bg-light">
    <!-- Navbar (Header) -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="HomePage.jsp">Event Planner</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="HomePage.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Service.jsp">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="HomePage.jsp#aboutUs">About Us</a> <!-- Linked to About Us section -->
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="HomePage.jsp#contactUs">Contact</a> <!-- Linked to Contact Us section -->
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
        <div class="container">
            <h1>Confirm Your Payment</h1>
            <p>Secure and fast payment processing for your event.</p>
        </div>
    </header>

    <!-- Login Form -->
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width: 100%; max-width: 400px;">
            <div class="card-header text-white text-center">
                <h3>Payment Confirmation</h3>
            </div>
            <div class="card-body">
                <form name="paymentForm" action="PaymentConfirmation" method="post" onsubmit="return validateForm()">
                    <div class="mb-3">
                        <label for="fname" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="fname" name="fname" placeholder="Enter your full name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Confirm Payment</button>
                    </div>
                </form>
            </div>
            <div class="card-footer text-center">
                <a href="home.jsp" class="btn btn-secondary">Back</a>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
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
</html>
