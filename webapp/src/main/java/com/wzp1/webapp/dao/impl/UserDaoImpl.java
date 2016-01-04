package com.wzp1.webapp.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.wzp1.webapp.dao.UserDao;
import com.wzp1.webapp.model.User;

public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User getUser(User user) {
		Session ss = sessionFactory.openSession();
		ss.close();
		return new User();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
