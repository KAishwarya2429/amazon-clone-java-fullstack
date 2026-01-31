<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Hot New Releases</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e3e6e6;
            margin: 0;
            padding: 0;
        }
        nav {
            background-color: #232f3e;
            padding: 12px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: white;
        }
        nav a img {
            height: 40px;
        }
        .nav-country {
            display: flex;
            align-items: center;
            color: white;
            margin-left: 20px;
        }
        .nav-country img {
            height: 20px;
            margin-right: 5px;
        }
        .nav-search {
            display: flex;
            flex: 1;
            max-width: 600px;
            margin: 0 20px;
            border-radius: 4px;
            overflow: hidden;
        }
        .nav-search-category {
            background-color: #f3f3f3;
            padding: 0 10px;
            display: flex;
            align-items: center;
            border: none;
            font-size: 14px;
            color: black;
            border-right: 1px solid #ccc;
        }
        .nav-search input {
            flex: 1;
            border: none;
            padding: 10px;
            font-size: 16px;
            outline: none;
        }
        .nav-search button {
            background-color: #febd69;
            border: none;
            padding: 0 15px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .header {
            background-color: #f08804;
            color: #111;
            padding: 50px 20px;
            text-align: center;
        }
        .header h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }
        .header p {
            font-size: 20px;
        }
        .category-list, .bestseller-section {
            background-color: white;
            margin: 20px auto;
            padding: 20px;
            max-width: 1200px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            border-radius: 5px;
        }
        .category-list ul {
            display: flex;
            flex-wrap: wrap;
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .category-list ul li {
            width: 25%;
            margin: 10px 0;
        }
        .category-list ul li a {
            text-decoration: none;
            color: #007185;
            font-size: 16px;
        }
        .bestseller-section h2 {
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            font-size: 24px;
            color: #111;
        }
        .product {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }
        .product img {
            width: 150px;
            height: 150px;
            object-fit: contain;
            background: #fff;
            border: 1px solid #ddd;
            padding: 10px;
        }
        .product-details h3 {
            margin: 0 0 5px;
            font-size: 20px;
        }
        .product-details p {
            margin: 3px 0;
            font-size: 16px;
            color: #555;
        }
        .back-to-top {
            background-color: #37475a;
            padding: 15px;
            text-align: center;
        }
        .back-to-top a {
            color: white;
            font-size: 16px;
            text-decoration: none;
        }
        footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 30px 10px;
        }
        footer img {
            height: 40px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<nav>
    <a href="/"> <img src="./images/amazon_logo.png" alt="Amazon Logo"></a>
    
    <div class="nav-search">
        <div class="nav-search-category">
            All <img src="./images/dropdown_icon.png" height="12" alt="">
        </div>
        <form action="search" method="get" style="display: flex; width: 100%;">
            <input type="text" name="query" placeholder="Search Amazon..." required>
            <button type="submit">
                <img src="./images/search_icon.png" alt="Search" style="width: 20px; height: 20px;">
            </button>
        </form>
    </div>
</nav>

<div class="header">
    <h1>Amazon Hot New Releases</h1>
    <p>Our bestselling new and future releases. Updated frequently.</p>
</div>

<div class="category-list">
    <h2>Departments</h2>
    <ul>
        <li><a href="#">Amazon Launchpad</a></li>
        <li><a href="#">Amazon Renewed</a></li>
        <li><a href="#">Baby Products</a></li>
        <li><a href="#">Bags, Wallets and Luggage</a></li>
        <li><a href="#">Beauty</a></li>
        <li><a href="#">Books</a></li>
        <li><a href="#">Clothing & Accessories</a></li>
        <li><a href="#">Computers & Accessories</a></li>
        <li><a href="#">Electronics</a></li>
        <li><a href="#">Garden & Outdoors</a></li>
        <li><a href="#">Health & Personal Care</a></li>
        <li><a href="#">Home & Kitchen</a></li>
        <li><a href="#">Home Improvement</a></li>
        <li><a href="#">Jewellery</a></li>
        <li><a href="#">Kindle Store</a></li>
        <li><a href="#">Movies & TV Shows</a></li>
        <li><a href="#">Music</a></li>
        <li><a href="#">Musical Instruments</a></li>
        <li><a href="#">Office Products</a></li>
        <li><a href="#">Pet Supplies</a></li>
        <li><a href="#">Shoes & Handbags</a></li>
        <li><a href="#">Sports, Fitness & Outdoors</a></li>
        <li><a href="#">Toys & Games</a></li>
        <li><a href="#">Video Games</a></li>
        <li><a href="#">Watches</a></li>
    </ul>
</div>

<div class="bestseller-section">
    <h2>Hot New Releases in Bags, Wallets and Luggage</h2>
    <div class="product">
        <img src="./images/umbrella.jpg" alt="Umbrella">
        <div class="product-details">
            <h3>#1 Perpetual Automatic Open Umbrella</h3>
            <p>Rating: 3.2 out of 5 stars (294 reviews)</p>
            <p>Price: ₹349.00</p>
        </div>
    </div>
    <div class="product">
        <img src="./images/tekcool_umbrella.jpg" alt="TEKCOOL Umbrella">
        <div class="product-details">
            <h3>#2 TEKCOOL Mini Folding Compact Umbrella</h3>
            <p>Rating: 4.7 out of 5 stars (273 reviews)</p>
            <p>Price: ₹—</p>
        </div>
    </div>
</div>

<div class="back-to-top">
    <a href="#top">Back to top</a>
</div>

<footer>
    <img src="./images/amazon_logo.png" alt="Amazon Logo">
    <p>© 1996-2025, Amazon.com, Inc. or its affiliates</p>
</footer>

</body>
</html>
