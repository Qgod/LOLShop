package com.lol.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.lol.entity.User;
import com.lol.service.UserService;
import com.lol.util.ResponseUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class UserController extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;

	private String result;
	
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	private String userName;
	private String password;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String regist() throws Exception {
		//HttpSession session=(HttpSession) ActionContext.getContext().getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		/*JSONObject jo=new JSONObject();
		jo.put("result", "当前用户名已被注册！");*/
		if(userService.getByUserName(userName)!=null){
			//ResponseUtil.write(response, jo);
			result="false";
			System.out.println(result);
			return SUCCESS;
		}else{
			User user=new User();
			user.setUserName(userName);
			user.setPassword(password);
			userService.add(user);
			//session.setAttribute("currentUser", user);
			//jo.put("result", "1");
			//ResponseUtil.write(response, jo);
			result="true";
			return ERROR;
		}
		
	}
	
	public String login() throws Exception {
		HttpSession session=ServletActionContext.getRequest().getSession();
		User user=new User();
		user.setUserName(userName);
		user.setPassword(password);
		User currentUser=new User();
		currentUser=userService.get(user);
		if(currentUser!=null){
			session.setAttribute("currentUser", currentUser);
			result="true";
			return SUCCESS;
		}else{
			result="false";
			return ERROR;
		}
		
	}
	
	public String exit()throws Exception {
		HttpSession session=ServletActionContext.getRequest().getSession();
		User currentUser=new User();
		currentUser.setUserName("");
		currentUser.setPassword("");
		session.setAttribute("currentUser", currentUser);
		return SUCCESS;
	}
	
	

}
