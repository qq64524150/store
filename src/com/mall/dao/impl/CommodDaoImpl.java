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
	public Product addProduct(Product product) {
		Product p = null ;
		//添加
		if(addObject(product)){
			System.out.println("daoUUID"+product.getPno());
			p = (Product) getSession().get(Product.class,product.getPno());
		}
		return p ;
	}
	/**
	 * 添加商品描述
	 */
	@Override
	public boolean addPdepict(Pdepict pdepict) {
		return addObject(pdepict);
	}
	/**
	 * 分页查询商品
	 */
	@Override
	public List findCommList(PageBean bean, String sql) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 查询出全部商品
	 */
	@Override
	public List<Object[]> findAllCommList() {
	
		String hql = "from Product  p inner join p.pdepict" ;
		return getSession().createQuery(hql).list();
	}
	/**
	 * 根据商品ID进行查询
	 */
	
	@Override
	public Product findProductById(String id) {
		Product p = (Product) getObject(Product.class, id);
		return p;
	}
	
	/**
	 * 查询出全部商品2
	 */
	
	@Override
	public List<Product> findAllProduct() {
		String hql = "from Product p order by p.ptime asc" ;
		return getSession().createQuery(hql).list();
	}
	
	/**
	 * 查询出指定的商品描述
	 */
	@Override
	public Pdepict findPdepictById(String id) {
		
		return (Pdepict) getObject(Pdepict.class, id);
	}

}
