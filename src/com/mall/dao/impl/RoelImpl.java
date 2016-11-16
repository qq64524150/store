package com.mall.dao.impl;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.RoleDao;
import com.mall.entity.Role;
@Repository
public class RoelImpl extends BaseDao implements RoleDao {
	//按id进行查询角色信息
	@Override
	public Role findRole(String id) {
		System.out.println(id);
		String hql = "from Role r where r.rono='"+id+"'";
		return (Role) getSession().createQuery(hql).list().get(0);
	}

}
