package com.mall.service;

import java.util.List;

import com.mall.entity.Pdepict;
import com.mall.entity.Product;
import com.mall.util.PageBean;

public interface CommodService {
	//添加商品
	public boolean addProduct(Product product,Pdepict pdepict);
	//添加商品描述
	public boolean addPdepict(Pdepict pdepict);
	
	
	//查询分页商品
	public List findCommList(PageBean bean ,String sql);
	
	//按照id进程商品查询
	//修改商品
	//删除商品
	//批量删除
	//模糊查询
	
	
}
