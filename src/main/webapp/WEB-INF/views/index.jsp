<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shares List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .navbar-brand {
            color: #a7d129;
            font-size: 28px;
            font-weight: bold;
        }

        .navbar-toggler-icon {
            background-color: #fff;
        }

        .navbar-nav .nav-link {
            font-weight: bold;
            color: #fff;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .table-striped tbody tr:nth-of-type(even) {
            background-color: rgba(0, 0, 0, 0.1);
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
            <a class="nav-link ms-auto" href="/">Logout</a>
        </div>
    </div>
</nav>
<div class="container mt-4">
    <table class="table table-striped">
        <thead>
        <tr align="center">
            <th scope="col">Id</th>
            <th scope="col">Share Name</th>
            <th scope="col">Low</th>
            <th scope="col">High</th>
            <th scope="col">Share Price</th>
            <th scope="col">Buy/Sell</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="share" items="${shares}">
            <tr align="center">
                <td>${share.id}</td>
                <td>${share.name}</td>
                <td bgcolor="#c70039">${share.low} </td>
                <td bgcolor="green">${share.high}</td>
                <td>${share.price}</td>
                <td><a type="button" class="btn btn-outline-warning" role="button" href="/Proceed?id=${share.id}"/>Trade In</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
