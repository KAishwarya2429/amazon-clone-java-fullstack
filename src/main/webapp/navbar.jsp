<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #131921;
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .navbar a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
            font-size: 14px;
        }
        .navbar-logo img {
            width: 100px;
        }
        .navbar-links {
            display: flex;
            align-items: center;
        }
        .navbar-search {
            flex-grow: 1;
            margin: 0 20px;
            display: flex;
        }
        .navbar-search input {
            width: 100%;
            padding: 8px;
            border: none;
        }
        .navbar-search button {
            padding: 8px 16px;
            background-color: #febd69;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="navbar-logo">
        <a href="index.jsp"><img src="./images/amazon_logo.png" alt="Amazon Logo"></a>
    </div>
    
    <div class="navbar-search">
        <input type="text" placeholder="Search Amazon">
        <button>Search</button>
    </div>

    <div class="navbar-links">
        <a href="prime.jsp">Prime</a>
        <a href="mobiles.jsp">Mobiles</a>
        <a href="fashion.jsp">Fashion</a>
        <a href="electronics.jsp">Electronics</a>
        <a href="home-and-kitchen.jsp">Home & Kitchen</a>
        <a href="sell.jsp">Sell</a>
        <a href="registry.jsp">Registry</a>
    </div>
</div>

</body>
</html>
