package com.lol.service;

import java.util.List;

import com.lol.entity.OrderDetail;

public interface OrderDetailService {

	public void add(OrderDetail od);
	
	public List<OrderDetail> getOrderDetailByOrderId(String orderId);
	
	public void deleteOrderDetail(OrderDetail o);
}
