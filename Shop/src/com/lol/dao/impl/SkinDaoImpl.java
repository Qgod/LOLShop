package com.lol.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.lol.dao.SkinDao;
import com.lol.entity.Skin;

@Repository
public class SkinDaoImpl extends LOLBaseDao implements SkinDao{

	public void addSkin(Skin skin) {
		getSession().save(skin);
	}

	public List<Skin> getTankeSkin(String tanke) {
		String hql = "from Skin where skinHeroType = '"+tanke+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public List<Skin> getFashiSkin(String fashi) {
		String hql = "from Skin where skinHeroType = '"+fashi+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public List<Skin> getSheshouSkin(String sheshou) {
		String hql = "from Skin where skinHeroType = '"+sheshou+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public List<Skin> getCikeSkin(String cike) {
		String hql = "from Skin where skinHeroType = '"+cike+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public List<Skin> getQianxingSkin(String qianxing) {
		String hql = "from Skin where skinHeroType = '"+qianxing+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public List<Skin> getFuzhuSkin(String fuzhu) {
		String hql = "from Skin where skinHeroType = '"+fuzhu+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public List<Skin> getZhanshiSkin(String zhanshi) {
		String hql = "from Skin where skinHeroType = '"+zhanshi+"' ";
		Query query = getSession().createQuery(hql);
		List<Skin> list = query.list();
		return list;
	}

	public void changeSkinStatus(int nowStatus,int id) {
		String hql = "";
		if(nowStatus == 1){
			hql = "update Skin set skinStatus = 0 where id = '"+id+"' ";
		}else{
			hql = "update Skin set skinStatus = 1 where id = '"+id+"' ";
		}
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}

}
