package com.amazonclonewebapp.controller;

import com.amazonclonewebapp.dao.ProductDao;
import com.amazonclonewebapp.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet("/products")
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDao productDao;

    @Override
    public void init() throws ServletException {
        productDao = new ProductDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "new":
                request.getRequestDispatcher("product-form.jsp").forward(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        String imageUrl = request.getParameter("image_url");

        Product product;
        if (id == null || id.isEmpty()) {
            // Create new product
            product = new Product(name, description, price, imageUrl, LocalDateTime.now());
            productDao.saveProduct(product);
        } else {
            // Update existing product
            int productId = Integer.parseInt(id);
            product = productDao.getProductById(productId);
            if (product != null) {
                product.setName(name);
                product.setDescription(description);
                product.setPrice(price);
                product.setImage_url(imageUrl);
                productDao.updateProduct(product);
            }
        }

        response.sendRedirect("products");
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> productList = productDao.getAllProducts();
        request.setAttribute("products", productList);
        request.getRequestDispatcher("product-list.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDao.getProductById(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("product-form.jsp").forward(request, response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        productDao.deleteProduct(id);
        response.sendRedirect("products");
    }
}
