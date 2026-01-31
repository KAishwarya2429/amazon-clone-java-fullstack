<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Categories - Amazon</title>
    <link rel="icon" href="https://www.amazon.in/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Amazon Ember', Arial, sans-serif;
            background-color: #f2f2f2;
            color: #111;
        }

        header {
            background-color: #232f3e;
            padding: 20px;
            color: white;
            text-align: center;
        }

        header h1 {
            font-size: 30px;
        }

        .container {
            max-width: 1300px;
            margin: auto;
            padding: 30px 20px;
        }

        h2.section-title {
            font-size: 26px;
            color: #e47911;
            margin-bottom: 20px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .product-card {
            background: #fff;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        .product-card img {
            max-width: 100%;
            height: 180px;
            object-fit: contain;
            margin-bottom: 15px;
        }

        .product-card h3 {
            font-size: 18px;
            color: #232f3e;
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 15px;
            color: #555;
            margin-bottom: 10px;
        }

        .product-card span.price {
            color: #b12704;
            font-size: 18px;
            font-weight: bold;
        }

        .product-card button {
            margin-top: 10px;
            background-color: #ffa41c;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        .product-card button:hover {
            background-color: #ff9900;
        }

        footer {
            background-color: #232f3e;
            color: white;
            padding: 40px 20px;
            font-size: 14px;
            margin-top: 40px;
        }

        footer .footer-sections {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            max-width: 1200px;
            margin: auto;
            gap: 30px;
        }

        footer .footer-section h4 {
            font-size: 16px;
            margin-bottom: 10px;
        }

        footer .footer-section a {
            display: block;
            color: #ccc;
            text-decoration: none;
            margin-bottom: 6px;
        }

        footer .footer-section a:hover {
            text-decoration: underline;
        }

        footer .footer-bottom {
            text-align: center;
            margin-top: 30px;
        }

        @media screen and (max-width: 768px) {
            .footer-sections {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>Explore All Categories</h1>
    <p>Find everything you need on Amazon</p>
</header>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Explore Electronics
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="./images/box1.jpg" alt="Smartphone">
            <h3>Samsung Galaxy S23</h3>
            <p>128GB | Phantom Black</p>
            <span class="price">₹74,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61ZG+aAZ4wL._SL1500_.jpg" alt="Laptop">
            <h3>HP Pavilion 14</h3>
            <p>11th Gen i5 | 16GB RAM</p>
            <span class="price">₹58,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71yAX99DnfL._SL1500_.jpg" alt="Headphones">
            <h3>boAt Rockerz 450</h3>
            <p>Bluetooth Over-Ear Headphones</p>
            <span class="price">₹1,499</span><br>
            <button>Add to Cart</button>
        </div>
        <!-- Add more product cards as needed -->
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Home & Kitchen
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61GlcxhZPFL._SL1500_.jpg" alt="Mixer Grinder">
            <h3>Philips Mixer Grinder</h3>
            <p>750 Watts | 3 Jars</p>
            <span class="price">₹3,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91Oss3bAM9L._SL1500_.jpg" alt="Water Bottle">
            <h3>Milton Thermosteel Flask</h3>
            <p>1 Litre | Stainless Steel</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61Kh5F8ptXL._SL1500_.jpg" alt="Cookware">
            <h3>Prestige Induction Cooktop</h3>
            <p>2000-Watt | Push Button</p>
            <span class="price">₹2,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Fashion
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Books
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Cars
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Toy & Game
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Jewellary
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Gift Cards
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Clothing
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>

<div class="container">
    <div style="text-align: center; margin: 30px 0;">
  <a href="electronics.jsp" style="
      background-color: #ff9900;
      color: white;
      padding: 12px 24px;
      font-size: 18px;
      font-weight: bold;
      border: none;
      border-radius: 6px;
      text-decoration: none;
      transition: background-color 0.3s ease;
      display: inline-block;">
      Shooes & Handbags
  </a>
</div>
    
    <div class="grid">
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/71rC8pEk2dL._SL1500_.jpg" alt="T-Shirt">
            <h3>Levi's Men's T-Shirt</h3>
            <p>Cotton | Slim Fit</p>
            <span class="price">₹799</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61xPsbj8NIL._SL1500_.jpg" alt="Shoes">
            <h3>Puma Men's Sneakers</h3>
            <p>Casual | White</p>
            <span class="price">₹1,999</span><br>
            <button>Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/91oF9q-jE2L._SL1500_.jpg" alt="Watch">
            <h3>Fastrack Casual Watch</h3>
            <p>Analog | Water Resistant</p>
            <span class="price">₹1,299</span><br>
            <button>Add to Cart</button>
        </div>
    </div>
</div>
<footer>
    <p style="text-align:center;"><a href="#" style="color: white; text-decoration: none;">Back to top</a></p>
    <div class="footer-sections">
        <div class="footer-section">
            <h4>Get to Know Us</h4>
            <a href="#">About Us</a>
            <a href="#">Careers</a>
            <a href="#">Press Releases</a>
            <a href="#">Amazon Science</a>
        </div>
        <div class="footer-section">
            <h4>Connect with Us</h4>
            <a href="#">Facebook</a>
            <a href="#">Twitter</a>
            <a href="#">Instagram</a>
        </div>
        <div class="footer-section">
            <h4>Make Money with Us</h4>
            <a href="#">Sell on Amazon</a>
            <a href="#">Become an Affiliate</a>
            <a href="#">Advertise Your Products</a>
            <a href="#">Amazon Pay on Merchants</a>
        </div>
        <div class="footer-section">
            <h4>Let Us Help You</h4>
            <a href="#">Your Account</a>
            <a href="#">Returns Centre</a>
            <a href="#">100% Purchase Protection</a>
            <a href="#">Help</a>
        </div>
    </div>
    <div class="footer-bottom">
        <p>© 1996–2025, Amazon.com, Inc. or its affiliates</p>
    </div>
</footer>

</body>
</html>
