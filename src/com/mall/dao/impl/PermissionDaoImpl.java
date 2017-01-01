package com.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.PermissionDao;
@Repository
public class PermissionDaoImpl extends BaseDao implements PermissionDao {
	
	//查询相对应的权限
	@Override
	public List findper(String parenid, String authids) {
		String hql="from Permission p where p.persuperior='"+parenid+"' and p.perno in("+authids+") and p.pisNavigation=1";
		return getSession().createQuery(hql).list();
	
	}
	
	//查询出功能菜单
	@Override
	public List findFunction() {
		String hql= "from Permission p where p.persuperior='0' and p.pisNavigation=1" ;
		return  getSession().createQuery(hql).list();
	}
	//查询出指定功能菜单
	@Override
	public List findFunctionById(int id) {
		String hql = "from Permission p where p.persuperior='"+id+"' and p.pisNavigation=1" ;
		return getSession().createQuery(hql).list();
	}

	
}
