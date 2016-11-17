package com.lol.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lol.dao.BaseDaos;
import com.lol.dao.OrderDao;
import com.lol.entity.Order;
import com.lol.view.Skin_Order;


@Repository
public class ShowOrderDaoImpl extends BaseDaos implements OrderDao{

	public Order ShowOrder(Integer order) {
		// TODO Auto-generated method stub
		return (Order) getSession().get(Order.class, order);
	}

	public List<Skin_Order> getOrderByOrderId(String orderId) {
		// TODO Auto-generated method stub
		return getSession().createQuery("from Skin_Order where orderId=:orderId")
				.setParameter("orderId", orderId).list();
	}

	public void getAllOrderStatus(Integer order) {
		// TODO Auto-generated method stub
		Order od=(Order) getSession().get(Order.class, order);
		od.setBuyStatus(1);
		getSession().update(od);
	}

	public List<Order> allOrders() {
		// TODO Auto-generated method stub
		
		
		return getSession().createQuery("from Order where isPay=1").list();
	}
	
	
}
