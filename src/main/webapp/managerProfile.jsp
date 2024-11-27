<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Manager Profile</title>

    <style>
        body {
            background-image: url('homebackground.jpg'); /* Update with your background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.9); /* Transparent white */
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
        }

        .btn-primary, .btn-success, .btn-secondary {
            background-color: #d63384;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-primary:active, .btn-success:active, .btn-secondary:active {
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .action-container {
            margin-top: 20px;
        }

        .action-container .card {
            background-color: rgba(255, 255, 255, 0.95); /* Slightly more opaque for better visibility */
        }

        .action-container .card-header {
            font-size: 1.25rem;
            font-weight: bold;
        }

    </style>
</head>
<body class="bg-light">

<!-- Manager Profile and Action Buttons Container -->
<div class="container mt-5">
    <div class="row">
        <!-- Manager Profile (Left) -->
        <div class="col-md-6">
            <div class="card shadow-lg mb-4">
                <div class="card-header text-white text-center">
                    <h3>My Profile</h3>
                </div>
                <div class="card-body">
                    <c:set var="cus" value="${mgModel}"/>
                    <form>
                        <fieldset disabled>
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name" value="${cus.name}">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="text" class="form-control" id="email" name="email" value="${cus.email}">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="text" class="form-control" id="phone" name="phone" value="${cus.phone}">
                            </div>
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username" value="${cus.username}">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" value="${cus.password}">
                            </div>
                        </fieldset>
                    </form>
                </div>

                <!-- Update Profile Button -->
                <div class="card-footer d-flex justify-content-between">
                    <form action="Update.jsp" method="post">
                        <input type="hidden" name="name" value="${cus.name}">
                        <input type="hidden" name="email" value="${cus.email}">
                        <input type="hidden" name="phone" value="${cus.phone}">
                        <input type="hidden" name="username" value="${cus.username}">
                        <input type="hidden" name="password" value="${cus.password}">
                        <button type="submit" class="btn btn-success">Update Profile</button>
                    </form>
                    <a href="home.jsp" class="btn btn-secondary">Back</a>
                </div>
            </div>
        </div>

        <!-- Action Buttons (Right) -->
        <div class="col-md-6">
            <!-- View All Managers -->
            <div class="card shadow-sm mb-4">
                <div class="card-header text-center">
                    View All Managers
                </div>
                <div class="card-body text-center">
                    <form action="mgcustomer" method="post">
                        <button type="submit" class="btn btn-success w-100">All Managers</button>
                    </form>
                </div>
            </div>

            <!-- View All Complaints -->
            <div class="card shadow-sm">
                <div class="card-header text-center">
                    View All Complaints
                </div>
                <div class="card-body text-center">
                    <form action="comtable" method="post">
                        <button type="submit" class="btn btn-success w-100">All Complaints</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
