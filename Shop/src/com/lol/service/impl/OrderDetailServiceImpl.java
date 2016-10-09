package com.lol.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lol.dao.BaseDao;
import com.lol.entity.OrderDetail;
import com.lol.service.OrderDetailService;
@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService{

	@Resource
	private BaseDao<OrderDetail> baseDao;
	public void add(OrderDetail od) {
		baseDao.save(od);
	}
	public List<OrderDetail> getOrderDetailByOrderId(String orderId) {
		return baseDao.find("from OrderDetail where orderId=?", new Object[]{orderId});
	}
	public void deleteOrderDetail(OrderDetail o) {
		baseDao.delete(o);
	}

}
