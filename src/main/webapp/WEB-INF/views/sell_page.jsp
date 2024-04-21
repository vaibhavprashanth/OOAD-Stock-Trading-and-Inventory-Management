<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Shares List</title>
    <style>
        .center_div {
            margin: 60px auto;
            padding-left: 40px;
            width: 80%; /* value of your choice which suits your alignment */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="color: #a7d129;font-size: 28; font-weight: bold">StockTrad-Z</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="/inboard" style="font-weight: bold">Home <span
                        class="sr-only">(current)</span></a>
                <a class="nav-item nav-link active" href="/orders" style="font-weight: bold">Orders</a>
                <a class="nav-item nav-link active" href="/product" style="font-weight: bold">Trade</a>
                <a class="nav-item nav-link active ms-auto" href="/logout">Logout</a>
            </div>
        </div>
    </div>
</nav>

<div class="center_div">
    <form action="/sell" method="POST">
        <div class="mb-3">
            <label for="share_id" class="form-label">Share ID</label>
            <input type="number" name="share_id" class="form-control" id="share_id" value="${order.share_id}" readonly>
        </div>
        <div class="mb-3">
            <label for="share_name" class="form-label">Share Name</label>
            <input type="text" name="share_name" class="form-control" id="share_name" value="${order.share_name}" readonly>
        </div>
        <div class="row">
            <div class="col">
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" name="price" class="form-control" id="price" value="${order.share_price}" readonly>
                </div>
            </div>
            <div class="col">
                <div class="mb-3">
                    <label for="quantity" class="form-label">Quantity</label>
                    <input type="number" name="quantity" class="form-control" id="quantity" min="0" step="1" max="${order.quantity}" value="0">
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label for="total" class="form-label">Total Price:</label>
            <p id="total">0</p>
        </div>
        <button type="submit" class="btn btn-primary">SELL</button>
    </form>
</div>

<script>
    let quantityInput = document.getElementById("quantity");
    quantityInput.addEventListener("input", (event) => {
        let priceInput = document.getElementById("price");
        let totalParagraph = document.getElementById("total");
        let total = parseInt(quantityInput.value) * parseFloat(priceInput.value);
        totalParagraph.innerHTML = total.toFixed(2);
    });
</script>
</body>
</html>
