package com.mall.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mall.dao.PermissionDao;
import com.mall.entity.Permission;
import com.mall.service.PermissionService;
@Service
public class PermissionServiceImpl implements PermissionService {
	@Resource
	private PermissionDao  permissionDao ;
	//查询出相应的权限
	@Override
	public List findper(String authids, String parenid) {
		List list =  permissionDao.findper(parenid,authids);
		System.out.println(list.size());
		for(int i=0;i<list.size();i++){
			Permission a = (Permission) list.get(i);
			if("closed".equals(a.getPerstatus())){
				continue ;
			}else{
				a.setAso(this.findper(authids,a.getPerno()));
			}
		}
		return list ;
	
	}
	//查询出所有权限
	@Override
	public List findFunction() {
		return permissionDao.findFunction();
	}
	
	/**
	 * 查询出指定功能菜单
	 */
	@Override
	public List findFunctionById(int id) {
		
		return permissionDao.findFunction();
	}
	
	public void setPermissionDao(PermissionDao permissionDao) {
		this.permissionDao = permissionDao;
	}
	
	
	
	

}
