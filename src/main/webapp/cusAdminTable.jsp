<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Customer List</title>
    <style>
        body {
            background-image: url('homebackground.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh;
        }

        .table-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        table {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
        }

        thead {
            background-color: #d63384;
            color: white;
        }

        tbody tr:hover {
            background-color: rgba(215, 51, 132, 0.1);
        }

        button {
            background-color: #d63384;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #c0246b;
        }

        .btn-group {
            display: flex;
            gap: 10px;
        }

        @media (max-width: 768px) {
            table {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

<div class="container table-container">
    <table class="table table-hover table-bordered">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Age</th>
                <th scope="col">Email</th>
                <th scope="col">Password</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cus" items="${Customer}">
                <tr>
                    <td>${cus.name}</td>
                    <td>${cus.age}</td>
                    <td>${cus.email}</td>
                    <td>${cus.password}</td>
                    <td>
                        <div class="btn-group">
                            <!-- Edit Button -->
                            <form action="SignleDataButton" method="post" style="display:inline;">
                                <input type="hidden" name="email" value="${cus.email}">
                                <button type="submit" class="btn btn-sm btn-primary">Edit</button>

                            </form>

                            <!-- Delete Button -->
                            <form action="DeleteCustomer" method="post" style="display:inline;">
                                <input type="hidden" name="email" value="${cus.email}">
                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                            </form>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
