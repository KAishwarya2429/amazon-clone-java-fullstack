<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Computers | Amazon Clone</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f1f3f6;
    }
    header {
      background-color: #232f3e;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 28px;
    }
    .banner {
      width: 100%;
      height: auto;
    }
    .container {
      max-width: 1200px;
      margin: 40px auto;
      padding: 0 20px;
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
      transition: transform 0.3s ease;
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
      color: #007185;
      margin: 0 0 10px;
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
      font-size: 18px;
      margin-top: 60px;
    }
  </style>
</head>
<body>

<header>
  Computers & Accessories
</header>

<img class="banner" src="https://images-eu.ssl-images-amazon.com/images/G/31/img19/CEPC/event/April23/GW/Final/PC-GW_Hero_3000x1200._CB594202764_.jpg" alt="Computers Banner">

<div class="container">
  <h2 class="section-title">Top Categories</h2>
  <div class="grid">

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/61S+5RzUusL._AC_UL480_FMwebp_QL65_.jpg" alt="Laptops">
      <div class="card-body">
        <h3>Laptops</h3>
        <p>Explore the latest laptops for gaming, work, and study.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/71KR2i6-WaL._AC_UL480_FMwebp_QL65_.jpg" alt="Desktops">
      <div class="card-body">
        <h3>Desktops</h3>
        <p>Powerful desktop PCs for home and office use.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/71RC3o90shL._AC_UL480_FMwebp_QL65_.jpg" alt="Monitors">
      <div class="card-body">
        <h3>Monitors</h3>
        <p>Full HD and 4K monitors for productivity and gaming.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/71m7LrF20sL._AC_UL480_FMwebp_QL65_.jpg" alt="Keyboards">
      <div class="card-body">
        <h3>Keyboards & Mice</h3>
        <p>Wireless, mechanical, and ergonomic input devices.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/61fxa8-ZyGL._AC_UL480_FMwebp_QL65_.jpg" alt="Storage">
      <div class="card-body">
        <h3>Storage Devices</h3>
        <p>Browse external HDDs, SSDs, USB drives & memory cards.</p>
      </div>
    </div>

    <div class="card">
      <img src="https://m.media-amazon.com/images/I/71xZb1v00-L._AC_UL480_FMwebp_QL65_.jpg" alt="Printers">
      <div class="card-body">
        <h3>Printers</h3>
        <p>Inkjet, laser, and all-in-one printers for home/office.</p>
      </div>
    </div>

  </div>
</div>

<footer>
  &copy; 2025 Amazon Clone. All rights reserved.
</footer>

</body>
</html>
