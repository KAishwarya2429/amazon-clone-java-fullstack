<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Amazon Clone</title>
<link rel="stylesheet" href="css/style.css">
<link href='https://fonts.googleapis.com/css?family=Poppins'
	rel='stylesheet'>
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Outfit", sans-serif;
}

body {
	background: #f3f3f3;
}

a {
	text-decoration: none;
	color: inherit;
}

nav {
	display: flex;
	align-items: center;
	justify-content: space-between;
	background: #131921;
	padding: 14px 24px;
	color: #fff;
	position: relative;
}

.logo h2 {
	font-size: 26px;
	font-weight: bold;
	color: #f0c14b;
}

.nav-bar {
	display: flex;
	align-items: center;
	position: relative;
}

.nav-text {
	cursor: pointer;
	padding: 10px 14px;
	border-radius: 4px;
	transition: background 0.3s;
}

.nav-text:hover {
	background-color: #232f3e;
}

.nav-text p {
	font-size: 13px;
	color: #ccc;
}

.nav-text h1 {
	font-size: 16px;
	font-weight: 600;
}

.dropdown-menu {
	display: none;
	position: absolute;
	top: 100%;
	right: 0;
	width: 520px;
	background-color: white;
	border-radius: 8px;
	box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
	z-index: 100;
	padding: 24px;
	color: #111;
	animation: fadeIn 0.3s ease-in-out;
}

.dropdown-menu.show {
	display: block;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(10px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.signin-section {
	border-bottom: 1px solid #ddd;
	padding-bottom: 18px;
	margin-bottom: 20px;
}

.signin-btn {
	background-color: #ffd814;
	border: 1px solid #fcd200;
	padding: 12px 20px;
	font-size: 16px;
	font-weight: bold;
	color: #111;
	cursor: pointer;
	width: 100%;
	border-radius: 6px;
	transition: background 0.3s ease;
}

.signin-btn:hover {
	background-color: #f7ca00;
}

.signin-section p {
	font-size: 14px;
	margin-top: 10px;
	text-align: center;
}

.signin-section p a {
	color: #007185;
	font-weight: 500;
}

.dropdown-columns {
	display: flex;
	gap: 40px;
}

.dropdown-column h4 {
	font-size: 15px;
	margin-bottom: 12px;
	font-weight: 700;
	color: #111;
}

.dropdown-column ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.dropdown-column ul li {
	margin-bottom: 10px;
}

.dropdown-column ul li a {
	color: #007185;
	font-size: 14px;
	transition: color 0.2s ease-in-out;
}

.dropdown-column ul li a:hover {
	color: #c45500;
}

/* Sidebar Container */
.sidebar-overlay {
	position: fixed;
	top: 0;
	left: -300px;
	width: 300px;
	height: 100%;
	background-color: #ffffff;
	box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
	z-index: 1000;
	overflow-y: auto;
	transition: left 0.3s ease-in-out;
	padding: 25px;
	font-family: "Amazon Ember", Arial, sans-serif;
}

/* Show Sidebar */
.sidebar-overlay.show {
	left: 0;
}

/* Close Button */
.sidebar-overlay .close-btn {
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
	float: right;
	color: #111;
}

/* Headings */
.sidebar-overlay h3 {
	font-size: 20px;
	color: #0f1111;
	margin-bottom: 20px;
	border-bottom: 1px solid #ddd;
	padding-bottom: 10px;
}

.sidebar-overlay h4 {
	font-size: 18px;
	color: #0f1111;
	margin-top: 25px;
	margin-bottom: 10px;
	border-bottom: 1px solid #eee;
	padding-bottom: 5px;
}

/* List Styling */
.sidebar-overlay ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.sidebar-overlay ul li {
	padding: 10px 0;
	font-size: 16px;
	color: #007185;
	cursor: pointer;
	transition: background-color 0.2s;
}

.sidebar-overlay ul li:hover {
	background-color: #f1f1f1;
	padding-left: 8px;
}

/* Link inside list */
.sidebar-overlay ul li a {
	text-decoration: none;
	color: #007185;
}

.sidebar-overlay ul li a:hover {
	text-decoration: underline;
}

.account-box {
	display: flex;
	align-items: center;
	background-color: #232f3e; /* Dark Amazon-style background */
	color: white;
	padding: 12px 18px;
	border-radius: 10px;
	font-family: "Amazon Ember", Arial, sans-serif;
	width: 250px; /* Increased width */
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
}

.account-icon img {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	object-fit: cover;
	margin-right: 15px;
	border: 2px solid #fff;
}

.account-text .greeting {
	font-size: 14px;
	color: #ccc;
}

.account-text .signin-link {
	font-size: 17px;
	font-weight: bold;
	color: white;
	text-decoration: none;
}

.account-text .signin-link:hover {
	text-decoration: underline;
	color: #f3a847;
}

li ul li {
	font-size: 14px;
	color: #007185;
}

li ul li:hover {
	text-decoration: underline;
}

.amazon-category-dropdown {
  background-color: white;
  padding: 6px 12px;
  display: flex;
  align-items: center;
  cursor: pointer;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-family: 'Arial', sans-serif;
  font-size: 15px;
  position: relative;
  transition: background 0.2s ease;
}

.amazon-category-dropdown:hover {
  background-color: #f7f7f7;
}

.amazon-dropdown-label {
  margin-right: 6px;
  color: #111;
}

.amazon-dropdown-icon {
  width: 10px;
  height: 10px;
}

.amazon-dropdown-menu {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  margin-top: 6px;
  background-color: #ffffff;
  width: 240px;
  border: 1px solid #d5d9d9;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.12);
  padding: 8px 0;
  list-style: none;
  z-index: 1000;
  font-family: 'Amazon Ember', Arial, sans-serif;
}

.amazon-dropdown-menu li {
  padding: 0;
}

.amazon-dropdown-menu li a {
  display: block;
  padding: 12px 20px;
  text-decoration: none;
  font-size: 15px;
  color: #0f1111;
  transition: background-color 0.2s, color 0.2s;
}

.amazon-dropdown-menu li a:hover {
  background-color: #f7fafa;
  color: #111;
  font-weight: 500;
  border-left: 3px solid #ff9900;
}


</style>
</head>
<body>

	<!-- amazon logo -->
	<nav>
		<a href="/"> <img src="./images/amazon_logo.png" width="100"
			alt=""></a>

		<div class="nav-country">
			<img src="./images/location_icon.png" height="20" alt="">
			<div>
				<p>Deliver to</p>
				<h1>United Kingdom</h1>
			</div>
		</div>

		<div class="nav-search"
			style="display: flex; align-items: center; height: 40px; border: 2px solid #febd69; border-radius: 4px; overflow: hidden;">

			<!-- Category dropdown (left side) -->
			<div class="amazon-category-dropdown" onclick="toggleAmazonDropdown()" id="amazon-dropdown-toggle">
  <span class="amazon-dropdown-label">All</span>
  <img src="./images/dropdown_icon.png" alt="Dropdown Icon" class="amazon-dropdown-icon">
</div>

<ul id="amazon-category-list" class="amazon-dropdown-menu">
  <li><a href="Home.jsp">All Categories</a></li>
  <li><a href="newRealeases.jsp">New Release</a></li>
  <li><a href="gift.jsp">Gift Cards</a></li>
  <li><a href="sell.jsp">Sell</a></li>
  <li><a href="prime.jsp">Prime</a></li>
  <li><a href="deals.jsp">Deals</a></li>
  <li><a href="mobiles.jsp">Mobiles</a></li>
  <li><a href="electronics.jsp">Electronics</a></li>
  <li><a href="kitchen.jsp">Home & Kitchen</a></li>
  <li><a href="computers.jsp">Computers</a></li>
  <li><a href="registry.jsp">Registry</a></li>
  <li><a href="customerService.jsp">Customer Services</a></li>
</ul>
			

			<!-- Search form -->
			<form action="search" method="get"
				style="display: flex; flex-grow: 1; height: 100%;">
				<input type="text" name="query" placeholder="Search Amazon..."
					required
					style="flex-grow: 1; border: none; padding: 0 12px; font-size: 16px; outline: none;">

				<button type="submit"
					style="background-color: #febd69; border: none; width: 45px; display: flex; align-items: center; justify-content: center; cursor: pointer;">
					<img src="./images/search_icon.png" alt="Search"
						style="width: 20px; height: 20px;">
				</button>
			</form>
		</div>


		<div class="nav-language">
			<img src="./images/us_flag.png" width="25px" alt="">
			<p>EN</p>
			<img src="./images/dropdown_icon.png" width="8px" alt="">
		</div>

		<div class="nav-bar">
			<div class="nav-text" onclick="toggleDropdown()">
				<p>Hello, sign in</p>
				<h1>Account & Lists</h1>
			</div>

			<div class="dropdown-menu" id="dropdown">
				<div class="signin-section">
					<button class="signin-btn"
						onclick="window.location.href='signin.jsp'">Sign in</button>
					<p>
						New customer? <a href="#">Start here.</a>
					</p>
				</div>

				<div class="dropdown-columns">
					<div class="dropdown-column">
						<h4>Your Lists</h4>
						<ul>
							<li><a href="#">Create a List</a></li>
							<li><a href="#">Find a List</a></li>
							<li><a href="#">Wish List</a></li>
						</ul>
					</div>
					<div class="dropdown-column">
						<h4>Your Account</h4>
						<ul>
							<li><a href="#">Your Orders</a></li>
							<li><a href="#">Login & Security</a></li>
							<li><a href="#">Prime</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<a href="signin.jsp">
			<div class="nav-text">
				<p>Returns</p>
				<h1>& Orders</h1>
			</div>
		</a> <a href="cart.jsp" class="nav-cart"> <img
			src="./images/cart_icon.png" width="35px" alt="">
			<h4>Cart</h4>
		</a>


	</nav>


	<div class="nav-bottom">
		<div id="all-toggle" style="cursor: pointer;">
			<img src="./images/menu_icon.png" width="25px" alt="">
			<p>All</p>
		</div>

		<p>Fresh</p>
		<p><a href="amazonminitv.jsp">MX Player</a></p>
		<p><a href="sell.jsp">Sell</a></p>
		<p><a href="mobiles.jsp">Mobiles</a></p>
		<p><a href="prime.jsp">Primes</a></p>
		<p><a href="womenFashion.jsp">Fashion</a></p>
		<p><a href="newRealeases.jsp">New Release</a></p>
		<p><a href="amazonPay.jsp">Amazon Pay</a></p>
		<p><a href="electronics.jsp">Electronics</a></p>
		<p><a href="kitchen.jsp">Home & Kitchen</a></p>
		<p><a href="computers.jsp">Computers</a></p>
		<p><a href="deals.jsp">Today's Deal</a></p>
		<p><a href="customerService.jsp">Customer Services</a></p>
		<p><a href="registry.jsp">Registry</a></p>
		<p><a href="gift.jsp">Gift Cards</a></p>
		<p><a href="sell.jsp">Sell</a></p>
	</div>

	<div class="header-slider">
		<a href="#" class="control_prev">&#129144</a> <a href="#"
			class="control_next">&#129146</a>
		<ul>
			<img src="./images/header1.jpg" class="header-img" alt="">
			<img src="./images/header2.jpg" class="header-img" alt="">
			<img src="./images/header3.jpg" class="header-img" alt="">
			<img src="./images/header4.jpg" class="header-img" alt="">
			<img src="./images/header5.jpg" class="header-img" alt="">
			<img src="./images/header6.jpg" class="header-img" alt="">
		</ul>
	</div>

	<div class="box-row header-box">
		<div class="box-col">
			<h3>Appliances for your home | Up to 55% off</h3>
			<img src="./images/box1.jpg" alt=""> <a href="/">Shop More</a>
		</div>
		<div class="box-col">
			<h3>Lunar New Year</h3>
			<img src="./images/box1-2.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Toy under $25</h3>
			<img src="./images/box1-3.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Deals in PCs</h3>
			<img src="./images/box1-4.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
	</div>


	<div class="box-row">
		<div class="box-col">
			<h3>Grooming Products</h3>
			<img src="./images/box2-1.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Latest Devices</h3>
			<img src="./images/box2-2.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Pets Food</h3>
			<img src="./images/box2-3.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Fashion Mart</h3>
			<img src="./images/box2-4.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
	</div>


	<div class="product-slider">
		<h2>Up to 60% off | Curated kitchen products | Amazon Launchpad</h2>
		<div class="products">
			<img src="./images/product1-1.jpg" alt=""> <img
				src="./images/product1-2.jpg" alt=""> <img
				src="./images/product1-3.jpg" alt=""> <img
				src="./images/product1-4.jpg" alt=""> <img
				src="./images/product1-5.jpg" alt=""> <img
				src="./images/product1-6.jpg" alt=""> <img
				src="./images/product1-7.jpg" alt=""> <img
				src="./images/product1-8.jpg" alt=""> <img
				src="./images/product1-9.jpg" alt=""> <img
				src="./images/product1-10.jpg" alt="">
		</div>
	</div>
	
	<div class="product-slider">
		<h2>Up to 75% off | Get casual ready from Small Businesses</h2>
		<div class="products">
			<img src="./images/product1-1.jpg" alt=""> <img
				src="./images/product1-2.jpg" alt=""> <img
				src="./images/product1-3.jpg" alt=""> <img
				src="./images/product1-4.jpg" alt=""> <img
				src="./images/product1-5.jpg" alt=""> <img
				src="./images/product1-6.jpg" alt=""> <img
				src="./images/product1-7.jpg" alt=""> <img
				src="./images/product1-8.jpg" alt=""> <img
				src="./images/product1-9.jpg" alt=""> <img
				src="./images/product1-10.jpg" alt="">
		</div>
	</div>

	<div class="box-row">
		<div class="box-col">
			<h3>Stationary</h3>
			<img src="./images/box3-1.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Laptops for study</h3>
			<img src="./images/box3-2.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Office Chairs</h3>
			<img src="./images/box3-3.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Gaming Monitor</h3>
			<img src="./images/box3-4.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
	</div>
<div class="product-slider">
		<h2>Up to 50% off | Electronics & accessories from stores near you</h2>
		<div class="products">
			<img src="./images/product1-1.jpg" alt=""> <img
				src="./images/product1-2.jpg" alt=""> <img
				src="./images/product1-3.jpg" alt=""> <img
				src="./images/product1-4.jpg" alt=""> <img
				src="./images/product1-5.jpg" alt=""> <img
				src="./images/product1-6.jpg" alt=""> <img
				src="./images/product1-7.jpg" alt=""> <img
				src="./images/product1-8.jpg" alt=""> <img
				src="./images/product1-9.jpg" alt=""> <img
				src="./images/product1-10.jpg" alt="">
		</div>
	</div>
	
<div class="product-slider">
		<h2>Starting ₹70,348 | Ride into your next adventure</h2>
		<div class="products">
			<img src="./images/product1-1.jpg" alt=""> <img
				src="./images/product1-2.jpg" alt=""> <img
				src="./images/product1-3.jpg" alt=""> <img
				src="./images/product1-4.jpg" alt=""> <img
				src="./images/product1-5.jpg" alt=""> <img
				src="./images/product1-6.jpg" alt=""> <img
				src="./images/product1-7.jpg" alt=""> <img
				src="./images/product1-8.jpg" alt=""> <img
				src="./images/product1-9.jpg" alt=""> <img
				src="./images/product1-10.jpg" alt="">
		</div>
	</div>
	<div class="product-slider-with-price">
		<h2>Deals Under $25</h2>
		<div class="products">
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-1.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-2.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-3.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-4.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-5.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-6.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-7.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-8.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-9.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-10.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
			<div class="product-card">
				<div class="product-img-container">
					<img src="./images/product2-11.jpg" alt="">
				</div>
				<div class="product-offer">
					<p>27% off</p>
					<span>Deal</span>
				</div>
				<p class="product-price">
					$<span>14.49</span> List Price:$19.95
				</p>
				<h4>This product is the best for you</h4>
			</div>
		</div>
	</div>

	<div class="product-slider">
		<h2>Best Sellers in Sports & Outdoors</h2>
		<div class="products">
			<img src="./images/product2-1.jpg" alt=""> <img
				src="./images/product2-2.jpg" alt=""> <img
				src="./images/product2-3.jpg" alt=""> <img
				src="./images/product2-4.jpg" alt=""> <img
				src="./images/product2-5.jpg" alt=""> <img
				src="./images/product2-6.jpg" alt=""> <img
				src="./images/product2-7.jpg" alt=""> <img
				src="./images/product2-8.jpg" alt=""> <img
				src="./images/product2-9.jpg" alt=""> <img
				src="./images/product2-10.jpg" alt="">
		</div>
	</div>

	<div class="box-row ">
		<div class="box-col">
			<h3>Free international returns</h3>
			<img src="./images/box3-1.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Lunar New Year</h3>
			<img src="./images/box3-2.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Toy under $25</h3>
			<img src="./images/box3-3.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Deals in PCs</h3>
			<img src="./images/box3-4.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
	</div>
<div class="product-slider">
		<h2>Min. 40% off | Curated products from women entrepreneurs</h2>
		<div class="products">
			<img src="./images/product1-1.jpg" alt=""> <img
				src="./images/product1-2.jpg" alt=""> <img
				src="./images/product1-3.jpg" alt=""> <img
				src="./images/product1-4.jpg" alt=""> <img
				src="./images/product1-5.jpg" alt=""> <img
				src="./images/product1-6.jpg" alt=""> <img
				src="./images/product1-7.jpg" alt=""> <img
				src="./images/product1-8.jpg" alt=""> <img
				src="./images/product1-9.jpg" alt=""> <img
				src="./images/product1-10.jpg" alt="">
		</div>
	</div>
	
	<div class="box-row ">
		<div class="box-col">
			<h3>Free international returns</h3>
			<img src="./images/box3-1.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Lunar New Year</h3>
			<img src="./images/box3-2.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Toy under $25</h3>
			<img src="./images/box3-3.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
		<div class="box-col">
			<h3>Deals in PCs</h3>
			<img src="./images/box3-4.jpg" alt=""> <a href="/">Shop
				More</a>
		</div>
	</div>
	
	<!-- Sidebar Dropdown Menu
	<footer>
		<img src="./images/amazon_logo.png" width="100" alt="">
		<p>@ 1996-2024, Amazon.com, Inc. or its affilities</p>
	</footer>
	 -->
	  <div style="background-color: #37475a; text-align: center; padding: 15px; cursor: pointer;">
    <a href="#" style="color: white; text-decoration: none; font-weight: bold;">Back to top</a>
  </div>
	 <footer style="background-color: #232f3e; color: white; font-family: Arial, sans-serif; font-size: 16px;">
  <!-- Back to Top -->
 <div style="text-align: center; padding: 30px 20px;">
    <img src="./images/amazon_logo.png" alt="Amazon Logo" width="100">
    <p style="margin-top: 10px; color: #dddddd;">English - India</p>
    <div style="font-size: 14px; color: #cccccc; max-width: 800px; margin: 10px auto;">
      AbeBooks — Books, art & collectibles |
      Amazon Web Services — Scalable Cloud Computing Services |
      Audible — Download Audio Books |
      IMDb — Movies, TV & Celebrities |
      Shopbop — Designer Fashion Brands |
      Amazon Business — Everything For Your Business |
      Prime Now — 2-Hour Delivery |
      Amazon Prime Music — 100 million songs, ad-free, 15+ million podcast episodes
    </div>
  </div>

  <!-- Main Sections -->
  <div style="display: flex; flex-wrap: wrap; justify-content: space-around; padding: 40px 20px;">
    <!-- Column 1 -->
    <div style="flex: 1 1 200px; margin: 20px;">
      <h3 style="color: white; margin-bottom: 15px;">Get to Know Us</h3>
      <ul style="list-style: none; padding: 0;">
        <li><a href="#" style="color: #dddddd; text-decoration: none;">About Amazon</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Careers</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Press Releases</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Amazon Science</a></li>
      </ul>
    </div>

    <!-- Column 2 -->
    <div style="flex: 1 1 200px; margin: 20px;">
      <h3 style="color: white; margin-bottom: 15px;">Connect with Us</h3>
      <ul style="list-style: none; padding: 0;">
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Facebook</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Twitter</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Instagram</a></li>
      </ul>
    </div>

    <!-- Column 3 -->
    <div style="flex: 1 1 200px; margin: 20px;">
      <h3 style="color: white; margin-bottom: 15px;">Make Money with Us</h3>
      <ul style="list-style: none; padding: 0;">
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Sell on Amazon</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Amazon Accelerator</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Amazon Global Selling</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Become an Affiliate</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Advertise Products</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Amazon Pay on Merchants</a></li>
      </ul>
    </div>

    <!-- Column 4 -->
    <div style="flex: 1 1 200px; margin: 20px;">
      <h3 style="color: white; margin-bottom: 15px;">Let Us Help You</h3>
      <ul style="list-style: none; padding: 0;">
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Your Account</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Returns Centre</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Product Recalls</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">100% Purchase Protection</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">App Download</a></li>
        <li><a href="#" style="color: #dddddd; text-decoration: none;">Help</a></li>
      </ul>
    </div>
  </div>

  <!-- Divider -->
  <hr style="border: 0.5px solid #3a4553; margin: 0 20px;">

  <!-- Language, Logos, Services -->
  

  <!-- Bottom Legal -->
 
</footer>
	  <div style="text-align: center; padding: 20px; font-size: 14px; color: #888888;">
    <p>Conditions of Use & Sale | Privacy Notice | Interest-Based Ads</p>
    <p>© 1996-2025, Amazon.com, Inc. or its affiliates</p>
  </div>

<script>
  document.querySelector('a[href="#"]').addEventListener('click', function (e) {
    e.preventDefault();
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });
</script>

	<!-- Sidebar Dropdown Menu -->
	<div id="allSidebar" class="sidebar-overlay">
		<div class="sidebar-content">
			<span class="close-btn" onclick="toggleSidebar()">&times;</span>
			<div class="account-box">
				<div class="account-icon">
					<img src="./images/default-image.jpeg" alt="User">
				</div>
				<div class="account-text">
					Hello, <a href="signin.jsp" class="signin-link">Sign in</a>
				</div>
			</div>

			<h4>Trending</h4>
			<ul>
				<li><a href="amazonBestsellers.jsp">Bestsellers</a></li>
				<li><a href="newRealeases.jsp">New Releases</a></li>
				<li><a href="movers.jsp">Movers and Shakers</a></li>
			</ul>

			<h4>Digital Content and Devices</h4>
			<ul>
				<li>Echo & Alexa</li>
				<li>Fire TV</li>
				<li>Kindle E-Readers & eBooks</li>
				<li>Audible Audiobooks</li>
				<li>Amazon Prime Video</li>
				<li>Amazon Prime Music</li>
			</ul>

			<h4>Shop by Category</h4>
			<ul>
				<li>Mobiles, Computers</li>
				<li>TV, Appliances, Electronics</li>
				<li>Men's Fashion</li>
				<li><a href="womenFashion.jsp">Women's Fashion</a></li>
				<li onclick="toggleSeeAllDropdown()" style="cursor: pointer;">
					See all
					<ul id="seeAllDropdown"
						style="display: none; padding-left: 15px; margin-top: 8px;">
						<li>Home,Kitchen,Pets</li>
						<li>Beauty,Health,Grocery</li>
						<li>Sport,Fittness</li>
						<li>Toy,Baby Product ,Kids Fashion</li>
						<li>Car,Motor,Cycles</li>
						<li>Books</li>
						<li>Movies,Music & video games</li>
						<li>International Brands</li>
					</ul>
				</li>

			</ul>
			</ul>

			<h4>Programs & Features</h4>
			<ul>
				<li><a href="amazonPay.jsp">Amazon Pay</a></li>
				<li>Gift Cards & Mobile Recharges</li>
				<li><a href="amazonLaunchpad.jsp">Amazon Launchpad</a></li>
				<li><a href="amazonBusiness.jsp">Amazon Business</a></li>
				<li onclick="toggleSeeAllDropdown()" style="cursor: pointer;">
					See all
					<ul id="seeAllDropdown"
						style="display: none; padding-left: 15px; margin-top: 8px;">
						<li>Handloom and Handicrafts</li>
						<li>Amazon Saheli</li>
						<li>Amazon Combos</li>
						<li>Amazon Custom</li>
						<li>Flight Tickets</li>
						<li>Buy more, Save more</li>
						<li>Clearance store</li>
						<li>International Brands</li>
					</ul>
				</li>

			</ul>

			<h4>Help & Settings</h4>
			<ul>
				<li><a href="yourAccount.jsp">Your Account</a></li>
				<li><a href="customerService.jsp">Customer Service</a></li>
				<li><a href="signin.jsp">Sign in</a></li>
			</ul>
		</div>
	</div>



	<script src="script/script.js"></script>


	<script>
		function toggleDropdown() {
			document.getElementById("dropdown").classList.toggle("show");
		}

		// Optional: Hide dropdown if clicked outside
		document.addEventListener("click", function(event) {
			const dropdown = document.getElementById("dropdown");
			const navText = document.querySelector(".nav-text");

			if (!dropdown.contains(event.target)
					&& !navText.contains(event.target)) {
				dropdown.classList.remove("show");
			}
		});
	</script>
	<script>
		function toggleSidebar() {
			document.getElementById("allSidebar").classList.toggle("show");
		}

		document.getElementById("all-toggle").addEventListener("click",
				toggleSidebar);
	</script>

	<script>
		function toggleSeeAllDropdown() {
			const dropdown = document.getElementById("seeAllDropdown");
			dropdown.style.display = dropdown.style.display === "none" ? "block"
					: "none";
		}
	</script>
	
	<script>
  function toggleAmazonDropdown() {
    const menu = document.getElementById('amazon-category-list');
    menu.style.display = (menu.style.display === 'block') ? 'none' : 'block';
  }

  document.addEventListener('click', function (event) {
    const menu = document.getElementById('amazon-category-list');
    const toggle = document.getElementById('amazon-dropdown-toggle');

    if (!toggle.contains(event.target)) {
      menu.style.display = 'none';
    }
  });
</script>
	
	
</body>
</html>