<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StockTrad-Z</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-image: url('/images/back.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            min-height: 100vh;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .navbar-brand {
            font-size: 28px;
            font-weight: bold;
            color: #a7d129;
        }

        .navbar-toggler-icon {
            background-color: #fff;
        }

        .navbar-nav .nav-link {
            font-weight: bold;
            color: #fff;
        }

        .navbar-nav .nav-link.active {
            color: #ffd571;
        }

        .welcome-user {
            font-weight: bold;
            color: #ffd571;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">StockTrad-Z</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" href="/inboard">Home</a>
                <a class="nav-link" href="/orders">Orders</a>
                <a class="nav-link" href="/product">Trade</a>
            </div>
            <h5 class="welcome-user ms-auto">Welcome ${usr}</h5>
            <a class="nav-link ms-auto" href="/logout">Logout</a>
        </div>
    </div>
</nav>

</body>
</html>
