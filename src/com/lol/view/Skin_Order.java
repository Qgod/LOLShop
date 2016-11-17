package com.lol.view;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="skin_order")
public class Skin_Order {

	private Integer id;
	private String orderId;
	private String skinPrice;
	private String skinType;
	private Integer skinId;
	private String skinName;

	
	@Id
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	
	@Column
	public Integer getSkinId() {
		return skinId;
	}
	public void setSkinId(Integer skinId) {
		this.skinId = skinId;
	}
	
	@Column
	public String getSkinName() {
		return skinName;
	}
	public void setSkinName(String skinName) {
		this.skinName = skinName;
	}
	
	@Column
	public String getSkinPrice() {
		return skinPrice;
	}
	public void setSkinPrice(String skinPrice) {
		this.skinPrice = skinPrice;
	}
	
	@Column
	public String getSkinType() {
		return skinType;
	}
	public void setSkinType(String skinType) {
		this.skinType = skinType;
	}
	
	
	
}
