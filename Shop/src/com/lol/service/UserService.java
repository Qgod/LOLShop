package com.lol.service;

import com.lol.entity.User;

public interface UserService {
	
	public void add(User user);
	public User get(User user);
	public User getByUserName(String userName);
	
	public void updateUser(User u);
}
