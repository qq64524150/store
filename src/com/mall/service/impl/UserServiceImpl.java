package com.mall.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.mall.dao.UserDao;
import com.mall.entity.User;
import com.mall.service.UserService;
import com.mall.util.PageBean;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserDao UserDao;

	// 添加用户
	@Override
	public boolean addUser(User user){
		return UserDao.addUser(user);
	}
	//查询用户
	@Override
	public User findUserById(User user) {
		User u = null ;
		List<User> list=  UserDao.findUserById(user);
		if(list.size()>0){
			u = list.get(0);
		}
		return u ;
	}

	@Override
	public boolean updateUser(User user) {
		return false;
	}

	@Override
	public boolean deleteUser(User user) {
		return false;
	}

	@Override
	public List findAllUser(PageBean pageBean, User user) {
		return null;
	}

	//进行密码匹配
	@Override
	public User pwd(User user) {
		User u  = null ; 
		List<User> list = UserDao.findUserById(user);
		
		if(list.size()>0){
			//进行密码的配对
			for (User us : list) {
				//正确
				/*if(user.getUpwd()==null || user.getUpwd().equals("")){
					if(us.getUpwd().equals(user.getUpwd())){
						u = list.get(0);
					}
				}else{
					u = list.get(0);
				}*/
				try {
					if(user.getUpwd().length()>0){
						if(us.getUpwd().equals(user.getUpwd())){
							u = list.get(0);
						}
					}
				} catch (Exception e) {
					u = list.get(0);
				}
				
			}
		}
	
		return u;
	}
	
	public void setUserDao(UserDao userDao) {
		UserDao = userDao;
	}
}
