package cn.itcast.day18.service.impl;

import cn.itcast.day18.domain.User;
import cn.itcast.day18.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public void add(User user) {
		System.out.println("这是添加用户的第一种实现");
	}

}
