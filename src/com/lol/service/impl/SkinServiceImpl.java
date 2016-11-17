package com.lol.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lol.dao.BaseDao;
import com.lol.entity.Skin;
import com.lol.service.SkinService;
import com.lol.util.StringUtil;

@Service("skinService")
public class SkinServiceImpl implements SkinService{
	
	@Resource
	private BaseDao<Skin> baseDao;
	

	public List<Skin> getAllSkin() {
		return baseDao.find("from Skin where skinStatus=1");
	}

	//根据皮肤类别
	public List<Skin> getSkinBySkinType(String skinType) {
		return baseDao.find("from Skin where skinType=? and skinStatus=1",new Object[]{skinType});
	}

	public List<Skin> getSkinByPriceDesc() {
		return baseDao.find("from Skin where skinStatus=1 order by skinPrice asc");
	}

	public Skin getSkinById(Integer id) {
		return baseDao.get(Skin.class, id);
	}

	public List<Skin> getSkinBySkinHeroAndSkinTypeAndSkinSenes(Skin skin) {
		if(StringUtil.isNotEmpty(skin.getSkinHero()) && StringUtil.isNotEmpty(skin.getSkinType()) && StringUtil.isNotEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinHero=? and skinType=? and skinSenes=?", new Object[]{skin.getSkinHero(),skin.getSkinType(),skin.getSkinSenes()});
		}else if(StringUtil.isNotEmpty(skin.getSkinHero()) && StringUtil.isEmpty(skin.getSkinType()) && StringUtil.isEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinHero=?", new Object[]{skin.getSkinHero()});
		}else if(StringUtil.isNotEmpty(skin.getSkinHero()) && StringUtil.isNotEmpty(skin.getSkinType()) && StringUtil.isEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinHero=? and skinType=?", new Object[]{skin.getSkinHero(),skin.getSkinType()});
		}else if(StringUtil.isNotEmpty(skin.getSkinHero()) && StringUtil.isEmpty(skin.getSkinType()) && StringUtil.isNotEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinHero=? and skinSenes=?", new Object[]{skin.getSkinHero(),skin.getSkinSenes()});
		}
		
		else if(StringUtil.isEmpty(skin.getSkinHero()) && StringUtil.isNotEmpty(skin.getSkinType()) && StringUtil.isNotEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinType=? and skinSenes=?", new Object[]{skin.getSkinType(),skin.getSkinSenes()});
		}else if(StringUtil.isEmpty(skin.getSkinHero()) && StringUtil.isNotEmpty(skin.getSkinType()) && StringUtil.isEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinType=?", new Object[]{skin.getSkinType()});
		}else if(StringUtil.isEmpty(skin.getSkinHero()) && StringUtil.isEmpty(skin.getSkinType()) && StringUtil.isNotEmpty(skin.getSkinSenes())){
			return baseDao.find("from Skin where skinStatus=1 and skinSenes=?", new Object[]{skin.getSkinSenes()});
		}
		
		else{
			return baseDao.find("from Skin where skinStatus=1");
		}
		
	}

	public List<Skin> getSkinBySkinHeroType(String skinHeroType) {
		return baseDao.find("from Skin where skinHeroType=? and skinStatus=1", new Object[]{skinHeroType});
	}

	public List<Skin> getSkinByLike(String searchString) {
		return baseDao.find("from Skin where skinStatus=1 and(skinName like '%"+searchString+"%' or skinHero like '%"+searchString+"%' or skinHeroType like '%"+searchString+"%' or skinType like '%"+searchString+"%' or skinSenes like '%"+searchString+"%')");
	}

	

}
