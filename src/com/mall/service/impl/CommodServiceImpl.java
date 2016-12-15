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
	public Product addProduct(Product product) {
		/*//进行商品和商品描述的绑定
		product.setPdepict(pdepict);
		//进行商品描述和商品的绑定
		pdepict.setProduct(product);*/
		//传给dao进行持久化保存
		return commodDao.addProduct(product);
	}
	/**
	 * 添加商品描述
	 */
	@Override
	public boolean addPdepict(Pdepict pdepict,Product product) {
		pdepict.setProduct(product);
		return commodDao.addPdepict(pdepict);
	}

	@Override
	public List findCommList(PageBean bean, String sql) {
		return null;
	}
	
	
	/**
	 * 查询出全部商品
	 */
	@Override
	public List<Object[]> findAllCommList() {
		return commodDao.findAllCommList();
	}
	
	/**
	 * 根据商品ID进行查询
	 */
	@Override
	public Product findProductById(String id) {
		// TODO Auto-generated method stub
		return commodDao.findProductById(id);
	}
	
	/**
	 * 查询出全部商品信息2
	 */
	@Override
	public List<Product> findAllProduct() {
		
		return commodDao.findAllProduct();
	}
	/**
	 * 查询出指定商品描述信息
	 */
	@Override
	public Pdepict findPdepictById(String id) {
		
		return commodDao.findPdepictById(id);
	}
	
	
	
	
	
	
	
	
	
	
	public void setCommodDao(CommodDao commodDao) {
		this.commodDao = commodDao;
	}
	

	
	
	
}
