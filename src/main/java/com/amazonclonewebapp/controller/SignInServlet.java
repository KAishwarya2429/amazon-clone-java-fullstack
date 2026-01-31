package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.UserDao;
import com.amazonclonewebapp.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/signin")
public class SignInServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        UserDao userDao = new UserDao();
        User user = userDao.getUserByEmail(email);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user); // Optional: session login
            response.sendRedirect("Home.jsp"); // Redirect after login
        } else {
            request.setAttribute("error", "Account not found.");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        }
    }
}
