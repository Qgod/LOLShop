package com.lol.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_skin")
public class Skin {

	private Integer id;
	private String skinName;//皮肤名称
	private String skinType;//皮肤类别
	private double skinPrice;//皮肤价格
	private String skinHero;//皮肤所属英雄
	private String skinPicture;//皮肤图片路径
	private int skinDiscount;//皮肤折扣
	private String skinHeroType;//皮肤所属英雄类别
	private int skinStatus;//皮肤状态（是否已经上架）
	private String skinSenes;//皮肤系列（如原计划，泳池派对）
	
	
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
	@Column(name = "skinName", length=100)
	public String getSkinName() {
		return skinName;
	}
	public void setSkinName(String skinName) {
		this.skinName = skinName;
	}
	@Column(name = "skinType", length=20)
	public String getSkinType() {
		return skinType;
	}
	public void setSkinType(String skinType) {
		this.skinType = skinType;
	}
	@Column(name = "skinPrice", length=11)
	public double getSkinPrice() {
		return skinPrice;
	}
	public void setSkinPrice(double skinPrice) {
		this.skinPrice = skinPrice;
	}
	@Column(name = "skinHero", length=20)
	public String getSkinHero() {
		return skinHero;
	}
	public void setSkinHero(String skinHero) {
		this.skinHero = skinHero;
	}
	@Column(name = "skinPicture", length=200)
	public String getSkinPicture() {
		return skinPicture;
	}
	public void setSkinPicture(String skinPicture) {
		this.skinPicture = skinPicture;
	}
	@Column(name = "skinDiscount", length=11)
	public int getSkinDiscount() {
		return skinDiscount;
	}
	public void setSkinDiscount(int skinDiscount) {
		this.skinDiscount = skinDiscount;
	}
	@Column(name = "skinHeroType", length=20)
	public String getSkinHeroType() {
		return skinHeroType;
	}
	public void setSkinHeroType(String skinHeroType) {
		this.skinHeroType = skinHeroType;
	}
	@Column(name = "skinStatus", length=20)
	public int getSkinStatus() {
		return skinStatus;
	}
	public void setSkinStatus(int skinStatus) {
		this.skinStatus = skinStatus;
	}
	@Column(name = "skinSenes", length=20)
	public String getSkinSenes() {
		return skinSenes;
	}
	public void setSkinSenes(String skinSenes) {
		this.skinSenes = skinSenes;
	}
	public Skin(Integer id, String skinName, String skinType, double skinPrice,
			String skinHero, String skinPicture, int skinDiscount,
			String skinHeroType, int skinStatus, String skinSenes) {
		super();
		this.id = id;
		this.skinName = skinName;
		this.skinType = skinType;
		this.skinPrice = skinPrice;
		this.skinHero = skinHero;
		this.skinPicture = skinPicture;
		this.skinDiscount = skinDiscount;
		this.skinHeroType = skinHeroType;
		this.skinStatus = skinStatus;
		this.skinSenes = skinSenes;
	}
	public Skin() {
		super();
	}
	
	
}
