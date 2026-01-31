package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.UserDao;
import com.amazonclonewebapp.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/register")
public class UserController extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() {
        userDao = new UserDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User newUser = new User(username, email, password);
        userDao.saveUser(newUser);

        response.sendRedirect("login.jsp"); // redirect to login page after registration
    }
}
