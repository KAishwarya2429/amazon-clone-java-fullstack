<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.amazonclonewebapp.model.CartItem" %>
<%@ page import="com.amazonclonewebapp.model.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Cart</title>
    <style>
        /* [Same CSS as you already have — keeping intact for layout/styling] */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: "Arial", sans-serif; background-color: #e3e6e6; }
        nav { background-color: #131921; color: white; display: flex; align-items: center; justify-content: space-between; padding: 10px 20px; flex-wrap: wrap; }
        nav a, .nav-text, .nav-country, .nav-language, .nav-cart, .nav-search { margin: 0 10px; }
        nav img { vertical-align: middle; }
        .nav-country, .nav-language, .nav-text, .nav-cart { display: flex; align-items: center; cursor: pointer; }
        .nav-country div, .nav-text { margin-left: 5px; }
        .nav-text p, .nav-country p { font-size: 12px; }
        .nav-text h1, .nav-country h1 { font-size: 14px; font-weight: bold; }
        .nav-search { display: flex; flex: 1; max-width: 600px; background-color: white; border-radius: 4px; overflow: hidden; margin: 0 15px; }
        .nav-search-category { background-color: #f3f3f3; padding: 10px; display: flex; align-items: center; font-size: 12px; border-right: 1px solid #ccc; }
        .nav-search-input { border: none; padding: 10px; flex: 1; }
        .nav-search-icon { background-color: #febd69; padding: 10px; width: 40px; }
        .dropdown-menu { position: absolute; top: 60px; background-color: white; color: black; border: 1px solid #ddd; width: 300px; display: none; z-index: 1000; padding: 15px; }
        .show { display: block; }
        .signin-section { margin-bottom: 10px; }
        .signin-btn { padding: 10px 20px; background-color: #ffd814; border: none; cursor: pointer; font-weight: bold; width: 100%; }
        .dropdown-columns { display: flex; justify-content: space-between; }
        .dropdown-column ul { list-style: none; padding: 0; }
        .dropdown-column ul li { margin-bottom: 5px; }
        .cart-container { display: flex; justify-content: space-between; padding: 20px 40px; margin-top: 20px; }
        .cart-items { background-color: #fff; flex: 0.7; padding: 20px; border-radius: 4px; }
        .cart-item { display: flex; gap: 20px; border-bottom: 1px solid #ddd; padding: 15px 0; }
        .cart-item img { width: 180px; object-fit: contain; }
        .item-details { flex: 1; }
        .item-details h3 { font-size: 18px; font-weight: 500; }
        .item-details p { margin: 5px 0; font-size: 14px; }
        .cart-btn { margin-right: 10px; padding: 6px 12px; background-color: #f0f2f2; border: 1px solid #a6a6a6; cursor: pointer; font-size: 13px; }
        .cart-summary { background-color: #fff; flex: 0.25; padding: 20px; height: fit-content; border-radius: 4px; }
        .cart-summary p { font-size: 16px; margin-bottom: 20px; }
        .checkout-btn { width: 100%; padding: 10px 0; background-color: #ffd814; border: 1px solid #fcd200; cursor: pointer; font-weight: bold; }
    </style>

    <script>
        function toggleDropdown() {
            document.getElementById("dropdown").classList.toggle("show");
        }
    </script>
</head>

<body>

<nav>
    <a href="/"> <img src="./images/amazon_logo.png" width="100" alt=""></a>

    <div class="nav-country">
        <img src="./images/location_icon.png" height="20" alt="">
        <div>
            <p>Deliver to</p>
            <h1>United Kingdom</h1>
        </div>
    </div>

    <div class="nav-search">
        <div class="nav-search-category">
            <p>All</p>
            <img src="./images/dropdown_icon.png" height="12" alt="">
        </div>
        <input type="text" class="nav-search-input" placeholder="Search Amazon">
        <img src="./images/search_icon.png" alt="" class="nav-search-icon">
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
                <button class="signin-btn" onclick="window.location.href='signin.jsp'">Sign in</button>
                <p>New customer? <a href="#">Start here.</a></p>
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

    <div class="nav-text">
        <p>Returns</p>
        <h1>& Orders</h1>
    </div>

    <a href="#" class="nav-cart">
        <img src="./images/cart_icon.png" width="35px" alt="">
        <h4>Cart</h4>
    </a>
</nav>

<!-- ✅ CART SECTION -->
<div class="cart-container">
    <div class="cart-items">
        <h2>Shopping Cart</h2>
        <%
            List<CartItem> cart = (List<CartItem>) request.getAttribute("cart");
            int total = 0;
            if (cart != null && !cart.isEmpty()) {
                for (CartItem item : cart) {
                    Product product = item.getProduct();
                    double itemTotal = product.getPrice() * item.getQuantity();
                    total += itemTotal;
        %>
        <div class="cart-item">
            <img src="<%= product.getImage_url() %>" alt="Product">
            <div class="item-details">
                <h3><%= product.getName() %></h3>
                <p>Price: ₹<%= product.getPrice() %></p>
                <p>Quantity: <%= item.getQuantity() %></p>
                <p>Total: ₹<%= itemTotal %></p>

                <form action="cart" method="get" style="display:inline;">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="id" value="<%= item.getCart_item_id() %>">
                    <input type="hidden" name="user_id" value="<%= item.getUser_id() %>">
                    <button class="cart-btn" type="submit">Delete</button>
                </form>
                <button class="cart-btn">Save for later</button>
            </div>
        </div>
        <%
                }
            } else {
        %>
        <p>No items in your cart.</p>
        <%
            }
        %>
    </div>

    <div class="cart-summary">
        <%
            int itemCount = (cart != null) ? cart.size() : 0;
        %>
        <p>Subtotal (<%= itemCount %> item<%= itemCount == 1 ? "" : "s" %>): <strong>₹<%= total %></strong></p>
        <button class="checkout-btn">Proceed to Buy</button>
    </div>
</div>

</body>
</html>
