<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Register</title>

    <style>
        body {
            background-image: url('homebackground.jpg'); /* Update the path to your image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        /* Card Styling */
        .card {
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white */
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3); /* 3D shadow */
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px); /* Hover effect */
            box-shadow: 0 16px 40px rgba(0, 0, 0, 0.4);
        }

        .card-header {
            background-color: #d63384;
            border-radius: 15px 15px 0 0;
        }

        .btn-primary {
            background-color: #d63384;
            background: linear-gradient(145deg, #d63384, #a02761);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .btn-primary:active {
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        .btn-secondary {
            background-color: #d63384;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>

    <script>
        // Client-side validation function
        function validateForm() {
            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const number = document.getElementById('number').value.trim();
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();

            // Name validation
            if (name === "") {
                alert("Name is required.");
                return false;
            }

            // Email validation
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Phone number validation (only digits allowed, 10-15 characters)
            const phonePattern = /^[0-9]{10,15}$/;
            if (!phonePattern.test(number)) {
                alert("Please enter a valid phone number (10-15 digits).");
                return false;
            }

            // Username validation
            if (username === "") {
                alert("Username is required.");
                return false;
            }

            // Password validation (at least 6 characters)
            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            }

            return true;
        }
    </script>
</head>

<body class="bg-light">

    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width: 100%; max-width: 400px;">
            <div class="card-header text-white text-center">
                <h3>Register</h3>
            </div>
            <div class="card-body">
                <form action="StaffRejister" method="post" onsubmit="return validateForm()">
                    <div class="mb-3">
                        <label for="name" class="form-label">Enter Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Enter Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                    <div class="mb-3">
                        <label for="number" class="form-label">Enter Phone Number</label>
                        <input type="text" class="form-control" id="number" name="number" placeholder="Enter your phone number" required>
                    </div>
                    <div class="mb-3">
                        <label for="username" class="form-label">User Name</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>
                </form>
            </div>
            <div class="card-footer text-center">
                <a href="loging.jsp" class="btn btn-secondary">Back</a>
            </div>
        </div>
    </div>

    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>
