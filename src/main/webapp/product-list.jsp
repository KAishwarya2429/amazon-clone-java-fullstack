<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.amazonclonewebapp.model.Product" %>
<html>
<head>
    <title>Product List</title>
    <style>
        body { font-family: Arial, sans-serif; padding: 20px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: center; }
        th { background-color: #f44336; color: white; }
        a.button { padding: 6px 12px; text-decoration: none; background: #2196F3; color: white; border-radius: 4px; }
        a.button.delete { background: #f44336; }
        .top-bar { margin-bottom: 20px; }
    </style>
</head>
<body>
    <div class="top-bar">
        <h2>Product List</h2>
        <a href="products?action=new" class="button">Add New Product</a>
    </div>
    <table>
        <tr>
            <th>ID</th><th>Name</th><th>Description</th><th>Price</th><th>Image</th><th>Created At</th><th>Actions</th>
        </tr>
        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            for (Product p : products) {
        %>
        <tr>
            <td><%= p.getProduct_id() %></td>
            <td><%= p.getName() %></td>
            <td><%= p.getDescription() %></td>
            <td>₹<%= p.getPrice() %></td>
            <td><img src="<%= p.getImage_url() %>" width="50" /></td>
            <td><%= p.getCreated_at() %></td>
            <td>
                <a class="button" href="products?action=edit&id=<%= p.getProduct_id() %>">Edit</a>
                <a class="button delete" href="products?action=delete&id=<%= p.getProduct_id() %>" onclick="return confirm('Delete this product?')">Delete</a>
            </td>
        </tr>
        <% } %>
    </table>
</body>
</html>
