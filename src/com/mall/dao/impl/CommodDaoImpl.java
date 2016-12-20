package com.mall.dao.impl;

import java.util.List;

import org.hibernate.Query;
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
	 * 分页查询商品及商品描述
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
	
		String hql = "from Product  p inner join p.pdepict order by p.ptime asc" ;
		return getSession().createQuery(hql).list();
	}
	/**
	 * 分页查询出全部商品信息
	 */
	@Override
	public List findAllProductPageBean(PageBean bean, String sql) {
		Query query = getSession().createQuery(sql);
		//设置分页信息
		System.out.println("当前页："+bean.getCpage());
		System.out.println("每页显示条数："+bean.getShowNum());
		query.setFirstResult((bean.getCpage()-1)*bean.getShowNum());
		query.setMaxResults(bean.getShowNum());
		//执行查询
		List list = query.list();
		//返回
		return list;
	}
	
	
	/**
	 * 根据商品ID进行查询
	 */
	
	@Override
	public Product findProductById(Product product) {
		//System.out.println("dao:  "+id);
		Product p = (Product)getSession().get(Product.class, product.getPno());
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
	
	
	/**
	 * 查询出所有商品3
	 */
	@Override
	public List findAllProduct(String hql) {
		
		return  getSession().createQuery(hql).list();
	}
	
	
	/**
	 * 修改商品
	 */
	@Override
	public boolean updataCommImg(Product p) {
		return updateObject(p);
	}
	
	/**
	 * 删除商品 + 批量
	 */
	@Override
	public int deleteProductById(String pnos) {
		List<Product> list= getSession().createQuery("from Product p where p.pno in ("+pnos+") ").list();
		int b = -1;
		if(list.size()>0){
			for (Product product : list) {
				 delObject(product);//进行删除 返回删除记录
			}
			b = list.size(); 
		}
		
		
		return b;
	}
	
	/**
	 * 删除商品描述
	 */
	
	@Override
	public int deletePdepict(String pdno) {
		List<Product> list= getSession().createQuery("from Pdepict p where p.product.pno in ("+pdno+") ").list();
		
		int b = -1;
		if(list.size()>0){
			for (Product product : list) {
				 delObject(product);//进行删除 返回删除记录
			}
			b = list.size(); 
		}
		
		
		return b;
	}
	/**
	 * 查询出某件商品的描述信息
	 */
	@Override
	public List findPdepictByIdTwo(String id) {
		System.out.println("id===:"+id);
		String hql = "from Product  p inner join p.pdepict where p.pno ='"+id+"'" ;
	
		return getSession().createQuery(hql).list();
	}
	/**
	 * 修改商品描述信息
	 */
	@Override
	public boolean updataPdepictById(Pdepict pdepict) {
		
		return updateObject(pdepict);
	}
	
	

}
