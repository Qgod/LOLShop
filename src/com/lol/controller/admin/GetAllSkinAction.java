package com.lol.controller.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lol.entity.Skin;
import com.lol.service.SkinService_admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller(value = "getAllSkinAction")
@Scope("prototype")
public class GetAllSkinAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	private SkinService_admin skinService_admin;

	private String tanke;
	private String fashi;
	private String sheshou;
	private String cike;
	private String qianxing;
	private String fuzhu;
	private String zhanshi;

	public String getTanke() {
		return tanke;
	}

	public void setTanke(String tanke) {
		this.tanke = tanke;
	}

	public String getFashi() {
		return fashi;
	}

	public void setFashi(String fashi) {
		this.fashi = fashi;
	}

	public String getSheshou() {
		return sheshou;
	}

	public void setSheshou(String sheshou) {
		this.sheshou = sheshou;
	}

	public String getCike() {
		return cike;
	}

	public void setCike(String cike) {
		this.cike = cike;
	}

	public String getQianxing() {
		return qianxing;
	}

	public void setQianxing(String qianxing) {
		this.qianxing = qianxing;
	}

	public String getFuzhu() {
		return fuzhu;
	}

	public void setFuzhu(String fuzhu) {
		this.fuzhu = fuzhu;
	}

	public String getZhanshi() {
		return zhanshi;
	}

	public void setZhanshi(String zhanshi) {
		this.zhanshi = zhanshi;
	}

	@Override
	public String execute() throws Exception {
		
//		System.out.println(zhanshi + fuzhu + qianxing + cike + sheshou + fashi + tanke);
		
		List<Skin> tankelist = skinService_admin.getTankeSkin(tanke);
		List<Skin> fashilist = skinService_admin.getFashiSkin(fashi);
		List<Skin> zhanshilist = skinService_admin.getZhanshiSkin(zhanshi);
		List<Skin> sheshoulist = skinService_admin.getSheshouSkin(sheshou);
		List<Skin> cikelist = skinService_admin.getCikeSkin(cike);
		List<Skin> qianxinglist = skinService_admin.getQianxingSkin(qianxing);
		List<Skin> fuzhulist = skinService_admin.getFuzhuSkin(fuzhu);
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.put("tanke", tankelist);
		session.put("fashi", fashilist);
		session.put("zhanshi", zhanshilist);
		session.put("sheshou", sheshoulist);
		session.put("cike", cikelist);
		session.put("qianxing", qianxinglist);
		session.put("fuzhu", fuzhulist);
		return SUCCESS;
	}

}
