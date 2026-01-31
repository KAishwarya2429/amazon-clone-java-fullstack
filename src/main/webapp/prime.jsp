<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Amazon Prime Benefits</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      font-family: Arial, sans-serif;
      background-color: #f3f3f3;
    }
    header {
      background-color: #232f3e;
      color: white;
      padding: 30px 30px;
      text-align: center;
      font-size: 28px;
    }
    .container {
      max-width: 1200px;
      margin: 40px auto;
      padding: 0 20px;
    }
    .section {
      display: flex;
      background-color: #fff;
      margin-bottom: 40px;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    .section:nth-child(even) {
      flex-direction: row-reverse;
    }
    .section img {
      width: 50%;
      height: auto;
      object-fit: cover;
    }
    .text {
      padding: 40px;
      width: 50%;
    }
    .text h2 {
      color: #007185;
      margin-bottom: 20px;
      font-size: 26px;
    }
    .text p {
      margin-bottom: 15px;
      line-height: 1.8;
      font-size: 18px;
    }
    .text a {
      color: #007185;
      text-decoration: none;
      font-weight: bold;
      font-size: 18px;
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
  <h1>Enjoy These Benefits with Prime</h1>
</header>

<div class="container">

  <div class="section">
    <img src="https://m.media-amazon.com/images/G/31/prime/PD21/Delivery1day_750x375.jpg" alt="Prime Delivery">
    <div class="text">
      <h2>Fast Free Delivery</h2>
      <p>Unlimited FREE Same-Day, 1-Day & 2-Day Delivery on eligible items across 100+ cities. Fastest delivery option is automatically selected for you.</p>
      <p>Also get Same-Day delivery in Delhi, Mumbai, Bangalore & Hyderabad via Prime Now App.</p>
      <a href="#">Learn more</a>
    </div>
  </div>

  <div class="section">
    <img src="https://m.media-amazon.com/images/G/31/prime/PD21/Video_750x375.jpg" alt="Prime Video">
    <div class="text">
      <h2>Prime Video</h2>
      <p>Watch the latest blockbusters, TV shows, and Amazon Originals like Reacher, Comicstaan, and more.</p>
      <p>Stream anytime on mobile, tablet, laptop or smart TV.</p>
      <a href="https://www.primevideo.com">Visit primevideo.com</a>
    </div>
  </div>

  <div class="section">
    <img src="https://m.media-amazon.com/images/G/31/prime/PD21/Music_750x375.jpg" alt="Prime Music">
    <div class="text">
      <h2>Prime Music</h2>
      <p>Ad-free music with unlimited offline downloads. Enjoy 75 million+ songs in multiple languages.</p>
      <p>Control music with Alexa and listen across all your devices.</p>
      <a href="#">Listen Now</a>
    </div>
  </div>

  <div class="section">
    <img src="https://m.media-amazon.com/images/G/31/prime/PD21/Gaming_750x375.jpg" alt="Prime Gaming">
    <div class="text">
      <h2>Prime Gaming</h2>
      <p>Download free games every month and enjoy exclusive in-game content.</p>
      <a href="#">Explore Prime Gaming</a>
    </div>
  </div>

  <div class="section">
    <img src="https://m.media-amazon.com/images/G/31/prime/PD21/Card_750x375.jpg" alt="ICICI Credit Card">
    <div class="text">
      <h2>Amazon Pay ICICI Credit Card</h2>
      <p>Get 5% cashback on Amazon purchases, 2% on 100+ partner sites, and 1% on other purchases.</p>
      <a href="#">Know More</a>
    </div>
  </div>

  <div class="section">
    <img src="https://m.media-amazon.com/images/G/31/prime/PD21/Reading_750x375.jpg" alt="Prime Reading">
    <div class="text">
      <h2>Prime Reading</h2>
      <p>Read hundreds of eBooks, comics and more with your Prime membership. Enjoy on Kindle or Kindle Lite app.</p>
      <a href="#">Explore Prime Reading</a>
    </div>
  </div>

</div>

<footer>
  &copy; 2025 Amazon Clone. All rights reserved.
</footer>

</body>
</html>
