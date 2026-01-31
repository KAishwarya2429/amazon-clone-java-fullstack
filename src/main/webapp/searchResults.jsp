<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.amazonclonewebapp.model.Product" %>
<html>
<head><title>Search Results</title></head>
<body>
    <h2>Search Results:</h2>
    <%
        List<Product> products = (List<Product>) request.getAttribute("results");
        if (products.isEmpty()) {
    %>
        <p>No products found for your search.</p>
    <%
        } else {
            for (Product p : products) {
    %>
        <div>
            <img src="images/<%= p.getImage_url() %>" width="100" />
            <h3><%= p.getName() %></h3>
            <p><%= p.getDescription() %></p>
            <p>₹<%= p.getPrice() %></p>
        </div>
        <hr>
    <%
            }
        }
    %>
</body>
</html>
    