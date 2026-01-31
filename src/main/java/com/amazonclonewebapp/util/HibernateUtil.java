package com.amazonclonewebapp.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.amazonclonewebapp.model.BoxItem;
import com.amazonclonewebapp.model.CartItem;
import com.amazonclonewebapp.model.Order;
import com.amazonclonewebapp.model.OrderItem;
import com.amazonclonewebapp.model.Product;
import com.amazonclonewebapp.model.User;

public class HibernateUtil {
    private static final SessionFactory sessionFactory;

    static {
        try {
            Configuration configuration = new Configuration().configure();
            configuration.addAnnotatedClass(User.class);
            configuration.addAnnotatedClass(Product.class);
            configuration.addAnnotatedClass(CartItem.class);
            configuration.addAnnotatedClass(Order.class);
            configuration.addAnnotatedClass(OrderItem.class);
            configuration.addAnnotatedClass(BoxItem.class);
            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
