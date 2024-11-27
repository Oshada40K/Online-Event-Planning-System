<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Submit Complaint</title>

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

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9);
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
            color: white;
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

    <script>
        // Client-side validation function
        function validateForm() {
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            
            // Name validation: Must be at least 2 characters long
            if (name.length < 2) {
                alert("Name must be at least 2 characters long.");
                return false;
            }

            // Email validation using regular expression
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            return true; // All validations passed
        }
    </script>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #d63384;">
    <div class="container-fluid">
        <a class="navbar-brand" href="home.jsp">Event Planner</a>
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
                    <a class="nav-link" href="#aboutUs">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contactUs">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-light text-dark ms-3" href="loging.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header>
    <div class="container">
        <h1>Outdoor Musical Event Packages</h1>
        <p>Select from our exciting outdoor musical event packages.</p>
    </div>
</header>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg" style="width: 100%; max-width: 600px;">
        <div class="card-header">
            <h3>Submit Complaint</h3>
        </div>
        <div class="card-body">
            <!-- Complaint form -->
            <form method="post" action="addcomplaint" onsubmit="return validateForm()">
                <div class="form-group mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
                </div>

                <div class="form-group mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>

                <div class="form-group mb-3">
                    <label for="complaint" class="form-label">Complaint</label>
                    <input type="text" class="form-control" id="complaint" name="complaint" placeholder="Enter complaint" required>
                </div>

                <button type="submit" class="btn btn-primary w-100">Submit</button>
            </form>
        </div>

        <!-- Back to Home Button -->
        <a href="home.jsp" class="btn btn-secondary w-100">Back to Home</a>
    </div>
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
</html>
