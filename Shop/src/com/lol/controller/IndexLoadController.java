package com.lol.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;


import org.springframework.stereotype.Controller;

import com.lol.entity.Banner;
import com.lol.entity.Skin;
import com.lol.service.BannerService;
import com.lol.service.SkinService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class IndexLoadController extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Resource
	private SkinService skinService;
	
	@Resource
	private BannerService bannerService;

	@Override
	public String execute() throws Exception {
		ServletContext application=ServletActionContext.getServletContext();
		List<Skin> skinList=skinService.getAllSkin();
		List<Skin> skinList_type=skinService.getSkinBySkinType("限定");
		List<Skin> skinList_price=skinService.getSkinByPriceDesc();
		List<Banner> bannerList=bannerService.getAllBanner();
		
		application.setAttribute("skinList", skinList);
		application.setAttribute("skinList_type", skinList_type);
		application.setAttribute("skinList_price", skinList_price);
		application.setAttribute("bannerList", bannerList);
		return SUCCESS;
	}
	
	

}
