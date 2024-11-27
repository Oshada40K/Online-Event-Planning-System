<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Invalid Page - Event Planning System</title>
    <style>
        body {
            position: relative;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f8f9fa; /* Light background color */
            opacity: 0;
            transition: opacity 0.5s ease-in-out; /* Smooth fade-in */
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin: auto; /* Centering the container */
            margin-top: 50px; /* Add some space at the top */
            text-align: center;
        }

        h1 {
            color: #d63384; /* Theme color */
            font-size: 3rem;
            margin-bottom: 20px;
        }
        
        header {
            background-color: rgba(215, 51, 132, 0.8);
            padding: 50px 0;
            color: white;
            text-align: center;
        }

        .btn {
            background-color: #d63384; /* Theme color */
            color: white;
        }

        .btn:hover {
            background-color: #c82572; /* Darker shade on hover */
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-top: auto; /* Ensure footer sticks to bottom */
        }

        footer a {
            color: white;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        .description {
            margin: 20px 0; /* Add spacing around description */
            font-size: 1.2rem;
            color: #555; /* Slightly darker text color for description */
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #d63384;">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Event Planner</a>
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
    <div class="container my-5">
        <h1>INVALID PAGE</h1>
        <p>We're sorry, but the page you are looking for does not exist or is invalid.</p>
        <div class="description">
            Please check the URL for any errors or return to the home page for more options.
        </div>
        <a href="home.jsp" class="btn btn-primary">Back to Home</a>
    </div>
</header>

<!-- Footer -->
<footer>
  
        <p>&copy; 2024 Event Planner. All rights reserved.</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            <li class="list-inline-item"><a href="#">Terms of Use</a></li>
        </ul>
    
</footer>

<script src="js/bootstrap.bundle.min.js"></script>
<script>
    // Fade-in effect on page load
    window.onload = function() {
        document.body.style.opacity = "1";
    };
</script>
</body>
</html>
