package com.amazonclonewebapp.dao;

import com.amazonclonewebapp.model.BoxItem;
import com.amazonclonewebapp.util.HibernateUtil;
import org.hibernate.Session;

import java.util.List;

public class BoxItemDao {
    public List<BoxItem> getAll() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("from BoxItem", BoxItem.class).list();
        }
    }
}
