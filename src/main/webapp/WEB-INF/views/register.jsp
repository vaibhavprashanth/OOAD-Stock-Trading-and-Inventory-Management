<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        body {
            background-image: url('/images/back.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
        }

        #login-box {
            background-color: #eaeaea;
            padding-top: 50px;
            margin-top: 100px;
            max-width: 700px;
            height: 590px;
            border: 3px solid #9c9c9c;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn-outline-info {
            color: #17a2b8;
            border-color: #17a2b8;
        }

        .btn-outline-info:hover {
            color: #fff;
            background-color: #17a2b8;
            border-color: #17a2b8;
        }
    </style>
</head>
<body>
<div id="Login">
    <div class="container">
        <div class="row justify-content-center align-items-center" style="height: 100vh;">
            <div class="col-md-6">
                <div id="login-box">
                    <form id="login-form" class="form" method="POST" modelAttribute="register">
                        <h3 class="text-center text-info">Register</h3>
                        <div class="form-group">
                            <label for="name" class="text-info">Name:</label>
                            <input type="text" name="name" id="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="username" class="text-info">Username:</label>
                            <input type="text" name="username" id="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="email" class="text-info">Email:</label>
                            <input type="email" name="email" id="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Password:</label>
                            <input type="password" name="password" id="password" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Submit" class="btn btn-outline-info">
                            <font color="red">${error}</font>
                            <font color="green">${success}</font>
                        </div>
                    </form>
                    <div class="text-center">
                        <form action="/login">
                            <input type="submit" class="btn btn-info btn-md" value="Login Here">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
