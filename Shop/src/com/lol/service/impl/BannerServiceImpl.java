package com.lol.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lol.dao.BaseDao;
import com.lol.entity.Banner;
import com.lol.service.BannerService;

@Service("bannerService")
public class BannerServiceImpl implements BannerService{

	@Resource
	private BaseDao<Banner> baseDao;
	
	public List<Banner> getAllBanner() {
		return baseDao.find("from Banner where bannerStatus=1");
	}

}
