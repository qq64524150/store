package com.mall.service;

import java.util.List;

import com.mall.entity.Pdepict;
import com.mall.entity.Product;
import com.mall.util.PageBean;

public interface CommodService {
	// 添加商品
	public Product addProduct(Product product);

	// 添加商品描述
	public boolean addPdepict(Pdepict pdepict, Product product);

	// 查询分页商品
	public PageBean findCommList(PageBean bean, String sql);

	// 分页查询出商品信息
	public PageBean findAllProductPageBean(PageBean bean,Product Product,String[] msg);

	// 按照id进程商品查询
	public Product findProductById(String id);
	// 修改商品
	// 删除商品
	// 批量删除
	// 模糊查询

	// 查询出全部商品
	public List<Object[]> findAllCommList();

	// 查询出全部商品2
	public List<Product> findAllProduct();

	// 查询指定商品描述信息;
	public Pdepict findPdepictById(String id);

}
