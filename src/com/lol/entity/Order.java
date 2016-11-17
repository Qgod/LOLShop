package com.lol.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="t_order")
public class Order {

	private Integer id;
	private String orderId;//订单编号
	private String buyer;//购买者
	private String buyTime;//购买时间
	private double buyPrice;//总金额
	private int buyStatus;//订单状态
	private int isPay;//是否付款
	
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
	@Column(name = "buyer", length=20)
	public String getBuyer() {
		return buyer;
	}
	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}
	@Column(name = "buyTime", length=20)
	public String getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(String buyTime) {
		this.buyTime = buyTime;
	}
	@Column(name = "buyPrice", length=20)
	public double getBuyPrice() {
		return buyPrice;
	}
	public void setBuyPrice(double buyPrice) {
		this.buyPrice = buyPrice;
	}
	@Column(name = "buyStatus", length=11)
	public int getBuyStatus() {
		return buyStatus;
	}
	public void setBuyStatus(int buyStatus) {
		this.buyStatus = buyStatus;
	}
	
	
	public int getIsPay() {
		return isPay;
	}
	public void setIsPay(int isPay) {
		this.isPay = isPay;
	}
	
	public Order(Integer id, String orderId, String buyer, String buyTime,
			double buyPrice, int buyStatus, int isPay) {
		super();
		this.id = id;
		this.orderId = orderId;
		this.buyer = buyer;
		this.buyTime = buyTime;
		this.buyPrice = buyPrice;
		this.buyStatus = buyStatus;
		this.isPay = isPay;
	}
	public Order() {
		super();
	}
	
	
}
