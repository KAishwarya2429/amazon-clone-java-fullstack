<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Business - Register</title>
    <link rel="icon" href="https://www.amazon.in/favicon.ico">
    <style>
        body {
            font-family: "Amazon Ember", Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 960px;
            margin: 50px auto;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            color: #111;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .sub-text {
            margin-top: -10px;
            color: #555;
            font-size: 16px;
            margin-bottom: 30px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            font-size: 15px;
        }

        input[type="email"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            background-color: #ff9900;
            color: #000;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #f90;
        }

        .signin-link {
            display: block;
            margin-top: 15px;
            color: #007185;
            font-size: 14px;
            text-decoration: none;
        }

        .features {
            margin-top: 40px;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 30px;
        }

        .feature-box {
            background: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 0 5px rgba(0,0,0,0.05);
        }

        .feature-title {
            font-size: 18px;
            font-weight: bold;
            margin-top: 15px;
        }

        .feature-desc {
            font-size: 14px;
            color: #333;
            margin-top: 8px;
        }

        .learn-more {
            margin-top: 40px;
            font-size: 15px;
            text-align: center;
        }

        .learn-more a {
            color: #007185;
            text-decoration: none;
        }

        .footer {
            text-align: center;
            font-size: 13px;
            color: #555;
            margin-top: 50px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Let us create your free Amazon Business account</h1>
    <p class="sub-text">Enter an email. Work email preferred.</p>

    <form action="createBusinessAccount" method="post">
        <label for="email">Enter email address</label>
        <input type="email" id="email" name="email" placeholder="you@company.com" required>
        <button class="btn" type="submit">Get started</button>
    </form>

    <a href="signin.jsp" class="signin-link">Already an Amazon Business customer? Sign in</a>

    <div class="features">
        <div class="feature-box">
            <img src="images/delivery.png" width="50" alt="Free Delivery">
            <div class="feature-title">Free Delivery on first order</div>
            <div class="feature-desc">Get free delivery on your first purchase with Amazon Business.</div>
        </div>

        <div class="feature-box">
            <img src="images/gst.png" width="50" alt="GST Invoice">
            <div class="feature-title">GST Invoice & Bulk Discounts</div>
            <div class="feature-desc">Save up to 28% more with GST input credit and avail discounts on multi-unit purchases.</div>
        </div>

        <div class="feature-box">
            <img src="images/analytics.png" width="50" alt="Analytics">
            <div class="feature-title">Business Analytics</div>
            <div class="feature-desc">Track and monitor spending by your organisation with dynamic charts and data tables.</div>
        </div>
    </div>

    <div class="learn-more">
        <p><strong>City:</strong> <em>Your city location if dynamic</em></p>
        <p><a href="#">Learn more about Amazon Business</a></p>
        <p>Need help? <a href="#">Contact business customer service</a>.</p>
        <p><a href="#">Read our conditions of use</a> and <a href="#">privacy notice</a>.</p>
    </div>

    <div class="footer">
        © 1996–2025, Amazon.com Inc. or its affiliates
    </div>
</div>

</body>
</html>
