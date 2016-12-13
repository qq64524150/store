package com.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.CountryDao;
import com.mall.entity.Country;
/**
 * 这是国家持久化类
 * @author Administrator
 *
 */
@Repository
public class CountryDaoImpl extends BaseDao implements CountryDao {

	@Override
	public boolean addCountry(Country c) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Country> findAllCountry() {
		String hql = "from Country";
		return getSession().createQuery(hql).list();
		
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

}
