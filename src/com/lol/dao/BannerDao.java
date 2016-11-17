package com.lol.dao;

import java.util.List;

import com.lol.entity.Banner;

public interface BannerDao {

	Banner fabu(Integer banner);
	
	List<Banner> getAllBanner();
	
	Integer getBannerStatus(Integer banner);
	
	void deletbannerInfo(Integer banner2);
	
	void addBanner(Banner banner);
}
