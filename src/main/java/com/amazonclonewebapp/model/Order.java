package com.amazonclonewebapp.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderId;

    private int userId;

    private double totalAmount;

    @Temporal(TemporalType.TIMESTAMP)
    private Date orderDate;

    private String status;

    public Order() {}

    public Order(int userId, double totalAmount, Date orderDate, String status) {
        this.userId = userId;
        this.totalAmount = totalAmount;
        this.orderDate = orderDate;
        this.status = status;
    }

    // Getters and Setters
    public int getOrderId() { return orderId; }
    public void setOrderId(int orderId) { this.orderId = orderId; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public double getTotalAmount() { return totalAmount; }
    public void setTotalAmount(double totalAmount) { this.totalAmount = totalAmount; }

    public Date getOrderDate() { return orderDate; }
    public void setOrderDate(Date orderDate) { this.orderDate = orderDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
