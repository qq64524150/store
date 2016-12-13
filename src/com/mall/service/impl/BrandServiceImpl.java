package com.mall.service.impl;
/**
 * 这是商品品牌实现类
 */
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.BrandDao;
import com.mall.entity.Brand;
import com.mall.service.BrandService;
@Service
public class BrandServiceImpl implements BrandService {
	@Resource
	private BrandDao brandDao ;
	
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
	
		return brandDao.findAllBrand();
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
	public void setBrandDao(BrandDao brandDao) {
		this.brandDao = brandDao;
	}
	

	
	
	
}
