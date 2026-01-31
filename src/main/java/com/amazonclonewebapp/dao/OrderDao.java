package com.amazonclonewebapp.dao;

import com.amazonclonewebapp.model.Order;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.*;

import java.util.List;

public class OrderDao {

    private SessionFactory sessionFactory;

    public OrderDao() {
        sessionFactory = new Configuration().configure().buildSessionFactory();
    }

    public void saveOrder(Order order) {
        try (Session session = sessionFactory.openSession()) {
            Transaction tx = session.beginTransaction();
            session.save(order);
            tx.commit();
        }
    }

    public List<Order> getOrdersByUserId(int userId) {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Order WHERE userId = :uid";
            Query<Order> query = session.createQuery(hql, Order.class);
            query.setParameter("uid", userId);
            return query.list();
        }
    }

    public void close() {
        if (sessionFactory != null) sessionFactory.close();
    }
}
