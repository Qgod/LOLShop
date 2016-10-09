package com.lol.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.dao.SkinDao;
import com.lol.entity.Skin;
import com.lol.service.SkinService_admin;

@Service("skinService_admin")
public class SkinServiceImpl_admin implements SkinService_admin{
	
	@Autowired
	private SkinDao skinDao;
	
	public boolean addSkin(Skin skin) {
		skinDao.addSkin(skin);
		return true;
	}

	public List<Skin> getTankeSkin(String tanke) {
		// TODO Auto-generated method stub
		return skinDao.getTankeSkin(tanke);
	}

	public List<Skin> getFashiSkin(String fashi) {
		// TODO Auto-generated method stub
		return skinDao.getFashiSkin(fashi);
	}

	public List<Skin> getSheshouSkin(String sheshou) {
		// TODO Auto-generated method stub
		return skinDao.getSheshouSkin(sheshou);
	}

	public List<Skin> getCikeSkin(String cike) {
		// TODO Auto-generated method stub
		return skinDao.getCikeSkin(cike);
	}

	public List<Skin> getQianxingSkin(String qianxing) {
		// TODO Auto-generated method stub
		return skinDao.getQianxingSkin(qianxing);
	}

	public List<Skin> getFuzhuSkin(String fuzhu) {
		// TODO Auto-generated method stub
		return skinDao.getFuzhuSkin(fuzhu);
	}

	public List<Skin> getZhanshiSkin(String zhanshi) {
		// TODO Auto-generated method stub
		return skinDao.getZhanshiSkin(zhanshi);
	}

	public void changeSkinStatus(int nowStatus, int id) {
		// TODO Auto-generated method stub
		skinDao.changeSkinStatus(nowStatus, id);
	}

}
