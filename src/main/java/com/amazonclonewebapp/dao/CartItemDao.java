package com.amazonclonewebapp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query; // ✅ USE THIS ONE

import com.amazonclonewebapp.model.CartItem;
import com.amazonclonewebapp.model.Product;

import java.util.List;


public class CartItemDao {

    private SessionFactory sessionFactory;

    public CartItemDao() {
        sessionFactory = new Configuration().configure().buildSessionFactory();
    }

    public void addToCart(CartItem item) {
        try (Session session = sessionFactory.openSession()) {
            Transaction tx = session.beginTransaction();
            session.save(item);
            tx.commit();
        }
    }

    public List<CartItem> getCartItemsByUser(int userId) {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM CartItem WHERE user_id = :uid";
            Query<CartItem> query = session.createQuery(hql, CartItem.class);
            query.setParameter("uid", userId);
            return query.list();
        }
    }

    public void removeCartItem(int id) {
        try (Session session = sessionFactory.openSession()) {
            Transaction tx = session.beginTransaction();
            CartItem item = session.get(CartItem.class, id);
            if (item != null) {
                session.delete(item);
            }
            tx.commit();
        }
    }

    public void clearCart(int userId) {
        try (Session session = sessionFactory.openSession()) {
            Transaction tx = session.beginTransaction();
            Query<?> query = session.createQuery("DELETE FROM CartItem WHERE user_id = :uid");
            query.setParameter("uid", userId);
            query.executeUpdate();
            tx.commit();
        }
    }

    public void close() {
        if (sessionFactory != null) sessionFactory.close();
    }
}
