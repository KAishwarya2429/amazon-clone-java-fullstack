<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Placed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e3e6e6;
            text-align: center;
            padding-top: 100px;
        }

        .box {
            background-color: white;
            display: inline-block;
            padding: 30px 50px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        h1 {
            color: #2a7b2a;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: white;
            background-color: #febd69;
            padding: 10px 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="box">
        <h1>Thank you!</h1>
        <p>Your order has been placed successfully.</p>
        <a href="Home.jsp">Continue Shopping</a>
    </div>
</body>
</html>
