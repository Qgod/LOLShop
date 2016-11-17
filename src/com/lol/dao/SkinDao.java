package com.lol.dao;

import java.util.List;

import com.lol.entity.Skin;

public interface SkinDao {
	void addSkin(Skin skin);
	
	List<Skin> getTankeSkin(String tanke);
	
	List<Skin> getFashiSkin(String fashi);
	
	List<Skin> getSheshouSkin(String sheshou);
	
	List<Skin> getCikeSkin(String cike);
	
	List<Skin> getQianxingSkin(String qianxing);
	
	List<Skin> getFuzhuSkin(String fuzhu);
	
	List<Skin> getZhanshiSkin(String zhanshi);
	
	void changeSkinStatus(int nowStatus,int id);
	
	
}
