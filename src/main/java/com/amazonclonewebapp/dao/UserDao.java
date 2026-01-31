package com.amazonclonewebapp.dao;

import com.amazonclonewebapp.model.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import com.amazonclonewebapp.util.HibernateUtil;

import java.util.List;

public class UserDao {

    // Save User
    public void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            e.printStackTrace();
        }
    }

    // Get All Users
    public List<User> getAllUsers() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("from User", User.class).list();
        }
    }

    // Get User by Email (for login)
    public User getUserByEmail(String email) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Query<User> query = session.createQuery("FROM User WHERE email = :email", User.class);
            query.setParameter("email", email);
            return query.uniqueResult();
        }
    }

    // Validate login (email + password)
    public boolean validateLogin(String email, String password) {
        User user = getUserByEmail(email);
        return user != null && user.getPassword().equals(password);
    }
}
