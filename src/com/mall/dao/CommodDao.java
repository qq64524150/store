package com.mall.dao;

import java.util.List;

import com.mall.entity.Pdepict;
import com.mall.entity.Product;
import com.mall.util.PageBean;

public interface CommodDao {
	//添加商品
	public Product addProduct(Product product);
	//添加商品描述
	public boolean addPdepict(Pdepict pdepictt);
	
	
	//查询分页商品
	public List findCommList(PageBean bean ,String sql);
	
	//分页查询出商品信息
	public List findAllProductPageBean(PageBean bean ,String sql);
	
	//按照id进程商品查询
	public Product findProductById(Product product) ;
	//删除商品
	public int deleteProductById(String pnos);
	
	//删除商品描述
	public int deletePdepict(String pdno);
	
	//修改图片
	public boolean updataCommImg(Product p);
	
	
	//查询出全部商品
	public List<Object[]> findAllCommList();
	//查询出全部商品2
	public List<Product> findAllProduct();
	//查询指定商品描述信息;
	public Pdepict findPdepictById(String id);
	//查询出所有商品3
	public List findAllProduct(String hql);
	
	//查询出某件商品的描述信息
	public List findPdepictByIdTwo(String id);
	//修改描述信息
	public boolean updataPdepictById(Pdepict pdepict);
	
}
