package com.lol.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lol.dao.BaseDao;
import com.lol.entity.Order;
import com.lol.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService{

	@Resource
	private BaseDao<Order> baseDao;
	public void add(Order order) {
		baseDao.save(order);
	}
	public List<Order> getAllOrder() {
		return baseDao.find("from Order");
	}
	public List<Order> getOrderByUserName(String userName) {
		return baseDao.find("from Order where buyer=?",new Object[]{userName});
	}
	public Order getOrderByOrderId(String orderId) {
		return baseDao.get("from Order where orderId=?", new Object[]{orderId});
	}
	public void deleteOrder(Order order) {
		baseDao.delete(order);
	}
	public void updateOrder(Order o) {
		baseDao.update(o);
	}

}
