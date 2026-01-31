<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Categories - Amazon</title>
    <link rel="icon" href="https://www.amazon.in/favicon.ico">
    <style>
        body {
            font-family: "Amazon Ember", Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        .container {
            display: flex;
            flex-direction: row;
            padding: 30px;
        }

        .sidebar {
            width: 250px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        .sidebar h3 {
            margin-top: 0;
            font-size: 18px;
            color: #111;
            border-bottom: 1px solid #ddd;
            padding-bottom: 8px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 10px 0 20px 0;
        }

        .sidebar ul li {
            padding: 8px 0;
            font-size: 15px;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #007185;
        }

        .sidebar ul li a:hover {
            text-decoration: underline;
        }

        .main-title {
            font-size: 22px;
            margin-bottom: 20px;
            font-weight: bold;
        }

    </style>
</head>
<body>

<div class="container">
    <div class="sidebar">
        <div class="main-title">Explore All Categories</div>

        <h3>Trending</h3>
        <ul>
            <li><a href="#">Bestsellers</a></li>
            <li><a href="#">New Releases</a></li>
            <li><a href="#">Movers and Shakers</a></li>
        </ul>

        <h3>Digital Content and Devices</h3>
        <ul>
            <li><a href="#">Echo & Alexa</a></li>
            <li><a href="#">Fire TV</a></li>
            <li><a href="#">Kindle E-Readers & eBooks</a></li>
            <li><a href="#">Audible Audiobooks</a></li>
            <li><a href="#">Amazon Prime Video</a></li>
            <li><a href="#">Amazon Prime Music</a></li>
        </ul>

        <h3>Shop by Category</h3>
        <ul>
            <li><a href="#">Mobiles, Computers</a></li>
            <li><a href="#">TV, Appliances, Electronics</a></li>
            <li><a href="#">Men's Fashion</a></li>
            <li><a href="#">Women's Fashion</a></li>
            <li><a href="#">See all</a></li>
        </ul>

        <h3>Programs & Features</h3>
        <ul>
            <li><a href="#">Amazon Pay</a></li>
            <li><a href="#">Gift Cards & Mobile Recharges</a></li>
            <li><a href="#">Amazon Launchpad</a></li>
            <li><a href="#">Amazon Business</a></li>
            <li><a href="#">See all</a></li>
        </ul>

        <h3>Help & Settings</h3>
        <ul>
            <li><a href="#">Your Account</a></li>
            <li><a href="#">Customer Service</a></li>
            <li><a href="login.jsp">Sign in</a></li>
        </ul>
    </div>
</div>

</body>
</html>
