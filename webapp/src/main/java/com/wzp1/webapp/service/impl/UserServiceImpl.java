package com.wzp1.webapp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.wzp1.webapp.dao.UserDao;
import com.wzp1.webapp.model.User;
import com.wzp1.webapp.service.UserService;

public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public User getUser(User user) {
		return null;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
