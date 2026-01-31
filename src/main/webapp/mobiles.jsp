<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Mobiles - Amazon Clone</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    header {
      background-color: #232f3e;
      color: white;
      padding: 15px 25px;
      display: flex;
      align-items: center;
    }
    header img {
      height: 45px;
      margin-right: 20px;
    }
    header h2 {
      font-size: 24px;
    }
    .container {
      display: flex;
      max-width: 1400px;
      margin: 30px auto;
      gap: 25px;
      flex: 1;
    }
    .sidebar {
      width: 250px;
      background: #fff;
      padding: 20px;
      border-radius: 6px;
      box-shadow: 0 0 8px rgba(0,0,0,0.1);
    }
    .sidebar h3 {
      font-size: 20px;
      margin-bottom: 10px;
    }
    .sidebar ul {
      list-style: none;
    }
    .sidebar li {
      margin-bottom: 10px;
    }
    .sidebar a {
      text-decoration: none;
      color: #007185;
      font-size: 15px;
    }
    .products {
      flex: 1;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 25px;
    }
    .card {
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      overflow: hidden;
      transition: transform 0.2s ease;
    }
    .card:hover {
      transform: scale(1.03);
    }
    .card img {
      width: 100%;
      height: 260px;
      object-fit: cover;
    }
    .card .info {
      padding: 15px;
    }
    .card h4 {
      font-size: 17px;
      height: 50px;
      overflow: hidden;
      margin-bottom: 8px;
    }
    .price {
      color: #b12704;
      font-size: 17px;
      font-weight: bold;
      margin: 6px 0;
    }
    .rating {
      color: #ffa41c;
      font-size: 14px;
    }
    footer {
      background-color: #232f3e;
      color: white;
      text-align: center;
      padding: 20px;
      font-size: 14px;
      margin-top: auto;
    }
  </style>
</head>
<body>

<!-- Header/Navbar -->
<header>
  <img src="./images/amazon_logo.png" alt="Amazon Logo">
  <h2>Mobiles</h2>
</header>

<!-- Main Content -->
<div class="container">
  <!-- Sidebar -->
  <div class="sidebar">
    <h3>Filter by</h3>
    <ul>
      <li><a href="#">Samsung</a></li>
      <li><a href="#">OnePlus</a></li>
      <li><a href="#">Redmi</a></li>
      <li><a href="#">Realme</a></li>
      <li><a href="#">iQOO</a></li>
      <li><a href="#">Under ₹10,000</a></li>
      <li><a href="#">₹10,000 - ₹20,000</a></li>
      <li><a href="#">Above ₹20,000</a></li>
    </ul>
  </div>

  <!-- Product Grid -->
  <div class="products">
    <div class="card">
      <img src="./images/mobile1.jpg" alt="Mobile 1">
      <div class="info">
        <h4>Samsung Galaxy M14 5G (6GB/128GB)</h4>
        <div class="rating">★★★★☆ (7,821)</div>
        <div class="price">₹11,490</div>
      </div>
    </div>

    <div class="card">
      <img src="./images/mobile2.jpg" alt="Mobile 2">
      <div class="info">
        <h4>Redmi Note 13 5G (128 GB)</h4>
        <div class="rating">★★★★☆ (4,712)</div>
        <div class="price">₹16,499</div>
      </div>
    </div>

    <div class="card">
      <img src="./images/mobile3.jpg" alt="Mobile 3">
      <div class="info">
        <h4>iQOO Z9 5G (Alpha Edition, 8GB RAM)</h4>
        <div class="rating">★★★★☆ (2,411)</div>
        <div class="price">₹17,999</div>
      </div>
    </div>

    <div class="card">
      <img src="./images/mobile4.jpg" alt="Mobile 4">
      <div class="info">
        <h4>OnePlus Nord CE4 5G (128 GB, 8 GB RAM)</h4>
        <div class="rating">★★★★★ (10,012)</div>
        <div class="price">₹24,999</div>
      </div>
    </div>

    <div class="card">
      <img src="./images/mobile5.jpg" alt="Mobile 5">
      <div class="info">
        <h4>realme narzo 70 5G (128 GB)</h4>
        <div class="rating">★★★★☆ (6,014)</div>
        <div class="price">₹14,499</div>
      </div>
    </div>

    <div class="card">
      <img src="./images/mobile6.jpg" alt="Mobile 6">
      <div class="info">
        <h4>Motorola G73 5G (8 GB RAM, 128 GB)</h4>
        <div class="rating">★★★★☆ (3,221)</div>
        <div class="price">₹13,999</div>
      </div>
    </div>
  </div>
</div>

<!-- Footer -->
<footer>
  © 1996–2025, Amazon Clone — All rights reserved.
</footer>

</body>
</html>
