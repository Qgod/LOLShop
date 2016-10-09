package com.lol.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="t_shopCar")
public class ShopCar {

	private Integer id;
	private Integer userId;//用户Id
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
	@Column(name = "userId", length=20)
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	@Column(name = "skinId", length=20)
	public Integer getSkinId() {
		return skinId;
	}
	public void setSkinId(Integer skinId) {
		this.skinId = skinId;
	}
	public ShopCar(Integer id, Integer userId, Integer skinId) {
		super();
		this.id = id;
		this.userId = userId;
		this.skinId = skinId;
	}
	public ShopCar() {
		super();
	}
	
	
}
