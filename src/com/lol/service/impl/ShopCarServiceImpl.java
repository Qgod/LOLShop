package com.lol.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lol.dao.BaseDao;
import com.lol.entity.ShopCar;
import com.lol.service.ShopCarService;

@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService{

	@Resource
	private BaseDao<ShopCar> baseDao;
	
	
	public void addToShopCar(ShopCar shopCar) {
		baseDao.save(shopCar);
	}


	public List<ShopCar> getByUserId(Integer userId) {
		return baseDao.find("from ShopCar where userId=?",new Object[]{userId});
	}


	public ShopCar getByUserIdAndSkinId(Integer userId, Integer skinId) {
		return baseDao.get("from ShopCar where userId=? and skinId=?",new Object[]{userId,skinId});
	}


	public ShopCar getById(Integer id) {
		return baseDao.get("from ShopCar where id=?", new Object[]{id});
	}


	public void deleteShopCar(ShopCar s) {
		baseDao.delete(s);
	}

}
