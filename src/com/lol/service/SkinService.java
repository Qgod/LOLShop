package com.lol.service;

import java.util.List;

import com.lol.entity.Skin;

public interface SkinService {

	/**
	 * 获取所有皮肤
	 * @return
	 */
	public List<Skin> getAllSkin();
	
	/**
	 * 根据id查询皮肤
	 * @param id
	 * @return
	 */
	public Skin getSkinById(Integer id);
	/**
	 * 根据皮肤类别获取皮肤
	 * @param SkinSenes
	 * @return
	 */
	public List<Skin> getSkinBySkinType(String skinType);
	/**
	 * 根据价格从高到低获取皮肤
	 */
	public List<Skin> getSkinByPriceDesc();
	
	public List<Skin> getSkinBySkinHeroAndSkinTypeAndSkinSenes(Skin skin);

	/**
	 * 根据皮肤所属英雄类别查询皮肤
	 * @param skinHeroType
	 * @return
	 */
	public List<Skin> getSkinBySkinHeroType(String skinHeroType);
	
	public List<Skin> getSkinByLike(String searchString);
}
