package com.lol.service;

import java.util.List;

import com.lol.entity.Order;

public interface OrderService {

	public void add(Order order);
	
	public List<Order> getAllOrder();
	
	public List<Order> getOrderByUserName(String userName);
	
	public Order getOrderByOrderId(String orderId);
	
	public void deleteOrder(Order order);
	
	public void updateOrder(Order o);
	
}
