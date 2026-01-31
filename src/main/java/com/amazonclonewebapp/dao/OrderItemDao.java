package com.amazonclonewebapp.dao;

import com.amazonclonewebapp.model.OrderItem;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.*;
import java.util.List;

public class OrderItemDao {

    private SessionFactory sessionFactory;

    public OrderItemDao() {
        sessionFactory = new Configuration().configure().buildSessionFactory();
    }

    public void saveOrderItem(OrderItem item) {
        try (Session session = sessionFactory.openSession()) {
            Transaction tx = session.beginTransaction();
            session.save(item);
            tx.commit();
        }
    }

    public List<OrderItem> getItemsByOrderId(int orderId) {
        try (Session session = sessionFactory.openSession()) {
            Query<OrderItem> query = session.createQuery("FROM OrderItem WHERE orderId = :oid", OrderItem.class);
            query.setParameter("oid", orderId);
            return query.list();
        }
    }

    public void close() {
        if (sessionFactory != null) sessionFactory.close();
    }
}
