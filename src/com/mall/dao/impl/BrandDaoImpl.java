package com.mall.dao.impl;
/**
 * 这是商品品牌的持久化类
 */
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.BrandDao;
import com.mall.entity.Brand;
@Repository
public class BrandDaoImpl extends BaseDao implements BrandDao {

	@Override
	public boolean addBrand(Brand b) {
		// TODO Auto-generated method stub
		return false;
	}
	/**
	 * 查询出全部商品品牌
	 */
	@Override
	public List<Brand> findAllBrand() {
		String hql = "from Brand" ;
		return getSession().createQuery(hql).list();
	}

	@Override
	public boolean updataBrand(Brand b) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean daleteBrand(Brand b) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Brand findByIdBrand(Brand b) {
		// TODO Auto-generated method stub
		return null;
	}

}
