<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
    body {
        background-color: #f2f2f2;
        font-family: Arial, sans-serif;
    }

    .register-container {
        width: 400px;
        margin: 80px auto;
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        color: #232f3e;
        margin-bottom: 25px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 6px;
        box-sizing: border-box;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #ffa41c;
        border: none;
        color: white;
        font-weight: bold;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #ff9900;
    }

    .login-link {
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
    }

    .login-link a {
        color: #0073bb;
        text-decoration: none;
    }

    .login-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="register-container">
    <h2>Create Account</h2>
    <form action="register" method="post">
        <input type="text" name="username" placeholder="Enter username" required>
        <input type="email" name="email" placeholder="Enter email" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <input type="submit" value="Register">
    </form>
    <div class="login-link">
        Already have an account? <a href="login.jsp">Sign in</a>
    </div>
</div>
</body>
</html>
