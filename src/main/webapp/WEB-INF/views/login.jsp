<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
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
            margin-top: 110px;
            max-width: 700px;
            height: 520px;
            border: 3px solid #9c9c9c;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-6">
            <div id="login-box">
                <font color="red">${errorMessage}</font>
                <form id="login-form" class="form" method="post" modelAttribute="login">
                    <h3 class="text-center text-info">Login</h3>
                    <div class="mb-3">
                        <label for="username" class="form-label text-info">Username:</label>
                        <input type="text" name="username" id="username" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label text-info">Password:</label>
                        <input type="password" name="password" id="password" class="form-control">
                    </div>
                    <div class="mb-3 text-center">
                        <input type="submit" class="btn btn-info btn-md" value="Login">
                    </div>
                </form>
                <div class="text-center">
                    <form action="/register">
                        <input type="submit" class="btn btn-info btn-md" value="Register Here">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
