<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Customer Management - Event Planning System</title>

    <style>
        body {
            background-image: url('homebackground.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            opacity: 0;
            transition: opacity 1s ease-in-out; /* Smooth fade-in effect */
        }

        .navbar {
            background-color: #d63384; /* Theme color */
        }

        .navbar-brand {
            font-weight: bold;
        }

        .card-header {
            background-color: #d63384; /* Theme color */
            color: white;
        }

        .btn-info {
            background-color: #d63384; /* Theme color */
            border-color: #d63384;
            color: white;
        }

        .btn-info:hover {
            background-color: #c0246b; /* Darker theme shade on hover */
            border-color: #c0246b;
        }

        .btn-danger {
            background-color: #d63384; /* Theme color */
            border-color: #d63384;
            color: white;
        }

        .btn-danger:hover {
            background-color: #c0246b; /* Darker theme shade on hover */
            border-color: #c0246b;
        }

        /* Footer section styling */
        footer {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-top: auto; /* Ensure footer stays at the bottom */
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

<!-- Main Content: Customer Management Section -->
<div class="container my-5">
    <div class="card shadow-lg">
        <div class="card-header text-center">
            <h3>Supplier Information</h3>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-hover align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">UserName</th>
                            <th scope="col">Password</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cus" items="${supplier}">
                            <tr>
                                <td>${cus.name } </td>
								<td>${cus.email } </td>
								<td>${cus.user } </td>
								<td>${cus.password.replaceAll(".", "*")} </td>
                                <td>
                                    <div class="d-flex">
                                        <form action="singleDataButton" method="post" class="me-2">
                                            <input type="hidden" name="email" value="${cus.email }">
                                            <button type="submit" class="btn btn-info btn-sm">
                                                <i class="fas fa-info-circle"></i> Data
                                            </button>
                                        </form>
                                        <form action="deleteSupplier" method="post">
                                            <input type="hidden" name="email" value="${cus.email }">
                                            <button type="submit" class="btn btn-danger btn-sm">
                                                <i class="fas fa-trash-alt"></i> Delete
                                            </button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card-footer text-muted text-center">
            &copy; 2024 Customer Management System
        </div>
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

<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script>
    // Fade-in effect on page load
    window.onload = function() {
        document.body.style.opacity = "1";
    };

    // Smooth fade-out transition when clicking links
    document.querySelectorAll('a').forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const href = this.href;
            document.body.classList.add('fade-out'); // Apply fade-out effect
            setTimeout(function() {
                window.location.href = href; // Redirect after fade-out
            }, 500); // Delay the redirect to match the fade-out duration
        });
    });
</script>
</body>
</html>
