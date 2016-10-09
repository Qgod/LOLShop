package com.lol.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_banner")
public class Banner {

	private Integer id;
	private String bannerName;//banner名字
	private String bannerParameter;//banner所带超链接参数
	private String bannerPicture;//banner图片路径
	private int bannerStatus;//banner状态
	
	
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
	@Column(name = "bannerName", length=50)
	public String getBannerName() {
		return bannerName;
	}
	public void setBannerName(String bannerName) {
		this.bannerName = bannerName;
	}
	@Column(name = "bannerParameter", length=50)
	public String getBannerParameter() {
		return bannerParameter;
	}
	public void setBannerParameter(String bannerParameter) {
		this.bannerParameter = bannerParameter;
	}
	@Column(name = "bannerPicture", length=200)
	public String getBannerPicture() {
		return bannerPicture;
	}
	public void setBannerPicture(String bannerPicture) {
		this.bannerPicture = bannerPicture;
	}
	@Column(name = "bannerStatus", length=11)
	public int getBannerStatus() {
		return bannerStatus;
	}
	public void setBannerStatus(int bannerStatus) {
		this.bannerStatus = bannerStatus;
	}
	public Banner(Integer id, String bannerName, String bannerParameter,
			String bannerPicture, int bannerStatus) {
		super();
		this.id = id;
		this.bannerName = bannerName;
		this.bannerParameter = bannerParameter;
		this.bannerPicture = bannerPicture;
		this.bannerStatus = bannerStatus;
	}
	public Banner() {
		super();
	}
	@Override
	public String toString() {
		return "Banner [id=" + id + ", bannerName=" + bannerName
				+ ", bannerParameter=" + bannerParameter + ", bannerPicture="
				+ bannerPicture + ", bannerStatus=" + bannerStatus + "]";
	}
	
	
}
