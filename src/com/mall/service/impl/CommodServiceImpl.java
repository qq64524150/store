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
	/**
	 * 分页查询出全部商品信息及商品描述信息
	 * 
	 */
	@Override
	public PageBean findCommList(PageBean bean, String sql) {
		return null;
	}
	
	/**
	 * 分页查询出全部商品信息
	 */
	@Override
	public PageBean findAllProductPageBean(PageBean bean,Product Product,String[] msg) {
		//desc
		String hql = "from Product p where 1=1" ;
		if(Product!=null){
			if(Product.getPname()!=null && Product.getPname().length()>0){
				hql+=" and p.pname like '%"+Product.getPname()+"%' ";
			}
			if(Product.getPdate_from()!=null && Product.getPdate_from().length()>0){
				hql +=" and p.ptime>= '"+Product.getPdate_from()+"' " ; 
			}
			if(Product.getPdate_to()!=null && Product.getPdate_to().length()>0){
				hql +=" and p.ptime<= '"+Product.getPdate_to()+"' " ;
			}
		}
			
		
	   hql+=" order by p."+msg[0]+" "+msg[1]+"";
		
		
		//要显示当前要显示的数据
		bean.setShowResult(commodDao.findAllProductPageBean(bean, hql));
		//获取总总数据条数
		hql = "select count(*) "+hql ;
		bean.setAllNum(((Long)commodDao.findAllProduct(hql).get(0)).intValue());
		
		
		return bean;
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
