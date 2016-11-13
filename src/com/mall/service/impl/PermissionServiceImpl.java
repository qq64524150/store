package com.mall.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.PermissionDao;
import com.mall.service.PermissionService;
@Service
public class PermissionServiceImpl implements PermissionService {
	@Resource
	private PermissionDao  permissionDao ;
	//查询出相应的权限
	@Override
	public List findper(String authids, String parenid) {
		
		return null;
	}
	//查询出所有权限
	@Override
	public List findFunction() {
		return permissionDao.findFunction();
	}
	public void setPermissionDao(PermissionDao permissionDao) {
		this.permissionDao = permissionDao;
	}
	
	
	

}
