package com.mall.dao;

import java.util.List;

public interface PermissionDao {
	//查询相应的权限
	public List findper(String parenid,String authids) ;
	//查询出功能菜单
	public List findFunction();
	
	
}
