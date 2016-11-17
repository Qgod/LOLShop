package com.lol.service;

import java.util.List;

import com.lol.entity.Order;
import com.lol.view.Skin_Order;

public interface ShowOrderService {
	
	public Order ShowOrder(Integer order);
	public List<Skin_Order> GetOrderByOrderId(String orderId);
	public void changeOrderStatus(Integer orderId);
	List<Order> allOrders();
}
