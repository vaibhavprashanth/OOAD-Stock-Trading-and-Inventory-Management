<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Buy/Sell Share</title>
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
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header bg-dark text-white">Buy/Sell Share</div>
                    <div class="card-body">
                        <form action="/purchase" method="POST" modelAttribute="order">
                            <div class="form-group">
                                <label class="badge badge-dark">Share Id :</label>
                                <input type="text" name="id" class="form-control" value="${found.id}" readonly>
                            </div>
                            <div class="form-group">
                                <label class="badge badge-dark">Share Name :</label>
                                <input type="text" class="form-control" name="orderName" value="${found.name}" readonly>
                            </div>
                            <div class="form-group">
                                <label class="badge badge-dark">Share Price :</label>
                                <input type="text" class="form-control" name="orderPrice" value="${found.price}" readonly>
                            </div>
                            <div class="form-group">
                                <label class="badge badge-dark">Quantity :</label>
                                <input id="quantity" class="form-control" name="quantity" required>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-info btn-block" type="submit" name="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
