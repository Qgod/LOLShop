package com.lol.service;

import java.util.List;

import com.lol.entity.Banner;

public interface viewBannerService {
	
	public Banner fabu(Integer banner);
	public List<Banner> getAllBanner();
	
	
	public Integer changeBannerStatus(Integer id);
	boolean saveBanner(Banner banner);
	public void deleteBanner(Integer bannerId);
}
