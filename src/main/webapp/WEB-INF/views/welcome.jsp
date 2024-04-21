<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome to StockTrad-Z</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.7)), url("https://source.unsplash.com/1920x1080/?finance");
            background-size: cover;
            background-position: center;
            font-family: 'Montserrat', sans-serif;
            color: #fff;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .quote {
            font-weight: bold;
            font-family: cursive;
            font-size: 25px;
            color: #1dbc67;
            margin-bottom: 30px;
        }

        .logo-heading {
            color: #cf1b1b;
            font-weight: bold;
            font-family: cursive;
            font-size: 50px;
            margin-bottom: 20px;
        }

        .welcome-msg {
            text-align: center;
            font-weight: bold;
            font-size: 28px;
            margin-bottom: 30px;
        }

        .btn-start {
            font-size: 20px;
            padding: 10px 30px;
            border-radius: 30px;
            background-color: #cf1b1b;
            color: #fff;
            transition: background-color 0.3s ease;
        }

        .btn-start:hover {
            background-color: #a51515;
        }
    </style>
</head>
<body>
    <h2 class="logo-heading">StockTrad-Z</h2>
    <div class="quote">"Get a <u>SOLID</u> <u>GRASP</u> of your financial assets"</div>
    <div class="welcome-msg">
        <b>WELCOME</b><br>
        You are seconds away from earning your own money!
    </div>
    <a class="btn btn-start" href="/login" role="button">Get Started</a>
</body>
</html>