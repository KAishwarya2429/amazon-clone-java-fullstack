<%@ page language="java" import="java.util.*,com.amazonclonewebapp.dao.OrderItemDao,com.amazonclonewebapp.model.OrderItem" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Items</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            padding: 30px;
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            background: #fff;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #e8e8e8;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .error {
            color: red;
            text-align: center;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h2>Order Items</h2>
    <%
        String orderIdParam = request.getParameter("orderId");
        if (orderIdParam != null && !orderIdParam.isEmpty()) {
            try {
                int orderId = Integer.parseInt(orderIdParam);
                OrderItemDao dao = new OrderItemDao();
                List<OrderItem> items = dao.getItemsByOrderId(orderId);
                if (!items.isEmpty()) {
    %>
    <table>
        <tr>
            <th>Item ID</th>
            <th>Product ID</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <% for(OrderItem item : items) { %>
        <tr>
            <td><%= item.getOrderItemId() %></td>
            <td><%= item.getProductId() %></td>
            <td><%= item.getQuantity() %></td>
            <td>₹<%= item.getPrice() %></td>
        </tr>
        <% } %>
    </table>
    <%
                } else {
    %>
        <p class="error">No items found for this order.</p>
    <%
                }
            } catch (NumberFormatException e) {
    %>
        <p class="error">Invalid order ID format.</p>
    <%
            }
        } else {
    %>
        <p class="error">Missing orderId parameter in URL.</p>
    <%
        }
    %>
</body>
</html>
