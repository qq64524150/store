package com.mall.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.RoleDao;
import com.mall.entity.Role;
import com.mall.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService {
	@Resource
	private RoleDao roleDao ;
	@Override
	public Role findRole(String id) {
		
		return roleDao.findRole(id);
	}
	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

}
