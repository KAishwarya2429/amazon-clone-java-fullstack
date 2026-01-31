<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Home & Kitchen | Amazon Clone</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f7f7f7;
    }
    header {
      background-color: #232f3e;
      padding: 20px;
      text-align: center;
      color: white;
      font-size: 28px;
    }
    .banner {
      width: 100%;
      height: auto;
    }
    .container {
      padding: 40px;
      max-width: 1200px;
      margin: auto;
    }
    h2.section-title {
      font-size: 26px;
      color: #111;
      margin-bottom: 20px;
    }
    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 25px;
    }
    .card {
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: transform 0.2s ease;
    }
    .card:hover {
      transform: translateY(-5px);
    }
    .card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }
    .card-body {
      padding: 15px;
    }
    .card-body h3 {
      font-size: 18px;
      margin: 0 0 10px;
      color: #007185;
    }
    .card-body p {
      font-size: 14px;
      color: #333;
    }
    footer {
      background-color: #232f3e;
      color: white;
      text-align: center;
      padding: 25px;
      margin-top: 60px;
      font-size: 18px;
    }
  </style>
</head>
<body>

<header>
  Home & Kitchen Essentials
</header>

<img class="banner" src="https://images-eu.ssl-images-amazon.com/images/G/31/img21/Events/Jupiter23/Homepage/Home-Kitchen_Hero.jpg" alt="Home & Kitchen Banner">

<div class="container">
  <h2 class="section-title">Shop by Category</h2>
  <div class="grid">
    <div class="card">
      <img src="https://m.media-amazon.com/images/I/61W9cJd6sUL._AC_UL480_FMwebp_QL65_.jpg" alt="Cookware">
      <div class="card-body">
        <h3>Cookware & Dining</h3>
        <p>Shop from top quality utensils, non-stick pans, and dining sets.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/61C-gif4eUL._AC_UL480_FMwebp_QL65_.jpg" alt="Home Decor">
      <div class="card-body">
        <h3>Home Décor</h3>
        <p>Beautify your space with wall art, showpieces, and lighting.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/81JMEihtqeL._AC_UL480_FMwebp_QL65_.jpg" alt="Storage">
      <div class="card-body">
        <h3>Storage & Organization</h3>
        <p>Organize smartly with boxes, racks, and containers.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/71tIrZqybrL._AC_UL480_FMwebp_QL65_.jpg" alt="Home Furnishing">
      <div class="card-body">
        <h3>Home Furnishing</h3>
        <p>Discover bed sheets, curtains, cushions, and more.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/61QGzvHzn-L._AC_UL480_FMwebp_QL65_.jpg" alt="Cleaning">
      <div class="card-body">
        <h3>Cleaning Supplies</h3>
        <p>Find all-purpose cleaners, brushes, and floor care items.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/61yD5Lz7QqL._AC_UL480_FMwebp_QL65_.jpg" alt="Lighting Solutions">
      <div class="card-body">
        <h3>Lighting Solutions</h3>
        <p>Energy-efficient LED bulbs, lamps, and decorative lights.</p>
      </div>
    </div>
  </div>
</div>

<footer>
  &copy; 2025 Amazon Clone. All rights reserved.
</footer>

</body>
</html>
