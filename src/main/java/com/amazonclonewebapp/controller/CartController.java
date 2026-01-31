package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.CartItemDao;
import com.amazonclonewebapp.dao.ProductDao;
import com.amazonclonewebapp.model.CartItem;
import com.amazonclonewebapp.model.Product;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/cart")
public class CartController extends HttpServlet {

    private CartItemDao cartDao;
    private ProductDao productDao;

    @Override
    public void init() throws ServletException {
        cartDao = new CartItemDao();
        productDao = new ProductDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int userId = Integer.parseInt(request.getParameter("user_id")); // you can use session too

        switch (action == null ? "list" : action) {
            case "delete":
                int id = Integer.parseInt(request.getParameter("id"));
                cartDao.removeCartItem(id);
                response.sendRedirect("cart?user_id=" + userId);
                break;

            case "clear":
                cartDao.clearCart(userId);
                response.sendRedirect("cart?user_id=" + userId);
                break;

            default:
                List<CartItem> cart = cartDao.getCartItemsByUser(userId);
                request.setAttribute("cart", cart);
                request.getRequestDispatcher("cart.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("user_id"));
        int productId = Integer.parseInt(request.getParameter("product_id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product product = productDao.getProductById(productId);
        CartItem item = new CartItem(userId, product, quantity);
        cartDao.addToCart(item);

        response.sendRedirect("cart?user_id=" + userId);
    }
}
