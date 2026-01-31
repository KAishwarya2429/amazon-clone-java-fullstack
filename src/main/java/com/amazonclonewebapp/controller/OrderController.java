package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.OrderDao;
import com.amazonclonewebapp.model.Order;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Date;

@WebServlet("/placeOrder")
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OrderDao orderDao;

    public void init() {
        orderDao = new OrderDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        double totalAmount = Double.parseDouble(request.getParameter("totalAmount"));

        Order order = new Order(userId, totalAmount, new Date(), "Processing");
        orderDao.saveOrder(order);

        response.sendRedirect("order_success.jsp");
    }

    public void destroy() {
        orderDao.close();
    }
}
