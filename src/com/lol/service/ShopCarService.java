package com.lol.service;

import java.util.List;

import com.lol.entity.ShopCar;

public interface ShopCarService {

	/**
	 * 加入购物车
	 * @param skin
	 */
	public void addToShopCar(ShopCar shopCar);
	
	public List<ShopCar> getByUserId(Integer userId);
	
	public ShopCar getByUserIdAndSkinId(Integer userId,Integer skinId);
	
	public ShopCar getById(Integer id);
	
	public void deleteShopCar(ShopCar s);
}
