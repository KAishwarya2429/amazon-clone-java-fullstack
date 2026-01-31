<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Movers & Shakers</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
        }

        header {
            background-color: #232f3e;
            color: white;
            padding: 15px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        header img {
            height: 40px;
        }

        h1 {
            text-align: center;
            margin: 30px 0 10px;
            font-size: 32px;
        }

        p.subtitle {
            text-align: center;
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }

        .categories {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            padding: 0 20px 30px;
        }

        .category {
            background-color: white;
            border-radius: 8px;
            padding: 10px 20px;
            border: 1px solid #ddd;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .category:hover {
            background-color: #f7f7f7;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .section-title {
            font-size: 22px;
            margin: 30px 20px 10px;
            border-bottom: 2px solid #ccc;
            padding-bottom: 5px;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .product-card {
            background-color: white;
            border-radius: 10px;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: 0.3s ease;
        }

        .product-card:hover {
            transform: scale(1.02);
        }

        .rank-change {
            color: green;
            font-weight: bold;
            font-size: 14px;
        }

        .sales-rank {
            font-size: 14px;
            margin: 5px 0;
            color: #888;
        }

        .product-title {
            font-size: 16px;
            font-weight: bold;
            margin: 10px 0;
        }

        .stars {
            color: #ffa41c;
            font-size: 14px;
        }

        .price {
            color: #b12704;
            font-size: 16px;
            font-weight: bold;
        }

        footer {
            background-color: #232f3e;
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <img src="./images/amazon_logo.png" alt="Amazon Logo">
        <span>Movers & Shakers</span>
    </header>

    <!-- Intro -->
    <h1>Movers & Shakers</h1>
    <p class="subtitle">Our biggest gainers in sales rank over the past 24 hours. Updated frequently.</p>

    <!-- Categories -->
    <div class="categories">
        <div class="category">Amazon Launchpad</div>
        <div class="category">Baby Products</div>
        <div class="category">Beauty</div>
        <div class="category">Books</div>
        <div class="category">Electronics</div>
        <div class="category">Grocery</div>
        <div class="category">Home & Kitchen</div>
        <div class="category">Software</div>
        <div class="category">Video Games</div>
        <!-- Add more as needed -->
    </div>

    <!-- Section: Amazon Launchpad -->
    <div class="section-title">Movers and Shakers in Amazon Launchpad</div>
    <div class="product-grid">
        <div class="product-card">
            <div class="rank-change">↑ Increased 2,216%</div>
            <div class="sales-rank">Sales rank: 62 (was 1,436)</div>
            <div class="product-title">What's Up Wellness Melatonin 5 mg Sleep Gummies</div>
            <div class="stars">★★★☆☆ (2,081)</div>
            <div class="price">₹1,349 - ₹1,949</div>
        </div>
        <div class="product-card">
            <div class="rank-change">↑ Increased 111%</div>
            <div class="sales-rank">Sales rank: 9 (was 19)</div>
            <div class="product-title">Zlade Ballistic TURBO 3.0 Trimmer for Men</div>
            <div class="stars">★★★★☆ (6,472)</div>
            <div class="price">₹998 - ₹3,949</div>
        </div>
    </div>

    <!-- Section: Video Games -->
    <div class="section-title">Movers and Shakers in Video Games</div>
    <div class="product-grid">
        <div class="product-card">
            <div class="rank-change">↑ Increased 37%</div>
            <div class="sales-rank">Sales rank: 8 (was 11)</div>
            <div class="product-title">Rs.1000 Sony PlayStation Store Gift Card</div>
            <div class="stars">★★★★☆ (5,719)</div>
            <div class="price">₹1,000</div>
        </div>
        <div class="product-card">
            <div class="rank-change">↑ Increased 31%</div>
            <div class="sales-rank">Sales rank: 87 (was 114)</div>
            <div class="product-title">INR 1000 Steam Wallet Code</div>
            <div class="stars">★★★★☆ (1,962)</div>
            <div class="price">₹1,339</div>
        </div>
    </div>

    <!-- Add more categories and product cards as needed -->

    <!-- Footer -->
    <footer>
        &copy; 2025 Amazon Clone by Aishwarya | All rights reserved.
    </footer>

</body>
</html>
