package com.mall.service;

import java.util.List;

public interface PermissionService {
	//查询相应的权限
	public List findper(String authids,String  parenid) ;
	//查询出功能菜单
	public List findFunction();
}
