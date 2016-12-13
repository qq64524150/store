package com.mall.dao;

import java.util.List;

import com.mall.entity.Brand;

public interface BrandDao {
	//添加
	public boolean addBrand(Brand b);
	//查询
	public List<Brand> findAllBrand();
	//修改
	public boolean updataBrand(Brand b);
	//删除
	public boolean daleteBrand(Brand b);
	//按id进行查询
	public Brand findByIdBrand(Brand b);
}
