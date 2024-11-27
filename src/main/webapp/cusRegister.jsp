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
            const age = document.getElementById('age').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();

            // Name validation: Must not be empty or too short
            if (name === "" || name.length < 2) {
                alert("Please enter a valid name (at least 2 characters).");
                return false;
            }

            // Age validation: Must be a number between 1 and 120
            const ageValue = parseInt(age);
            if (isNaN(ageValue) || ageValue < 1 || ageValue > 120) {
                alert("Please enter a valid age between 1 and 120.");
                return false;
            }

            // Email validation (simple email format check)
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Password validation: Must be at least 6 characters long
            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            }

            return true; // Validation passed
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
                <form method="post" action="addCustomer" onsubmit="return validateForm()">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                    </div>
                    <div class="mb-3">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" class="form-control" id="age" name="age" placeholder="Enter your age" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
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
                <a href="home.jsp" class="btn btn-secondary">Back</a>
            </div>
        </div>
    </div>

    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>
