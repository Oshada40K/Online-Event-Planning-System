<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Private Party Event Packages</title>
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
            justify-content: center;
            gap: 50px;
            margin: 20px 0;
            flex-wrap: nowrap;
            overflow-x: auto; 
        }

        .card {
            width: 300px;
            border: none;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .card-body {
            padding: 20px;
            background-color: white;
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .card-text {
            margin-bottom: 20px;
        }

        .custom-button {
            background-color: #d63384;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .custom-button:hover {
            background-color: #c0246b;
        }

        .back-btn {
            background-color: #d63384; 
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            display: inline-block;
            margin-top: 20px;
        }

        .back-btn:hover {
            background-color: #c0246b;
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

        @media (max-width: 576px) {
            footer .list-inline-item {
                display: block;
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
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

<!-- Header Section -->
<header>
    <div class="container">
        <h1>Select your Login</h1>
 
    </div>
</header>

<!-- Cards Section -->
<div class="container">
    <div class="card-container">

        <div class="card">
            <img src="sup3.jpg" alt="Package 1">
            <div class="card-body">
                <h5 class="card-title">Customer Login</h5>
              
                <a href="cusLogin.jsp" class="custom-button">Click here</a>
            </div>
        </div>


        <div class="card">
            <img src="sup1.jpg" alt="Package 2">
            <div class="card-body">
                <h5 class="card-title">Supplier Login</h5>
        
                <a href="login.jsp" class="custom-button">Click here</a>
            </div>
        </div>

     
        <div class="card">
            <img src="sup2.jpg" alt="Package 3">
            <div class="card-body">
                <h5 class="card-title">Admin Login</h5>
           
                <a href="NewLogIn.jsp" class="custom-button">Click here</a>
            </div>
        </div>

    
        <div class="card">
            <img src="sup5.jpg" alt="Package 4">
            <div class="card-body">
                <h5 class="card-title">Manager Login</h5>
          
                <a href="loging.jsp" class="custom-button">Click here</a>
            </div>
        </div>
    </div>
</div>
<br><br><br><br><br><br><br><br>

<div class="container text-center my-3">
    <a href="home.jsp" class="back-btn">Back to Home</a>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p>&copy; 2024 Event Planner. All rights reserved.</p>
            </div>
            <div class="col-md-6">
                <ul class="list-inline text-md-end">
                    <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
                    <li class="list-inline-item"><a href="#">Terms of Use</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
