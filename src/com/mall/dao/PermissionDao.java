package com.mall.dao;

import java.util.List;

public interface PermissionDao {
	//查询相应的权限
	public List findper(String parenid,String authids) ;
	//查询出功能菜单
	public List findFunction();
	//查询出指定功能菜单
	public List findFunctionById(int id );
	
}
