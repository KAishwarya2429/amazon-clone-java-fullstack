<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.amazonclonewebapp.model.Product" %>
<%
    Product product = (Product) request.getAttribute("product");
    boolean isEdit = (product != null);
%>
<html>
<head>
    <title><%= isEdit ? "Edit Product" : "Add New Product" %></title>
    <style>
        body { font-family: Arial, sans-serif; padding: 30px; }
        form { width: 400px; margin: auto; }
        label { display: block; margin: 10px 0 5px; }
        input, textarea { width: 100%; padding: 8px; margin-bottom: 15px; }
        button { background-color: #4CAF50; color: white; padding: 10px 15px; border: none; border-radius: 4px; cursor: pointer; }
        a.back-link { display: inline-block; margin-top: 20px; text-decoration: none; color: #2196F3; }
    </style>
</head>
<body>
    <h2><%= isEdit ? "Edit Product" : "Add New Product" %></h2>
    <form action="products" method="post">
        <% if (isEdit) { %>
            <input type="hidden" name="id" value="<%= product.getProduct_id() %>" />
        <% } %>

        <label for="name">Product Name</label>
        <input type="text" name="name" required value="<%= isEdit ? product.getName() : "" %>" />

        <label for="description">Description</label>
        <textarea name="description"><%= isEdit ? product.getDescription() : "" %></textarea>

        <label for="price">Price</label>
        <input type="number" name="price" step="0.01" required value="<%= isEdit ? product.getPrice() : "" %>" />

        <label for="image_url">Image URL</label>
        <input type="text" name="image_url" required value="<%= isEdit ? product.getImage_url() : "" %>" />

        <button type="submit"><%= isEdit ? "Update Product" : "Add Product" %></button>
    </form>

    <a class="back-link" href="products">← Back to Product List</a>
</body>
</html>
