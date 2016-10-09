package com.lol.dao;

import java.util.List;

import com.lol.entity.Order;
import com.lol.view.Skin_Order;

public interface OrderDao {

	Order ShowOrder(Integer order);
	List<Skin_Order> getOrderByOrderId(String orderId);
	
	void getAllOrderStatus(Integer order);
	
	List<Order> allOrders();
}
