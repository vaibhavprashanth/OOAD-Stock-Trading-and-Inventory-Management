<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Payment</title>
    <style>
        body {
            background-color: #cfb845;
            font-family: Arial, sans-serif;
        }

        .panel-heading {
            background-color: #05716c;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        .panel-body {
            background-color: white;
            padding: 20px;
        }

        .form-control[readonly] {
            background-color: #f5f5f5;
            cursor: not-allowed;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
            color: white;
        }

        .btn-success:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }
    </style>
</head>
<body>
    <h2 style="color: #141414; font-weight: bold; text-align: center">${cost}</h2>
    <div class="container" style="margin-left: auto; margin-right: auto; margin-top: 200px; max-width: 600px;">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Payment Details</h3>
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <label for="cardNumber">CARD NUMBER</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number" value="487534584589357" required readonly/>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7">
                            <div class="form-group">
                                <label for="expityMonth">EXPIRY DATE</label>
                                <div class="row">
                                    <div class="col">
                                        <input type="text" class="form-control" id="expityMonth" placeholder="MM" value="08" readonly/>
                                    </div>
                                    <div class="col">
                                        <input type="text" class="form-control" id="expityYear" placeholder="YY" value="2025" readonly/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="form-group">
                                <label for="cvCode">CV CODE</label>
                                <input type="password" class="form-control" id="cvCode" value="458" placeholder="CV" required readonly/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="#"><span class="badge pull-right"><span class="fa fa-inr"></span>${price}</span> Final Payment</a></li>
        </ul>
        <br />
        <a href="/commision?price=${price}" class="btn btn-success btn-lg btn-block" role="button">Pay</a>
        <h2 style="color: #141414; font-weight: bold; text-align: center">${commision}</h2>
        <a href="/product" class="btn btn-success btn-lg btn-block" role="button">Trade More</a> 
    </div>
</body>
</html>
