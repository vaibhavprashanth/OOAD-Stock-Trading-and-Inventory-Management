<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Shares List</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#" style="font-size: 28; font-weight: bold; color: #a7d129;">StockTrad-Z</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="/inboard" style="font-weight: bold;">Home <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link active" href="/orders" style="font-weight: bold;">Orders</a>
                    <a class="nav-item nav-link active" href="/product" style="font-weight: bold;">Trade</a>
                    <a class="nav-item nav-link active ms-auto" href="/logout">Logout</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Share Name</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                    <th scope="col">Sell</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${orderList}" var="order" varStatus="loop">
                    <tr>
                        <th scope="row">${loop.index + 1}</th>
                        <td>${order.share_name}</td>
                        <td>${order.quantity}</td>
                        <td>${order.share_price}</td>
                        <td><a href="/sell_shares?share_name=${order.share_name}&quantity=${order.quantity}&price=${order.share_price}&share_id=${order.share_id}" class="btn btn-primary btn-sm">Sell</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
