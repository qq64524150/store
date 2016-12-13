package com.mall.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.CountryDao;
import com.mall.entity.Country;
import com.mall.service.CountryService;
@Service
public class CountryServiceImpl implements CountryService {
	@Resource
	private CountryDao countryDao ;
	
	
	@Override
	public boolean addCountry(Country c) {
		// TODO Auto-generated method stub
		return false;
	}
	/***
	 * 业务层，查询出全部国家
	 */
	@Override
	public List<Country> findAllCountry() {
		return countryDao.findAllCountry();
	}

	@Override
	public boolean updataCountry(Country c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean daleteCountry(Country c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Country findByIdCoubtry(Country c) {
		// TODO Auto-generated method stub
		return null;
	}

	public void setCountryDao(CountryDao countryDao) {
		this.countryDao = countryDao;
	}
	
	
	
	

}
