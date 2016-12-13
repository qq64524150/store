package com.mall.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.CommodDao;
import com.mall.entity.Pdepict;
import com.mall.entity.Product;
import com.mall.service.CommodService;
import com.mall.util.PageBean;
@Service
public class CommodServiceImpl implements CommodService {
	@Resource
	private CommodDao commodDao;
	
	/**
	 * 添加商品
	 */
	@Override
	public boolean addProduct(Product product,Pdepict pdepict) {
		//进行商品和商品描述的绑定
		product.setPdepict(pdepict);
		//进行商品描述和商品的绑定
		pdepict.setProduct(product);
		//传给dao进行持久化保存
		return commodDao.addProduct(product);
	}

	@Override
	public boolean addPdepict(Pdepict pdepict) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List findCommList(PageBean bean, String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	public void setCommodDao(CommodDao commodDao) {
		this.commodDao = commodDao;
	}

	
	
	
}
