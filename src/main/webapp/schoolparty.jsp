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
            flex-wrap: wrap;
            justify-content: center;
        }

        .card {
            width: 300px;
            height: 400px;
            margin: 15px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            border: none;
            perspective: 1000px;
        }

        .card-body {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .card-body img {
            height: 150px;
            width: 100%;
            object-fit: cover;
            border-radius: 10px;
        }

        .card-body:hover {
            transform: translateY(-10px) scale(1.05);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.5);
        }

        .card-title {
            font-size: 1.5rem;
            margin-top: 15px;
        }

        .card-text {
            flex-grow: 1;
        }

        .price {
            font-weight: bold;
            color: #d63384;
            font-size: 1.2rem;
        }

        .buy-btn {
            background-color: #d63384;
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
        }

        .buy-btn:hover {
            background-color: #c0246b;
        }

        .back-btn {
            background-color: #d63384; /* Match navbar color */
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
                    <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
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
        <h1>School Party Packages</h1>
        <p>Select from our fun school party packages.</p>
    </div>
</header>

<!-- School Party Packages Section -->
<div class="container my-5">
    <div class="card-container">
        <!-- Card 1: Basic School Party Package -->
        <div class="card">
            <div class="card-body">
                <img src="sp1.jpg" alt="Basic School Party Package">
                <h5 class="card-title">Basic School Party Package</h5>
                <p class="card-text">Enjoy a simple school party with balloons, a themed cake, and fun games for the kids.</p>
                <p class="price">$150</p>
                <a href="addorder.jsp" class="buy-btn">Buy Now</a>
            </div>
        </div>

        <!-- Card 2: Deluxe School Party Package -->
        <div class="card">
            <div class="card-body">
                <img src="sc2.png" alt="Deluxe School Party Package">
                <h5 class="card-title">Deluxe School Party Package</h5>
                <p class="card-text">Create unforgettable memories with special decorations, a larger cake, and exciting activities.</p>
                <p class="price">$350</p>
                <a href="addorder.jsp" class="buy-btn">Buy Now</a>
            </div>
        </div>

        <!-- Card 3: Ultimate School Party Package -->
        <div class="card">
            <div class="card-body">
                <img src="sc3.jpg" alt="Ultimate School Party Package">
                <h5 class="card-title">Ultimate School Party Package</h5>
                <p class="card-text">Get the full party experience with customized decorations, snacks, and a professional entertainer.</p>
                <p class="price">$700</p>
                <a href="addorder.jsp" class="buy-btn">Buy Now</a>
            </div>
        </div>
    </div>
</div>
<!-- Back to Services Button -->
<div class="container text-center my-3">
    <a href="service.jsp" class="back-btn">Back to Services</a>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p>Online Event Planner. All rights reserved.</p>
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
