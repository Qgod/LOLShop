package com.lol.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.dao.BannerDao;
import com.lol.entity.Banner;
import com.lol.service.viewBannerService;

@Service
public class viewBannerServiceImpl implements viewBannerService{
	
	@Autowired
	private BannerDao bannerDao;
	
		
	public BannerDao getBannerDao() {
		return bannerDao;
	}
	
	
	public void setBannerDao(BannerDao bannerDao) {
		this.bannerDao = bannerDao;
	}
	
	
	public Banner fabu(Integer banner) {
		// TODO Auto-generated method stub
		return bannerDao.fabu(banner);
	}


	public List<Banner> getAllBanner() {
		// TODO Auto-generated method stub
		return bannerDao.getAllBanner();
	}


	public Integer changeBannerStatus(Integer id) {
		// TODO Auto-generated method stub
		return bannerDao.getBannerStatus(id);
	}


	public void deleteBanner(Integer bannerId) {
		// TODO Auto-generated method stub
		 bannerDao.deletbannerInfo(bannerId);
	}

	public boolean saveBanner(Banner banner) {
		// TODO Auto-generated method stub
				bannerDao.addBanner(banner);
				return true; 
	}
}
