<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Amazon Sign-In</title>
    <link rel="icon" href="https://www.amazon.in/favicon.ico">
    <style>
        /* existing styles unchanged */
        body {
            background-color: #ffffff;
            font-family: "Amazon Ember", Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .amazon-logo {
            display: flex;
            justify-content: center;
            margin: 30px 0 20px;
        }

        .amazon-logo i {
            background-image: url("https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg");
            background-repeat: no-repeat;
            background-size: contain;
            width: 103px;
            height: 30px;
            display: block;
        }

        .signin-box {
            width: 350px;
            margin: auto;
            padding: 20px 26px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(15,17,17,.15);
        }

        .signin-box h1 {
            font-weight: 500;
            font-size: 30px;
            margin-bottom: 24px;
        }

        label {
            font-weight: 700;
            font-size: 16px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            margin-bottom: 18px;
            border: 1px solid #a6a6a6;
            border-radius: 4px;
            font-size: 15px;
        }

        .continue-btn {
            background-color: #ffd814;
            border: 1px solid #fcd200;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(213, 217, 217, 0.5);
            font-weight: 600;
            padding: 12px;
            font-size: 16px;
            color: #0f1111;
            cursor: pointer;
            width: 100%;
        }

        .continue-btn:hover {
            background-color: #f7ca00;
        }

        .terms {
            font-size: 14px;
            color: #111;
            margin-top: 20px;
            line-height: 1.6;
        }

        .terms a {
            color: #0066c0;
            text-decoration: none;
        }

        .business {
            font-size: 15px;
            margin-top: 24px;
            border-top: 1px solid #e7e7e7;
            padding-top: 18px;
        }

        .business a {
            color: #0066c0;
            text-decoration: none;
        }

        .new-to-amazon {
            width: 350px;
            margin: 30px auto 10px;
            font-size: 14px;
            color: #767676;
            text-align: center;
            position: relative;
        }

        .new-to-amazon:before,
        .new-to-amazon:after {
            content: "";
            position: absolute;
            top: 50%;
            width: 120px;
            height: 1px;
            background-color: #e7e7e7;
        }

        .new-to-amazon:before {
            left: 0;
        }

        .new-to-amazon:after {
            right: 0;
        }

        .create-btn {
            display: block;
            width: 350px;
            margin: 10px auto;
            text-align: center;
        }

        .create-btn button {
            background: linear-gradient(to bottom, #f7f8fa, #e7e9ec);
            border: 1px solid #adb1b8;
            border-radius: 8px;
            font-size: 15px;
            font-weight: 600;
            padding: 12px;
            color: #0f1111;
            width: 100%;
            cursor: pointer;
            box-shadow: 0 2px 5px rgba(213, 217, 217, 0.5);
        }

        .create-btn button:hover {
            background: #d7d9dc;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            font-size: 13px;
            color: #555;
        }

        .footer a {
            margin: 0 10px;
            color: #0066c0;
            text-decoration: none;
        }

        .footer p {
            margin-top: 10px;
            color: #888;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="amazon-logo">
    <i class="a-icon a-icon-logo" role="img" aria-label="Amazon"></i>
</div>

<div class="signin-box">
    <h1>Sign in</h1>

    <% String error = (String) request.getAttribute("error"); %>
    <% if (error != null) { %>
        <div class="error-message"><%= error %></div>
    <% } %>

    <form action="signin" method="post">
        <label for="email">Email or mobile phone number</label>
        <input type="text" id="email" name="email" required>
        <input type="submit" class="continue-btn" value="Continue">
    </form>

    <div class="terms">
        By continuing, you agree to Amazon's <a href="#">Conditions of Use</a> and <a href="#">Privacy Notice</a>.
    </div>

    <div class="business">
        <strong>Buying for work?</strong><br>
        <a href="#">Create a free business account</a>
    </div>
</div>

<div class="new-to-amazon">New to Amazon?</div>

<div class="create-btn">
    <a href="register.jsp">
        <button>Create your Amazon account</button>
    </a>
</div>

<div class="footer">
    <a href="#">Conditions of Use</a>
    <a href="#">Privacy Notice</a>
    <a href="#">Help</a>
    <p>© 1996–2025, Amazon.com, Inc. or its affiliates</p>
</div>

</body>
</html>
