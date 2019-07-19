package com.offer.recruitment.service;

import java.util.List;
import java.util.Map;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.pojo.query.UserCondition;

public interface IUserService {

	public int insertUser(User user);
	
	public User selectUserByUsername(String username);
	
	public User selectUserByUsernameAndPassword(String username, String password);

	public List<Map<String, Object>> listAllByCondition(UserCondition userCondition);

	public int chongzhi(Integer id) throws Exception;

	public int tingyong(Integer id, int i);
}
