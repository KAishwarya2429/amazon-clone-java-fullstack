<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Registry</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;
        }

        .registry-header {
            background-color: white;
            padding: 40px 20px;
            text-align: center;
        }

        .registry-header h1 {
            margin-bottom: 10px;
            font-size: 36px;
        }

        .registry-header p {
            font-size: 18px;
            color: #555;
        }

        .registry-options {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 30px auto;
            gap: 30px;
            max-width: 1000px;
        }

        .registry-card {
            background-color: white;
            padding: 20px;
            width: 300px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
            text-align: center;
        }

        .registry-card img {
            width: 100%;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .registry-card h3 {
            margin-bottom: 10px;
            font-size: 20px;
        }

        .registry-card p {
            color: #666;
            font-size: 14px;
        }

        .footer {
            background-color: #232f3e;
            color: white;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="content">
    <div class="registry-header">
        <h1>Welcome to Amazon Registry</h1>
        <p>Create and manage registries for your most special moments</p>
    </div>

    <div class="registry-options">
        <div class="registry-card">
            <img src="https://m.media-amazon.com/images/G/31/GiftCards/Registries/Baby/2022/baby-registry-card.jpg" alt="Baby Registry">
            <h3>Baby Registry</h3>
            <p>Find everything you need for your little one from top-rated products.</p>
        </div>
        <div class="registry-card">
            <img src="https://m.media-amazon.com/images/G/31/GiftCards/Registries/Wedding/2022/wedding-registry-card.jpg" alt="Wedding Registry">
            <h3>Wedding Registry</h3>
            <p>Create a registry to share your perfect wedding gift list with guests.</p>
        </div>
        <div class="registry-card">
            <img src="https://m.media-amazon.com/images/G/31/GiftCards/Registries/Custom/2022/custom-registry-card.jpg" alt="Custom Registry">
            <h3>Custom Registry</h3>
            <p>Start a custom registry for birthdays, housewarmings, and more.</p>
        </div>
    </div>
</div>

<div class="footer">
    © 2025 Amazon Clone by Aishwarya. All rights reserved.
</div>

</body>
</html>
