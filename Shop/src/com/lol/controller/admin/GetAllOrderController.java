package com.lol.controller.admin;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lol.entity.Order;
import com.lol.service.ShowOrderService;
import com.lol.view.Skin_Order;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;


@Controller("getAllOrder")
public class GetAllOrderController extends ActionSupport{

	private static final long serialVersionUID = 1L;

	@Autowired
	public ShowOrderService soService;
	public ShowOrderService getSoService() {
		return soService;
	}

	public void setSoService(ShowOrderService soService) {
		this.soService = soService;
	}
	
	private String result;
	
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("begin");
		List<Order> list=soService.allOrders();
		System.out.println("end");
		
		result="1";
				//JSONArray.fromObject(list).toString();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		
		response.getWriter().print(result);
		System.out.println(result);
		return SUCCESS;
	}
	
	private String orderId;
	
	
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public void getOrderByOrderId()throws Exception{
		List<Skin_Order> list=soService.GetOrderByOrderId(orderId);
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		
		String re=JSONArray.fromObject(list.toArray()).toString();
		System.out.println(re);
		response.getWriter().print(re);
	}
	
	private Integer id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public void changeOrderStatus() throws Exception{
		PrintWriter pw=ServletActionContext.getResponse().getWriter();
		try{
			soService.changeOrderStatus(id);
			pw.print("0");
		}catch(Exception e){
			e.printStackTrace();
			pw.print("1");
		}
		
	}
	
	public void allOrder() throws IOException{
		List<Order> list = soService.allOrders();
		//JSONArray.fromObject(list).toString();
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		result=JSONArray.fromObject(list.toArray()).toString();
		response.getWriter().print(result);
	}
	
}
