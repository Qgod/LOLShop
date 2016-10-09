package com.lol.controller.admin;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lol.entity.Banner;
import com.lol.service.viewBannerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("getAllBanner")
public class GetAllBannerController extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	public viewBannerService vbs;

	public viewBannerService getVbs() {
		return vbs;
	}

	public void setVbs(viewBannerService vbs) {
		this.vbs = vbs;
	}
	
	public String execute(){
		try{
			
			List<Banner> list = new ArrayList<Banner>();
			list=vbs.getAllBanner();
			for(Banner b:list){
				System.out.println(b.toString());
			}
			/*ActionContext actionContext = ActionContext.getContext();
			Map<String, Object> session = actionContext.get*/
			ServletActionContext.getRequest().setAttribute("bannerList", list);
		}catch(Exception e){
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	private Integer id;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void changeStatus() throws Exception{
		
		ServletActionContext.getResponse().getWriter().print(vbs.changeBannerStatus(id));
	}
	
	private Integer bannerid;
	
	public Integer getBannerid() {
		return bannerid;
	}

	public void setBannerid(Integer bannerid) {
		this.bannerid = bannerid;
	}

	public void deletebanner() throws Exception{
		PrintWriter pw=ServletActionContext.getResponse().getWriter();
		System.out.println(bannerid);
		try{
			vbs.deleteBanner(bannerid);
			pw.print("0");
			
		}catch(Exception e){
			e.printStackTrace();
			pw.print("1");
		}
	}
}
