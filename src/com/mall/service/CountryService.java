package com.mall.service;

import java.util.List;

import com.mall.entity.Country;

public interface CountryService {
	// 添加
	public boolean addCountry(Country c);

	// 查询
	public List<Country> findAllCountry();

	// 修改
	public boolean updataCountry(Country c);

	// 删除
	public boolean daleteCountry(Country c);

	// 按id进行查询
	public Country findByIdCoubtry(Country c);
}
