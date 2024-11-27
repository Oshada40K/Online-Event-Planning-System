<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <meta charset="UTF-8">
  <title>Login Page</title>

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

        /* Style adjustments for the 'Login' button */
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
        // Client-side validation function
        function validateForm() {
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();

            // Email validation (simple email format check)
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Password validation (at least 6 characters)
            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            }

            return true; // Validation passed
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
            <h1>Welcome to Our Event Planning System</h1>
            <p>Your one-stop solution for unforgettable events.</p>
        </div>
    </header>

    <!-- Login Form -->
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width: 100%; max-width: 400px;">
            <div class="card-header text-white text-center">
                <h3>Login</h3>
            </div>
            <div class="card-body">
                <form action="LoginServelet" method="post" onsubmit="return validateForm()">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Login</button>
                        <p>If you don't have an account? <a href="cusRegister.jsp">SIGN UP</a></p>
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
