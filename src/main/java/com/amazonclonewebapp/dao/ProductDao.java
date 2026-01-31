package com.amazonclonewebapp.dao;

import com.amazonclonewebapp.model.Product;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class ProductDao {

    private SessionFactory sessionFactory;

    // Constructor initializes the Hibernate session factory
    public ProductDao() {
        sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    }

    // Save a new product
    public void saveProduct(Product product) {
        Transaction tx = null;
        try (Session session = sessionFactory.openSession()) {
            tx = session.beginTransaction();
            session.save(product);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        }
    }

    // Get all products
    public List<Product> getAllProducts() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("FROM Product", Product.class).list();
        }
    }

    // Get product by ID
    public Product getProductById(int id) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(Product.class, id);
        }
    }

    // Update an existing product
    public void updateProduct(Product product) {
        Transaction tx = null;
        try (Session session = sessionFactory.openSession()) {
            tx = session.beginTransaction();
            session.update(product);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        }
    }

    // Delete a product by ID
    public void deleteProduct(int id) {
        Transaction tx = null;
        try (Session session = sessionFactory.openSession()) {
            tx = session.beginTransaction();
            Product product = session.get(Product.class, id);
            if (product != null) {
                session.delete(product);
            }
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        }
    }

    // Search products by keyword (name or description)
    public List<Product> searchProducts(String keyword) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery(
                    "FROM Product WHERE LOWER(name) LIKE :keyword OR LOWER(description) LIKE :keyword",
                    Product.class)
                    .setParameter("keyword", "%" + keyword.toLowerCase() + "%")
                    .getResultList();
        }
    }

    // Close the session factory (call this on app shutdown)
    public void close() {
        if (sessionFactory != null) {
            sessionFactory.close();
        }
    }
}
