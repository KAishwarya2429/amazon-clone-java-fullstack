<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Launchpad – Discover Startups & Innovations</title>
    <link rel="icon" href="https://www.amazon.in/favicon.ico">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f2f2f2;
            color: #111;
            font-size: 18px;
        }

        .launchpad-header {
            background-color: #232f3e;
            color: white;
            padding: 40px 20px;
            text-align: center;
        }

        .launchpad-header h1 {
            margin: 0;
            font-size: 40px;
        }

        .launchpad-header p {
            font-size: 20px;
            margin-top: 10px;
            color: #ddd;
        }

        .section {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .section h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #e47911;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .product-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            overflow: hidden;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-card img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            border-radius: 6px;
        }

        .product-card h3 {
            margin: 15px 0 10px;
            font-size: 22px;
        }

        .product-card p {
            color: #555;
            font-size: 17px;
        }

        .btn-explore {
            background-color: #f0c14b;
            border: 1px solid #a88734;
            padding: 12px 25px;
            font-weight: bold;
            color: #111;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 12px;
            display: inline-block;
            font-size: 16px;
        }

        .btn-explore:hover {
            background-color: #e2b33c;
        }

        .footer {
            background-color: #232f3e;
            color: white;
            padding: 50px 20px;
            font-size: 16px;
        }

        .footer h4 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .footer p {
            margin: 6px 0;
        }

        .footer a {
            color: white;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .footer .footer-sections {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 60px;
            margin-top: 25px;
        }

        .footer-bottom {
            text-align: center;
            margin-top: 40px;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="launchpad-header">
    <h1>Amazon Launchpad</h1>
    <p>Discover cutting-edge products from startups & small businesses</p>
</div>

<div class="section">
    <h2>Featured Startups</h2>
    <div class="products-grid">
        <div class="product-card">
            <img src="images/startup1.jpg" alt="Product 1">
            <h3>Smart Water Bottle</h3>
            <p>Keeps track of hydration with app integration.</p>
            <a href="#" class="btn-explore">Explore</a>
        </div>
        <div class="product-card">
            <img src="images/startup2.jpg" alt="Product 2">
            <h3>Eco-Friendly Toothbrush</h3>
            <p>Biodegradable design made from bamboo.</p>
            <a href="#" class="btn-explore">Explore</a>
        </div>
        <div class="product-card">
            <img src="images/startup3.jpg" alt="Product 3">
            <h3>Portable Air Purifier</h3>
            <p>Perfect for travel and office use.</p>
            <a href="#" class="btn-explore">Explore</a>
        </div>
    </div>
</div>

<div class="section">
    <h2>Top Innovators</h2>
    <div class="products-grid">
        <div class="product-card">
            <img src="images/startup4.jpg" alt="Product 4">
            <h3>Smart Garden Kit</h3>
            <p>Grow herbs indoors with automated light and water system.</p>
            <a href="#" class="btn-explore">Explore</a>
        </div>
        <div class="product-card">
            <img src="images/startup5.jpg" alt="Product 5">
            <h3>Portable Solar Charger</h3>
            <p>Charge devices anywhere using sunlight.</p>
            <a href="#" class="btn-explore">Explore</a>
        </div>
        <div class="product-card">
            <img src="images/startup6.jpg" alt="Product 6">
            <h3>Ergonomic Laptop Stand</h3>
            <p>Improve posture and comfort while working from home.</p>
            <a href="#" class="btn-explore">Explore</a>
        </div>
    </div>
</div>

<div class="section" style="text-align: center; margin-top: 50px;">
    <h2 style="color: #232f3e;">Interested in launching your product?</h2>
    <p style="font-size: 18px;">Join Amazon Launchpad and get the tools to grow your brand</p>
    <a href="#" class="btn-explore">Learn More</a>
</div>

<!-- Footer -->
<div class="footer">
    <p style="text-align:center;"><a href="#">Back to top</a></p>
    <div class="footer-sections">
        <div>
            <h4>Get to Know Us</h4>
            <p>About Amazon</p>
            <p>Careers</p>
            <p>Press Releases</p>
            <p>Amazon Science</p>
        </div>
        <div>
            <h4>Connect with Us</h4>
            <p>Facebook</p>
            <p>Twitter</p>
            <p>Instagram</p>
        </div>
        <div>
            <h4>Make Money with Us</h4>
            <p>Sell on Amazon</p>
            <p>Amazon Global Selling</p>
            <p>Advertise Your Products</p>
            <p>Become an Affiliate</p>
        </div>
        <div>
            <h4>Let Us Help You</h4>
            <p>Your Account</p>
            <p>Returns Centre</p>
            <p>100% Purchase Protection</p>
            <p>Help</p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>© 1996–2025, Amazon.com, Inc. or its affiliates</p>
    </div>
</div>

</body>
</html>
