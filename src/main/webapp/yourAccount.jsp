<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Account - Amazon</title>
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
        }

        .header h1 {
            margin: 0;
            font-size: 32px;
        }

        .container {
            padding: 40px;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .account-card {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 25px;
            border-radius: 10px;
            transition: box-shadow 0.3s ease;
        }

        .account-card:hover {
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .account-card h2 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #0f1111;
        }

        .account-card p {
            font-size: 16px;
            color: #555;
        }

        .footer {
            background-color: #232f3e;
            color: white;
            padding: 40px;
            font-size: 15px;
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

        .footer-column a {
            color: #ddd;
            text-decoration: none;
        }

        .footer-column a:hover {
            text-decoration: underline;
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
    <h1>Your Account</h1>
</div>
<div class="container">
    <div class="account-card">
        <h2>Your Orders</h2>
        <p>Track, return, or buy things again</p>
    </div>
    <div class="account-card">
        <h2>Login & Security</h2>
        <p>Edit login, name, and mobile number</p>
    </div>
    <div class="account-card">
        <h2>Prime</h2>
        <p>View benefits and payment settings</p>
    </div>
    <div class="account-card">
        <h2>Your Addresses</h2>
        <p>Edit addresses for orders and gifts</p>
    </div>
    <div class="account-card">
        <h2>Your Business Account</h2>
        <p>Sign up for free to save up to 28% with GST invoice and bulk discounts</p>
    </div>
    <div class="account-card">
        <h2>Payment Options</h2>
        <p>Edit or add payment methods</p>
    </div>
    <div class="account-card">
        <h2>Amazon Pay Balance</h2>
        <p>Add money to your balance</p>
    </div>
    <div class="account-card">
        <h2>Digital Content and Devices</h2>
        <p>Apps, devices, and digital gifts</p>
    </div>
    <div class="account-card">
        <h2>Communication Preferences</h2>
        <p>Email alerts, ads, and notifications</p>
    </div>
    <div class="account-card">
        <h2>More Ways to Pay</h2>
        <p>Amazon Pay, coupons, default settings</p>
    </div>
    <div class="account-card">
        <h2>Shopping Preferences</h2>
        <p>Packaging feedback, saved IDs, lists</p>
    </div>
    <div class="account-card">
        <h2>Manage Your Data</h2>
        <p>Request your data, close account, privacy</p>
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
