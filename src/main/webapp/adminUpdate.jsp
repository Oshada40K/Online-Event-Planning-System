<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Update Profile</title>

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

        .btn-primary, .btn-secondary {
            background-color: #d63384;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-primary:active, .btn-secondary:active {
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg" style="width: 100%; max-width: 500px;">
        <div class="card-header text-white text-center">
            <h3>Update Profile</h3>
        </div>
        <div class="card-body">
            <form action="updateadmin" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Enter Name</label>
                    <input type="text" class="form-control" id="name" name="name" value="${param.name}" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Enter Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="${param.email}" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="text" class="form-control" id="password" name="password" value="${param.password}" required>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">User Name</label>
                    <input type="text" class="form-control" id="username" name="username" value="${param.username}" required>
                </div>
               
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
        <div class="card-footer text-center">
            <a href="home.jsp" class="btn btn-secondary">Back</a>
        </div>
    </div>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
