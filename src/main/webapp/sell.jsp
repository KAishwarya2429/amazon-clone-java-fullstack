<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sell on Amazon</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f5f5;
        }
        header {
            background: #131921;
            padding: 15px 20px;
            display: flex;
            align-items: center;
            color: white;
        }
        header img { height: 40px; margin-right: 20px; }
        header nav a { color: white; margin-right: 15px; text-decoration: none; font-size: 16px; }
        .hero {
            background: url('https://images-na.ssl-images-amazon.com/images/G/01/SELLER-IN/home-banner.jpg') center/cover no-repeat;
            height: 300px;
            display: flex; 
            align-items: center;
            justify-content: flex-start;
            padding-left: 50px;
        }
        .hero h1 {
            color: white;
            font-size: 36px;
            margin: 0;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.7);
        }
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 40px 20px;
        }
        .feature-card {
            background: white;
            width: 280px;
            margin: 15px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s;
        }
        .feature-card:hover { transform: translateY(-4px); }
        .feature-card h3 { margin-bottom: 10px; color: #111; }
        .feature-card p { font-size: 14px; color: #555; }
        .cta-banner {
            background: white;
            margin: 40px 20px;
            padding: 30px;
            text-align: center;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }
        .cta-banner h2 { margin: 0; }
        .cta-banner button {
            margin-top: 20px;
            background: #ffa41c;
            color: #111;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }
        footer {
            background: #232f3e;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 14px;
        }
        footer a { color: #eee; margin: 0 8px; text-decoration: none; }
    </style>
</head>
<body>
    <!-- Navbar -->
    <header>
        <img src="./images/amazon_logo.png" alt="Amazon Logo">
        <nav>
            <a href="#">Sell</a>
            <a href="#">Pricing</a>
            <a href="#">Help</a>
            <a href="#">Sign In</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Sell on Amazon India</h1>
    </div>

    <!-- Feature Highlights -->
    <section class="features">
        <div class="feature-card">
            <h3>Reach Millions of Customers</h3>
            <p>Tap into Amazon’s vast customer base across India.</p>
        </div>
        <div class="feature-card">
            <h3>Quick Setup</h3>
            <p>Set up your seller account and list products in minutes.</p>
        </div>
        <div class="feature-card">
            <h3>Fulfillment Support</h3>
            <p>Use Fulfilled By Amazon (FBA) to deliver fast and reliably.</p>
        </div>
        <div class="feature-card">
            <h3>Grow Your Business</h3>
            <p>Access tools, ads, and analytics to drive sales.</p>
        </div>
    </section>

    <!-- Call to Action -->
    <div class="cta-banner">
        <h2>Ready to start selling?</h2>
        <button onclick="location.href='/registerSeller'">Create your Seller Account</button>
    </div>

    <!-- Footer -->
    <footer>
        <a href="#">Conditions of Use</a> ·
        <a href="#">Privacy Notice</a> ·
        <a href="#">Help</a>
        <p>&copy; 1996-2025, Amazon.com, Inc. or its affiliates</p>
    </footer>
</body>
</html>
