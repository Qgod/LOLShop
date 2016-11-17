package com.lol.service;

import java.util.List;

import com.lol.entity.Skin;

public interface SkinService_admin {

	public boolean addSkin(Skin skin);

	public List<Skin> getTankeSkin(String tanke);

	List<Skin> getFashiSkin(String fashi);

	List<Skin> getSheshouSkin(String sheshou);

	List<Skin> getCikeSkin(String cike);

	List<Skin> getQianxingSkin(String qianxing);

	List<Skin> getFuzhuSkin(String fuzhu);

	List<Skin> getZhanshiSkin(String zhanshi);
	
	void changeSkinStatus(int nowStatus,int id);

}
