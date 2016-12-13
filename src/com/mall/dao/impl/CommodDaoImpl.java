package com.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.CommodDao;
import com.mall.entity.Pdepict;
import com.mall.entity.Product;
import com.mall.util.PageBean;
@Repository
public class CommodDaoImpl extends BaseDao implements CommodDao {
	/**
	 * 添加商品
	 */
	@Override
	public boolean addProduct(Product product) {
		//添加
		return addObject(product);
	}
	/**
	 * 添加商品描述
	 */
	@Override
	public boolean addPdepict(Pdepict pdepict) {
		// TODO Auto-generated method stub
		return false;
	}
	/**
	 * 分页查询商品
	 */
	@Override
	public List findCommList(PageBean bean, String sql) {
		// TODO Auto-generated method stub
		return null;
	}

}
