package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.ProductDao;
import com.amazonclonewebapp.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/search")  
public class SearchController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String query = request.getParameter("query");

        ProductDao dao = new ProductDao();
        List<Product> searchResults = dao.searchProducts(query);

        request.setAttribute("results", searchResults);
        request.getRequestDispatcher("searchResults.jsp").forward(request, response);
    }
}
