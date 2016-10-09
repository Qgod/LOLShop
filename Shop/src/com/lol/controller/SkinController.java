package com.lol.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.lol.entity.Order;
import com.lol.entity.OrderDetail;
import com.lol.entity.ShopCar;
import com.lol.entity.Skin;
import com.lol.entity.User;
import com.lol.service.OrderDetailService;
import com.lol.service.OrderService;
import com.lol.service.ShopCarService;
import com.lol.service.SkinService;
import com.lol.service.UserService;
import com.lol.util.DateUtil;
import com.lol.util.StringUtil;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class SkinController extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Resource
	private SkinService skinService;
	@Resource
	private OrderService orderService;
	@Resource
	private OrderDetailService orderDetailService;
	@Resource
	private ShopCarService shopCarService;
	@Resource
	private UserService userService;
	
	
	private String orderId;
	
	private Integer id;
	
	private String skinHero;
	private String skinType;
	private String skinSenes;
	private String skinHeroType;
	private String stringId;
	private String pay_password;
	private String result;
	
	private String searchString;
	
	
	
	
	public String getSearchString() {
		return searchString;
	}


	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}


	public String getPay_password() {
		return pay_password;
	}


	public void setPay_password(String pay_password) {
		this.pay_password = pay_password;
	}


	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}


	public String getOrderId() {
		return orderId;
	}


	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}


	public String getStringId() {
		return stringId;
	}


	public void setStringId(String stringId) {
		this.stringId = stringId;
	}


	public String getSkinHeroType() {
		return skinHeroType;
	}


	public void setSkinHeroType(String skinHeroType) {
		this.skinHeroType = skinHeroType;
	}


	public String getSkinHero() {
		return skinHero;
	}


	public void setSkinHero(String skinHero) {
		this.skinHero = skinHero;
	}


	public String getSkinType() {
		return skinType;
	}


	public void setSkinType(String skinType) {
		this.skinType = skinType;
	}


	public String getSkinSenes() {
		return skinSenes;
	}


	public void setSkinSenes(String skinSenes) {
		this.skinSenes = skinSenes;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	@Override
	public String execute() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		Skin skin=new Skin();
		skin=skinService.getSkinById(id);
		request.setAttribute("currentSkin", skin);
		return SUCCESS;
	}
	
	public String searchSkin()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		if(StringUtil.isNotEmpty(skinHero))
			skinHero= new String(skinHero.getBytes("ISO-8859-1"), "UTF-8");
		if(StringUtil.isNotEmpty(skinType))
			skinType= new String(skinType.getBytes("ISO-8859-1"), "UTF-8");
		if(StringUtil.isNotEmpty(skinSenes))
			skinSenes= new String(skinSenes.getBytes("ISO-8859-1"), "UTF-8");
		ServletContext application=ServletActionContext.getServletContext();
		Skin skin=new Skin();
		skin.setSkinHero(skinHero);
		skin.setSkinType(skinType);
		skin.setSkinSenes(skinSenes);
		List<Skin> skinList=skinService.getSkinBySkinHeroAndSkinTypeAndSkinSenes(skin);
		application.setAttribute("skinList", skinList);
		return SUCCESS;
	}
	
	public String searchSkinOfRightEncoding()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		ServletContext application=ServletActionContext.getServletContext();
		Skin skin=new Skin();
		skin.setSkinHero(skinHero);
		skin.setSkinType(skinType);
		skin.setSkinSenes(skinSenes);
		List<Skin> skinList=skinService.getSkinBySkinHeroAndSkinTypeAndSkinSenes(skin);
		application.setAttribute("skinList", skinList);
		return SUCCESS;
	}
	
	public String skinList()throws Exception{
		ServletContext application=ServletActionContext.getServletContext();
		List<Skin> skinList=skinService.getAllSkin();
		application.setAttribute("skinList", skinList);
		return SUCCESS;
	}
	
	public String searchSkinBySkinHeroType()throws Exception{
		if(StringUtil.isNotEmpty(skinHeroType))
			skinHeroType= new String(skinHeroType.getBytes("ISO-8859-1"), "UTF-8");
		ServletContext application=ServletActionContext.getServletContext();
		List<Skin> skinList=skinService.getSkinBySkinHeroType(skinHeroType);
		application.setAttribute("skinList", skinList);
		return SUCCESS;
	}
	
	public String submitOrder()throws Exception{
		HttpSession session=ServletActionContext.getRequest().getSession();
		HttpServletRequest request=ServletActionContext.getRequest();
		Order o=new Order();
		User user=(User) session.getAttribute("currentUser");
		o.setBuyer(user.getUserName());
		Skin skin=new Skin();
		double allMoney;
		List<Map<String, Object>> currentSkin_order=new ArrayList<Map<String, Object>>();
		currentSkin_order=(List<Map<String, Object>>) session.getAttribute("currentSkin_order");
		allMoney=(Double) session.getAttribute("allMoney");
		o.setBuyPrice(allMoney);
		o.setBuyStatus(0);
		o.setBuyTime(DateUtil.getCurrentDateStr());
		Calendar c = Calendar.getInstance();//可以对每个时间域单独修改
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH); 
		int day = c.get(Calendar.DAY_OF_MONTH); 
		int hour = c.get(Calendar.HOUR_OF_DAY); 
		int minute = c.get(Calendar.MINUTE); 
		int second = c.get(Calendar.SECOND);
		int m=c.get(Calendar.MILLISECOND);//毫秒
		o.setOrderId((year+""+month+""+day+""+hour+""+minute+""+second+""+m+""));
		orderService.add(o);
		
		for(Map<String, Object> mod:currentSkin_order){
			OrderDetail od=new OrderDetail();
			od.setOrderId(o.getOrderId());
			Skin s=(Skin) mod.get("skin");
			
			if(currentSkin_order.size()==1){
				ShopCar sc=(ShopCar) mod.get("shopCar");
				if(sc!=null)
					shopCarService.deleteShopCar(sc);
			}
			if(currentSkin_order.size()>1){
				ShopCar sc=(ShopCar) mod.get("shopCar");
				shopCarService.deleteShopCar(sc);
			}
			
			od.setSkinId(s.getId());
			orderDetailService.add(od);
		}
		session.setAttribute("order", o);
		return SUCCESS;
	}
	
	public String goOrderDetail()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		Skin skin=new Skin();
		skin=skinService.getSkinById(id);
		List<Map<String, Object>> currentSkin_order=new ArrayList<Map<String, Object>>();
		Map<String, Object> m=new HashMap<String, Object>();
		m.put("skin", skin);
		double allMoney=skin.getSkinPrice() * skin.getSkinDiscount() * 0.1;
		currentSkin_order.add(m);
		session.setAttribute("currentSkin_order", currentSkin_order);
		session.setAttribute("allMoney", allMoney);
		return SUCCESS;
	}
	
	public String addToShopCar()throws Exception{
		HttpSession session=ServletActionContext.getRequest().getSession();
		User user=new User();
		ShopCar sc=new ShopCar();
		user=(User) session.getAttribute("currentUser");
		ShopCar shopCar=new ShopCar();
		shopCar.setSkinId(id);
		shopCar.setUserId(user.getId());
		sc=shopCarService.getByUserIdAndSkinId(user.getId(), id);
		if(sc!=null){
			
		}else{
			shopCarService.addToShopCar(shopCar);
		}
		return null;
	}
	
	public String myOrder()throws Exception{
		HttpSession session=ServletActionContext.getRequest().getSession();
		User user=new User();
		user=(User) session.getAttribute("currentUser");
		List<Order> orderList=new ArrayList<Order>();
		List<OrderDetail> orderDetailList=new ArrayList<OrderDetail>();
		List<Map<String,Object>> orderMapList=new ArrayList<Map<String,Object>>();
		orderList=orderService.getOrderByUserName(user.getUserName());
		for(Order o:orderList){
			Map<String,Object> m=new HashMap<String, Object>();
			orderDetailList=orderDetailService.getOrderDetailByOrderId(o.getOrderId());
			List<Skin> skinList=new ArrayList<Skin>();
			for(OrderDetail od:orderDetailList){
				Skin skin=new Skin();
				skin=skinService.getSkinById(od.getSkinId());
				skinList.add(skin);
			}
			m.put("skinList", skinList);
			m.put("order", o);
			orderMapList.add(m);
		}
		session.setAttribute("orderMapList", orderMapList);
		return SUCCESS;
	}
	
	public String myShopCar()throws Exception{
		HttpSession session=ServletActionContext.getRequest().getSession();
		HttpServletRequest request=ServletActionContext.getRequest();
		User user=new User();
		double allMoney=0;
		user=(User) session.getAttribute("currentUser");
		List<ShopCar> shopCarList=new ArrayList<ShopCar>();
		shopCarList=shopCarService.getByUserId(user.getId());
		List<Map<String,Object>> carMapList=new ArrayList<Map<String,Object>>();
		for(ShopCar s:shopCarList){
			Map<String,Object> m=new HashMap<String, Object>();
			Skin skin=new Skin();
			skin=skinService.getSkinById(s.getSkinId());
			allMoney+=skin.getSkinPrice();
			m.put("id", s.getId());
			m.put("skinId", skin.getId());
			m.put("skinPicture", skin.getSkinPicture());
			m.put("skinName", skin.getSkinName());
			m.put("skinHero", skin.getSkinHero());
			m.put("skinType", skin.getSkinType());
			m.put("skinPrice", skin.getSkinPrice());
			m.put("skinDiscount", skin.getSkinDiscount());
			carMapList.add(m);
		}
		
		request.setAttribute("shopCarList", carMapList);
		request.setAttribute("allMoney", allMoney);
		return SUCCESS;
	}
	
	public String shopCarPay()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		String[] stringArray;
		stringArray=stringId.split(",");
		List<Map<String, Object>> currentSkin_order=new ArrayList<Map<String, Object>>();
		double allMoney=0;
		for(int i=0;i<stringArray.length;i++){
			ShopCar sc=new ShopCar();
			sc=shopCarService.getById(Integer.parseInt(stringArray[i]));
			Skin skin=new Skin();
			skin=skinService.getSkinById(sc.getSkinId());
			Map<String, Object> m=new HashMap<String, Object>();
			m.put("shopCarId", sc.getId());
			m.put("skin", skin);
			m.put("shopCar", sc);
			currentSkin_order.add(m);
			allMoney+=skin.getSkinPrice() * skin.getSkinDiscount() * 0.1;
		}
		session.setAttribute("allMoney", allMoney);
		session.setAttribute("currentSkin_order", currentSkin_order);
		return SUCCESS;
	}
	
	
	public String orderXq()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		List<OrderDetail> orderDetailList=new ArrayList<OrderDetail>();
		orderDetailList=orderDetailService.getOrderDetailByOrderId(orderId);
		List<Skin> orderSkinList=new ArrayList<Skin>();
		double allMoney=0;
		for(OrderDetail od:orderDetailList){
			Skin skin=new Skin();
			skin=skinService.getSkinById(od.getSkinId());
			orderSkinList.add(skin);
			allMoney+=skin.getSkinPrice() * skin.getSkinDiscount() * 0.1;
		}
		request.setAttribute("orderSkinList", orderSkinList);
		request.setAttribute("allMoney", allMoney);
		return SUCCESS;
	}
	
	public String payMoney()throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=ServletActionContext.getRequest().getSession();
		Order order=new Order();
		order=orderService.getOrderByOrderId(orderId);
		session.setAttribute("order", order);
		session.setAttribute("allMoney", order.getBuyPrice());
		return SUCCESS;
	}
	
	public String deleteOrder()throws Exception{
		Order o=new Order(); 
		o=orderService.getOrderByOrderId(orderId);
		orderService.deleteOrder(o);
		List<OrderDetail> odList=new ArrayList<OrderDetail>();
		odList=orderDetailService.getOrderDetailByOrderId(orderId);
		for(OrderDetail od:odList){
			orderDetailService.deleteOrderDetail(od);
		}
		return null;
	}
	
	public String end_pay()throws Exception{
		HttpSession session=ServletActionContext.getRequest().getSession();
		Order o=new Order();
		o=orderService.getOrderByOrderId(orderId);
		User user=new User();
		user=(User) session.getAttribute("currentUser");
		if(pay_password.equals(user.getPassword())){
			if(o.getBuyPrice()<=user.getMoney()){
				o.setIsPay(1);
				orderService.updateOrder(o);
				user.setMoney(user.getMoney()-o.getBuyPrice());
				userService.updateUser(user);
				
				result="true";
			}else{
				result="false";
			}
		}else{
			result="errorPassword";
		}
		
		return SUCCESS;
	}
	
	/**
	 * 顶部模糊查询
	 * @return
	 * @throws Exception
	 */
	public String search_like()throws Exception{
		ServletContext application=ServletActionContext.getServletContext();
		List<Skin> skinList=new ArrayList<Skin>();
		skinList=skinService.getSkinByLike(searchString);
		application.setAttribute("skinList", skinList);
		return SUCCESS;
	}

}
