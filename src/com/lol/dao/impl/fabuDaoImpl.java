package com.lol.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.lol.dao.BannerDao;
import com.lol.dao.BaseDaos;
import com.lol.entity.Banner;

@Repository
public class fabuDaoImpl extends BaseDaos implements BannerDao{

	public Banner fabu(Integer banner) {
		// TODO Auto-generated method stub
		return (Banner) getSession().get(Banner.class, banner);
	}

	public List<Banner> getAllBanner() {
		// TODO Auto-generated method stub
		return getSession().createQuery("from Banner").list();
		
	}
	

	public Integer getBannerStatus(Integer banner) {
		// TODO Auto-generated method stub
		Banner ba=(Banner)getSession().get(Banner.class, banner);
		if(ba.getBannerStatus()==0){
			ba.setBannerStatus(1);
			getSession().update(ba);
			return 1;
		}
		else{
			ba.setBannerStatus(0);
			getSession().update(ba);
			return 0;
		}
	}

	public void deletbannerInfo(Integer banner2) {
		// TODO Auto-generated method stub
		Banner ba2=(Banner)getSession().get(Banner.class, banner2);
		getSession().delete(ba2);
	}
	public void addBanner(Banner banner) {
		getSession().save(banner);
	}
	
}
