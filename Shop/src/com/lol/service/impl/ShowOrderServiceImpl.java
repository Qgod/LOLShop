package com.lol.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.dao.OrderDao;
import com.lol.entity.Order;
import com.lol.service.ShowOrderService;
import com.lol.view.Skin_Order;

@Service
public class ShowOrderServiceImpl implements ShowOrderService{
	
	@Autowired
	private OrderDao orderdao;
	
	public OrderDao getOrderdao() {
		return orderdao;
	}

	public void setOrderdao(OrderDao orderdao) {
		this.orderdao = orderdao;
	}

	public Order ShowOrder(Integer order) {
		// TODO Auto-generated method stub
		return orderdao.ShowOrder(order);
	}

	

	public void changeOrderStatus(Integer orderid) {
		// TODO Auto-generated method stub
		 orderdao.getAllOrderStatus(orderid);
	}

	public List<Skin_Order> GetOrderByOrderId(String orderId) {
		// TODO Auto-generated method stub
		return orderdao.getOrderByOrderId(orderId);
	}

	public List<Order> allOrders() {
		// TODO Auto-generated method stub
		return orderdao.allOrders();
	}


}
