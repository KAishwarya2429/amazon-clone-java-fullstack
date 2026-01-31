<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Service - Amazon</title>
    <link rel="icon" href="https://www.amazon.in/favicon.ico">
    <style>
        body {
            margin: 0;
            font-family: "Amazon Ember", Arial, sans-serif;
            background-color: #f5f5f5;
            color: #111;
        }

        .header {
            background-color: #232f3e;
            color: white;
            padding: 20px 40px;
            text-align: center;
        }

        .header h1 {
            font-size: 32px;
            margin: 0;
        }

        .container {
            padding: 40px;
        }

        .section-title {
            font-size: 26px;
            margin-bottom: 20px;
            color: #0f1111;
        }

        .help-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .help-card {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 25px;
            border-radius: 10px;
            transition: box-shadow 0.3s ease;
        }

        .help-card:hover {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .help-card h2 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #0f1111;
        }

        .help-card p {
            font-size: 16px;
            color: #555;
        }

        .help-card a {
            display: inline-block;
            margin-top: 10px;
            color: #007185;
            text-decoration: none;
            font-weight: bold;
        }

        .help-card a:hover {
            text-decoration: underline;
        }

        .footer {
            background-color: #232f3e;
            color: white;
            padding: 40px;
            margin-top: 60px;
            font-size: 15px;
        }

        .footer a {
            color: #ddd;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .footer-columns {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }

        .footer-column h4 {
            font-size: 18px;
            margin-bottom: 15px;
            color: #fff;
        }

        .footer-column ul {
            list-style: none;
            padding: 0;
        }

        .footer-column li {
            margin-bottom: 10px;
        }

        .footer-bottom {
            text-align: center;
            font-size: 14px;
            border-top: 1px solid #444;
            padding-top: 20px;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Customer Service</h1>
    </div>

    <div class="container">
        <div class="section-title">Browse Help Topics</div>
        <div class="help-grid">
            <div class="help-card">
                <h2>Track Your Package</h2>
                <p>Find tracking information and order details.</p>
                <a href="#">Track Orders</a>
            </div>

            <div class="help-card">
                <h2>Returns & Refunds</h2>
                <p>Return or exchange items easily and get refunds quickly.</p>
                <a href="#">Start a Return</a>
            </div>

            <div class="help-card">
                <h2>Manage Your Account</h2>
                <p>Update login, password, addresses and preferences.</p>
                <a href="#">Account Settings</a>
            </div>

            <div class="help-card">
                <h2>Payment Settings</h2>
                <p>Manage saved cards and Amazon Pay balance.</p>
                <a href="#">Payment Options</a>
            </div>

            <div class="help-card">
                <h2>Prime Membership</h2>
                <p>Learn about Prime benefits and manage your subscription.</p>
                <a href="#">Prime Help</a>
            </div>

            <div class="help-card">
                <h2>Accessibility Support</h2>
                <p>We’re here to assist with accessibility concerns.</p>
                <a href="#">Accessibility Help</a>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="footer-columns">
            <div class="footer-column">
                <h4>Get to Know Us</h4>
                <ul>
                    <li><a href="#">About Amazon</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Press Releases</a></li>
                    <li><a href="#">Amazon Science</a></li>
                </ul>
            </div>

            <div class="footer-column">
                <h4>Connect with Us</h4>
                <ul>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Instagram</a></li>
                </ul>
            </div>

            <div class="footer-column">
                <h4>Make Money with Us</h4>
                <ul>
                    <li><a href="#">Sell on Amazon</a></li>
                    <li><a href="#">Become an Affiliate</a></li>
                    <li><a href="#">Advertise Your Products</a></li>
                    <li><a href="#">Amazon Pay on Merchants</a></li>
                </ul>
            </div>

            <div class="footer-column">
                <h4>Let Us Help You</h4>
                <ul>
                    <li><a href="#">Your Account</a></li>
                    <li><a href="#">Returns Centre</a></li>
                    <li><a href="#">100% Purchase Protection</a></li>
                    <li><a href="#">Help</a></li>
                </ul>
            </div>
        </div>

        <div class="footer-bottom">
            <p>Conditions of Use & Sale | Privacy Notice | Interest-Based Ads</p>
            <p>© 1996-2025, Amazon.com, Inc. or its affiliates</p>
        </div>
    </div>

</body>
</html>
