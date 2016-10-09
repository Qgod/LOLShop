package com.lol.controller.admin;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.lol.service.SkinService_admin;
import com.opensymphony.xwork2.ActionSupport;

@Controller(value="changeSkinStatusAction")
@Scope("prototype")
public class ChangeSkinStatusAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int theid;
	private int thestatus;
	
	@Autowired
	private SkinService_admin skinService_admin;

	public int getTheid() {
		return theid;
	}

	public void setTheid(int theid) {
		this.theid = theid;
	}

	public int getThestatus() {
		return thestatus;
	}

	public void setThestatus(int thestatus) {
		this.thestatus = thestatus;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println(thestatus + " "+theid);
		skinService_admin.changeSkinStatus(thestatus, theid);
		int result = 1;
		HttpServletResponse re=ServletActionContext.getResponse();
		re.setCharacterEncoding("UTF-8");
		PrintWriter pw=re.getWriter();
		pw.print(result);
		pw.flush();
		pw.close();
		return null;
	}

}
