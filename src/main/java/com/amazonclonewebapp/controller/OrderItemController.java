package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.OrderItemDao;
import com.amazonclonewebapp.model.OrderItem;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/addOrderItem")
public class OrderItemController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OrderItemDao orderItemDao;

    public void init() {
        orderItemDao = new OrderItemDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));

        OrderItem item = new OrderItem(orderId, productId, quantity, price);
        orderItemDao.saveOrderItem(item);

        response.sendRedirect("order_items.jsp?orderId=" + orderId);
    }

    public void destroy() {
        orderItemDao.close();
    }
}
