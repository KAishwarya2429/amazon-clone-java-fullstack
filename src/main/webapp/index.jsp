<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Amazon Clone Dropdown</title>
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

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(10px); }
      to { opacity: 1; transform: translateY(0); }
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
  </style>
</head>
<body>

  <nav>
    <div class="logo">
      <h2>Amazon</h2>
    </div>

    <div class="nav-bar">
      <div class="nav-text" onclick="toggleDropdown()">
        <p>Hello, sign in</p>
        <h1>Account & Lists</h1>
      </div>

      <div class="dropdown-menu" id="dropdown">
        <div class="signin-section">
          <button class="signin-btn">Sign in</button>
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
  </nav>

  <script>
    function toggleDropdown() {
      document.getElementById("dropdown").classList.toggle("show");
    }

    // Optional: Hide dropdown if clicked outside
    document.addEventListener("click", function (event) {
      const dropdown = document.getElementById("dropdown");
      const navText = document.querySelector(".nav-text");

      if (!dropdown.contains(event.target) && !navText.contains(event.target)) {
        dropdown.classList.remove("show");
      }
    });
  </script>

</body>
</html>
