package com.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mall.dao.BaseDao;
import com.mall.dao.UserDao;
import com.mall.entity.User;
import com.mall.util.PageBean;
@Repository
public class UserDaoImpl extends BaseDao implements UserDao {
	//添加用户
	@Override
	public boolean addUser(User user) {
		return addObject(user);
	}
	//查询用户
	@Override
	public User findUserById(User user) {
		System.out.println(user.getUphone());
		/*String hql = "from User u where u.uphone = '"+user.getUphone()+"'";
		List list = getSession().createQuery(hql).list();
		if(obj!=null){
			return (User) obj ;
		}else{
			return null ;
		}
		
		
		System.out.println(list.size());*/
		
		User u = (User) getObject(user.getClass(), user.getUphone());
		System.out.println(u.getUphone());
		return null ;
		
		
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List findAllUser(PageBean pageBean,String hql) {
		// TODO Auto-generated method stub
		return null;
	}

}
