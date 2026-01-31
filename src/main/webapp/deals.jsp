<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Today's Deals – Amazon Clone</title>
  <link href="https://fonts.googleapis.com/css2?family=Outfit&display=swap" rel="stylesheet" />
  <style>
    body {
      margin: 0;
      font-family: "Outfit", sans-serif;
      background-color: #f1f2f4;
      color: #111;
    }
    nav {
      background: #131921;
      color: white;
      display: flex;
      align-items: center;
      padding: 10px 20px;
      flex-wrap: wrap;
    }
    nav img { vertical-align: middle; }
    .nav-section { margin-right: 20px; display: flex; align-items: center; cursor: pointer; }
    .nav-search {
      flex: 1;
      max-width: 600px;
      display: flex;
      margin: 0 20px;
      border-radius: 4px;
      overflow: hidden;
      background: white;
    }
    .nav-search input {
      flex: 1;
      border: none;
      padding: 10px;
      font-size: 14px;
    }
    .nav-search btn, .nav-search-icon {
      background: #febd69;
      padding: 10px;
      display: block;
    }
    .nav-bar { position: relative; }
    .dropdown-menu {
      display: none;
      position: absolute;
      top: 50px;
      background: white;
      color: black;
      width: 300px;
      padding: 15px;
      box-shadow: 0 4px 6px rgba(0,0,0,0.2);
      z-index: 100;
    }
    .dropdown-menu.show { display: block; }
    .nav-bottom {
      background: #232f3e;
      padding: 10px 20px;
      display: flex;
      flex-wrap: wrap;
      gap: 15px;
      color: #fff;
    }
    .deals-banner {
      background: url("images/deals_banner.jpg") center/cover no-repeat;
      height: 350px;
    }
    .deals-section {
      max-width: 1200px;
      margin: auto;
      padding: 20px;
    }
    .deals-title {
      font-size: 28px;
      margin-bottom: 20px;
    }
    .deals-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 20px;
    }
    .deal-card {
      background: white;
      border-radius: 4px;
      overflow: hidden;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      display: flex;
      flex-direction: column;
      transition: transform 0.3s, box-shadow 0.3s;
    }
    .deal-card:hover {
      transform: scale(1.03);
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }
    .deal-img {
      width: 100%;
      height: 200px;
      object-fit: contain;
      background: #f7f7f7;
    }
    .deal-info {
      padding: 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .deal-title {
      font-size: 16px;
      font-weight: 600;
      margin-bottom: 8px;
      line-height: 1.2;
      height: 3em;
      overflow: hidden;
    }
    .deal-price {
      font-size: 18px;
      font-weight: bold;
      color: #b12704;
      margin-bottom: 8px;
    }
    .deal-discount {
      color: #007600;
      font-size: 14px;
    }
    .deal-btn {
      background: #ffd814;
      border: none;
      padding: 10px;
      cursor: pointer;
      font-weight: 600;
      border-radius: 4px;
      margin-top: 12px;
      transition: background 0.3s;
    }
    .deal-btn:hover {
      background: #f7ca00;
    }
    @media(max-width: 768px) {
      .deals-banner { height: 220px; }
    }
  </style>
  <script>
    function toggleDropdown() {
      document.getElementById("dropdown").classList.toggle("show");
    }
    document.addEventListener("DOMContentLoaded", () => {
      document.addEventListener("click", function(e) {
        if (!e.target.closest(".nav-bar")) {
          document.getElementById("dropdown").classList.remove("show");
        }
      });
    });
  </script>
</head>
<body>

<nav>
  <a href="index.jsp"><img src="images/amazon_logo.png" width="100" alt="Amazon Logo"></a>
  <div class="nav-section nav-country">
    <img src="images/location_icon.png" height="20"><div style="margin-left:5px;"><p style="font-size:12px;">Deliver to</p><h1 style="font-size:14px;">United Kingdom</h1></div>
  </div>
  <div class="nav-search">
    <input placeholder="Search Amazon">
    <img src="images/search_icon.png" class="nav-search-icon" alt="Search">
  </div>
  <div class="nav-section nav-language"><img src="images/us_flag.png" width="25"><span style="margin-left:5px;">EN</span></div>
  <div class="nav-section nav-bar" onclick="toggleDropdown()">
    <div><p style="font-size:12px;">Hello, sign in</p><h1 style="font-size:14px;">Account & Lists</h1></div>
    <div class="dropdown-menu" id="dropdown">
      <button style="width:100%;padding:10px;background:#ffd814;border:none;font-weight:bold;" onclick="window.location.href='signin.jsp'">Sign in</button>
      <p style="margin-top:8px;">New? <a href="#">Start here</a></p>
    </div>
  </div>
  <a href="signin.jsp" class="nav-section"><div><p style="font-size:12px;">Returns</p><h1 style="font-size:14px;">& Orders</h1></div></a>
  <div class="nav-section nav-cart" onclick="location.href='cart.jsp'">
    <img src="images/cart_icon.png" width="30"><strong style="margin-left:5px;">Cart</strong>
  </div>
</nav>

<div class="nav-bottom">
  <div style="display:flex;align-items:center;"><img src="images/menu_icon.png" width="20" style="margin-right:5px;"><span>All</span></div>
  <span>Today's Deals</span>
  <span>Customer Service</span>
  <span>Registry</span>
  <span>Gift Cards</span>
  <span>Sell</span>
</div>

<div class="deals-banner"></div>

<section class="deals-section">
  <h2 class="deals-title">Grab the Deal of the Day</h2>
  <div class="deals-grid">
    <!-- Example Deal Cards -->
    <div class="deal-card">
      <img src="images/deal1.jpg" class="deal-img" alt="Deal Item">
      <div class="deal-info">
        <div>
          <div class="deal-title">Wireless Bluetooth Over-Ear Headphones</div>
          <div class="deal-price">₹1,999 <span style="font-size:14px;color:#777;text-decoration:line-through;">₹3,499</span></div>
          <div class="deal-discount">43% off • Deal of the Day</div>
        </div>
        <button class="deal-btn">Add to Cart</button>
      </div>
    </div>

    <div class="deal-card">
      <img src="images/deal2.jpg" class="deal-img" alt="Deal Item">
      <div class="deal-info">
        <div>
          <div class="deal-title">Echo Dot (5th Gen) Smart Speaker</div>
          <div class="deal-price">₹3,299 <span style="font-size:14px;color:#777;text-decoration:line-through;">₹4,499</span></div>
          <div class="deal-discount">27% off • Limited Time Deal</div>
        </div>
        <button class="deal-btn">Add to Cart</button>
      </div>
    </div>
    <!-- Add more deals similarly -->
  </div>
</section>

</body>
</html>
