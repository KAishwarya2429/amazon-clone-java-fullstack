package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.BoxItemDao;
import com.amazonclonewebapp.model.BoxItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/shopMore")
public class ShopMoreController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        BoxItemDao dao = new BoxItemDao();
        List<BoxItem> items = dao.getAll();

        System.out.println("➡ ShopMoreController: Item list fetched: " + (items != null ? items.size() : "null"));

        if (items != null) {
            for (BoxItem bi : items) {
                System.out.println("➡ Title: " + bi.getTitle() + ", Image: " + bi.getImageUrl());
            }
        }

        request.setAttribute("items", items);
        request.getRequestDispatcher("shopMore.jsp").forward(request, response);
    }
}
