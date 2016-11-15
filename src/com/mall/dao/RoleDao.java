package com.mall.dao;

import com.mall.entity.Role;

public interface RoleDao {
	//查询出指定角色
	public Role findRole(String id);
}
