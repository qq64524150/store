package com.mall.service;

import java.util.List;

import com.mall.entity.User;
import com.mall.util.PageBean;

public interface UserService {
	// 添加用户
	public boolean addUser(User user);

	// 按id进查询指定用户
	public User findUserById(User user);

	// 修改用户
	public boolean updateUser(User user);

	// 删除用户
	public boolean deleteUser(User user);

	// 查询出全部用户（分页）
	public List findAllUser(PageBean pageBean,User user);

}
