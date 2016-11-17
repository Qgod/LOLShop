package com.lol.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="t_orderDetail")
public class OrderDetail {

	private Integer id;
	private String orderId;//订单编号
	private Integer skinId;//皮肤Id
	
	
	@Id
	@GenericGenerator(name = "generator", strategy = "native")
	@GeneratedValue(generator = "generator")
	@Column(name = "id", length=11)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "orderId", length=50)
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	@Column(name = "skinId", length=20)
	public Integer getSkinId() {
		return skinId;
	}
	public void setSkinId(Integer skinId) {
		this.skinId = skinId;
	}
	public OrderDetail(Integer id, String orderId, Integer skinId) {
		super();
		this.id = id;
		this.orderId = orderId;
		this.skinId = skinId;
	}
	public OrderDetail() {
		super();
	}
	
	
}
