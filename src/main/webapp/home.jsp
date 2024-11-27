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
            position: relative;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            opacity: 0;
            transition: opacity 0.5s ease-in-out; /* Smooth fade-in and fade-out */
        }

        /* Background image with opacity */
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-image: url('homebackground.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            opacity: 0.5;
            z-index: -1;
        }

        /* Navbar styling */
        .navbar {
            background-color:  #d63384; /* Theme color */
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
        }

        header h1 {
            font-size: 3rem;
            font-weight: bold;
        }

        header p {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        /* Event section styling */
        .event-card {
            background-color: white;
            border-radius: 15px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            position: relative;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .event-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .event-card:hover {
            transform: translateY(-10px) scale(1.05);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        /* About Us and Contact Us sections styling */
        .about-us, .contact-us {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        /* Complaint section styling */
        .complaint-section {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        /* Footer section styling */
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
                    <a class="nav-link btn btn-light text-dark ms-3" href="logset.jsp">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Header Section -->
<header>
    <div class="container">
        <h1>Welcome to Our Online Event Planning System</h1>
        <p>Your one-stop solution for unforgettable events.</p>
        <a href="service.jsp" class="btn btn-light btn-lg">Get Started</a>
    </div>
</header>

<!-- Main Content Section -->
<div class="container my-5">
    <h1 class="text-center mb-4">Our Events</h1>
    <div class="row text-center">
        <div class="col-lg-4 mb-4">
            <div class="event-card shadow-sm">
                 <a href ="coopareparty.jsp"> <img src="corporate.jpg" alt="Corporate Event"> </a>
                <div class="card-body">
                    <h5 class="card-title">Corporate Event</h5>
                    <p class="card-text">Join us for comprehensive planning services for corporate events, from meetings to large conferences.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="event-card shadow-sm">
                <a href ="wedding.jsp">  <img src="wedding.jpg" alt="Wedding"> </a>
                <div class="card-body">
                    <h5 class="card-title">Wedding Planning</h5>
                    <p class="card-text">Our expert team helps you plan the perfect wedding, ensuring every detail is taken care of.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="event-card shadow-sm">
              <a href ="privateparty.jsp">  <img src="party.avif" alt="Private Party"> </a>
                <div class="card-body">
                    <h5 class="card-title">Private Party</h5>
                    <p class="card-text">Whether it's a birthday, anniversary, or celebration, we make sure your event is a success.</p>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container" id="aboutUs">
    <div class="about-us text-center">
        <h2>About Us</h2>
        <p>At Event Planner, we specialize in making your events unforgettable. Our team is dedicated to providing top-notch planning services tailored to your unique needs. From corporate events to weddings and private parties, we handle every detail so you can enjoy your special occasion.</p>
        <p>With years of experience in the industry, we pride ourselves on our attention to detail, creativity, and professionalism. Let us help you bring your vision to life!</p>
    </div>
</div>


<div class="container" id="contactUs">
    <div class="contact-us text-center">
        <h2>Contact Us</h2>
        <form>
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Your Name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Your Email" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message</label>
                <textarea class="form-control" id="message" rows="4" placeholder="Your Message" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send Message</button>
        </form>
    </div>
</div>

<div class="container complaint-section text-center my-5">
    <h2>Customer Complaints</h2>
    <p>If you have any complaints or issues, please let us know by filling out the form below:</p>
    <form action="complaint.jsp" method="post">
     
        <button type="submit" class="btn btn-danger">Submit Complaint</button>
    </form>
</div>

<!-- Footer -->
<footer>
    <div class="container">
        <p>Online Event Planner. All rights reserved.</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
            <li class="list-inline-item"><a href="#">Terms of Use</a></li>
        </ul>
    </div>
</footer>

<script src="js/bootstrap.bundle.min.js"></script>
<script>
    // Fade-in effect on page load
    window.onload = function() {
        document.body.style.opacity = "1";
    };

    // Smooth fade-out transition when clicking links
    document.querySelectorAll('a').forEach(function(link) {
        link.addEventListener('click', function(e) {
            if (link.getAttribute('href') && link.getAttribute('href').charAt(0) !== '#') {
                e.preventDefault();
                document.body.style.opacity = "0";
                setTimeout(function() {
                    window.location.href = link.getAttribute('href');
                }, 500); // Match the transition duration
            }
        });
    });
</script>
</body>
</html>
