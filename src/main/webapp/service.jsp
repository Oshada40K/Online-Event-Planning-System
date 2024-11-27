<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Home Page - Event Planning System</title>
    
    <style>
        body {
            background-image: url('homebackground.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure the body takes at least the full height of the viewport */
        }

        /* Navbar styling */
        .navbar {
            background-color: #d63384; /* Theme color */
            transition: background-color 0.3s ease-in-out; /* Smooth transition for the navbar */
        }

        .navbar-brand {
            font-weight: bold;
        }

        /* Header section styling */
        header {
            background-color: rgba(215, 51, 132, 0.8); /* Semi-transparent theme color */
            padding: 50px 0;
            color: white;
            text-align: center;
            transition: background-color 0.3s ease-in-out; /* Smooth transition */
        }

        header h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        header p {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        /* Service section styling */
        .service-card {
            background-color: white;
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s; /* 3D effect on hover */
            position: relative;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Initial shadow */
        }

        .service-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .service-card:hover {
            transform: translateY(-10px) scale(1.05); /* Lift effect */
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2); /* Enhanced shadow on hover */
        }

        /* Footer section styling */
        footer {
            background-color: #333;
            color: white;
            padding: 10px 0; /* Reduced padding for compactness */
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

        /* View All Button styling */
        .view-all-btn {
            display: inline-block;
            margin-top: 5px; /* Add space above the button */
            padding: 10px 15px; /* Padding for the button */
            background-color: #d63384; /* Theme color */
            color: white; /* Text color */
            border-radius: 5px; /* Rounded corners */
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s ease-in-out; /* Smooth transition */
        }

        .view-all-btn:hover {
            background-color: #c0246b; /* Darker shade on hover */
        }

        /* Fade-in and Fade-out animations */
        .fade-in {
            opacity: 0;
            animation: fadeIn 0.5s forwards;
        }

        .fade-out {
            opacity: 1;
            animation: fadeOut 0.5s forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        @keyframes fadeOut {
            to {
                opacity: 0;
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
                    <a class="nav-link btn btn-light text-dark ms-3" href="logset.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Header Section -->
<header>
    <div class="container">
        <h1>Our Services</h1>
        <p>Your one-stop solution for unforgettable events.</p>
    </div>
</header>

<!-- Main Content Section with ID for Transitions -->
<div class="container my-5" id="content">
    <h2 class="text-center mb-4"></h2>
    <div class="row text-center">
        <!-- Service Cards -->
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="bday.jpg" alt="Birthday Party">
                <div class="card-body">
                    <h5 class="card-title">Birthday Party</h5>
                    <p class="card-text">Celebrate your special day with our customized birthday party planning services.</p>
                    <a href="birthday.jsp" class="view-all-btn">View All</a><br> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="school.jpeg" alt="School Party">
                <div class="card-body">
                    <h5 class="card-title">School Party</h5>
                    <p class="card-text">Fun and engaging party planning for school events, ensuring a memorable experience.</p>
                    <a href="schoolparty.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="outdoor.jpeg" alt="Outdoor Musical Show">
                <div class="card-body">
                    <h5 class="card-title">Outdoor Musical Show</h5>
                    <p class="card-text">Plan an unforgettable outdoor musical event with our expert team.</p>
                    <a href="outdoormusic.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="indoor.avif" alt="Indoor Musical Show">
                <div class="card-body">
                    <h5 class="card-title">Indoor Musical Show</h5>
                    <p class="card-text">Let us handle the details for your indoor musical show, creating a captivating atmosphere.</p>
                    <a href="indoormusic.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="outparty.avif" alt="Outdoor Party">
                <div class="card-body">
                    <h5 class="card-title">Outdoor Party</h5>
                    <p class="card-text">Enjoy the fresh air and fun with our expertly organized outdoor parties.</p>
                    <a href="outdoorparty.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="beach.jpg" alt="Beach Party">
                <div class="card-body">
                    <h5 class="card-title">Beach Party</h5>
                    <p class="card-text">Have a blast with our beach party planning, making your seaside event memorable.</p>
                    <a href="beachparty.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="corporate.jpg" alt="Corporate Party">
                <div class="card-body">
                    <h5 class="card-title">Corporate Party</h5>
                    <p class="card-text">Professional planning for corporate events, ensuring everything runs smoothly.</p>
                    <a href="coopareparty.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="wedding.jpg" alt="Wedding">
                <div class="card-body">
                    <h5 class="card-title">Wedding</h5>
                    <p class="card-text">Let us make your dream wedding a reality with our comprehensive planning services.</p>
                    <a href="wedding.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="service-card shadow-sm">
                <img src="party.avif" alt="Private Party">
                <div class="card-body">
                    <h5 class="card-title">Private Party</h5>
                    <p class="card-text">Whether it's an anniversary or a celebration, we ensure your private party is perfect.</p>
                    <a href="privateparty.jsp" class="view-all-btn">View All</a> <!-- View All button -->
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <p> Online Event Planner. All rights reserved.</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            <li class="list-inline-item"><a href="#">Terms of Use</a></li>
        </ul>
    </div>
</footer>

<!-- JavaScript for Smooth Page Transitions -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const content = document.getElementById("content");
        // Add fade-in effect on page load
        content.classList.add("fade-in");

        // Remove the fade-in class after animation completes
        content.addEventListener("animationend", function () {
            content.classList.remove("fade-in");
        });

        // Select all internal links for transition
        const links = document.querySelectorAll('a.nav-link, a.view-all-btn');

        links.forEach(function (link) {
            link.addEventListener("click", function (e) {
                // Check if the link is an internal link
                if (link.hostname === window.location.hostname || link.hostname === "") {
                    e.preventDefault();
                    const href = link.getAttribute("href");

                    // Add fade-out class
                    content.classList.add("fade-out");

                    // After fade-out animation ends, navigate to the new page
                    content.addEventListener("animationend", function () {
                        window.location.href = href;
                    }, { once: true });
                }
            });
        });
    });
</script>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
