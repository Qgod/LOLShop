package com.lol.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lol.dao.BaseDao;
import com.lol.entity.User;
import com.lol.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private BaseDao<User> baseDao;
	public void add(User user) {
		baseDao.save(user);
	}
	public User get(User user) {
		return baseDao.get("from User where userName=? and password=?", new Object[]{user.getUserName(),user.getPassword()});
	}
	public User getByUserName(String userName) {
		return baseDao.get("from User where userName=?", new Object[]{userName});
	}
	public void updateUser(User u) {
		baseDao.update(u);
	}

}
