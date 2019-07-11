package com.wys.recruitment.service.impl;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wys.recruitment.mapper.UserResumeMapper;
import com.wys.recruitment.pojo.User;
import com.wys.recruitment.pojo.UserResume;
import com.wys.recruitment.service.IUserResumeService;
@Service
@Transactional
public class UserResumeServiceImpl implements IUserResumeService {
	@Autowired
	private UserResumeMapper userResumeMapper;
	/**
	 * 插入个人信息
	 */
	public int saveBaseMessage(UserResume userResume) {
		userResume.setWritetime(new Date());
		return userResumeMapper.insert(userResume);
		
	}
	/**
	 * 查看个人简历信息
	 * @param userId
	 * @return
	 */
	public UserResume selectByUserId(int userId) {
		// TODO Auto-generated method stub
		return userResumeMapper.selectByUserId(userId);
	}
	/**
	 * 更新当前用户的基础信息
	 * @param userResume
	 * @return
	 */
	public int updateBaseMessage(UserResume userResume) {
		//根据id查找出当前的对象
		UserResume ur = userResumeMapper.selectByPrimaryKey(userResume.getId());
		//然后在当前对象的基础之前修改资料
		ur.setName(userResume.getName());
		ur.setEmail(userResume.getEmail());
		ur.setAge(userResume.getAge());
		ur.setAddress(userResume.getAddress());
		ur.setDescription(userResume.getDescription());
		ur.setPhone(userResume.getPhone());
		ur.setXueli(userResume.getXueli());
		ur.setSchool(userResume.getSchool());
		ur.setProfessional(userResume.getProfessional());
		ur.setSex(userResume.getSex());
		return userResumeMapper.updateByPrimaryKey(ur);
	}
	/*
	 * 更新自己的求职意向
	 */
	public int saveIntention(UserResume userResume) {
		//根据id查找出当前的对象
		UserResume ur = userResumeMapper.selectByPrimaryKey(userResume.getId());
		//然后在当前对象的基础之前修改资料
		ur.setJobname(userResume.getJobname());
		ur.setNowmoney(userResume.getNowmoney());
		ur.setLowmoney(userResume.getLowmoney());
		ur.setHighmoney(userResume.getHighmoney());
		return userResumeMapper.updateByPrimaryKey(ur);
	}
	
	/**
	 * 检查自己的简历是否完整，主要是检查某几个字段
	 */
	public boolean checkResume(User u) {
		//1.0 根据u的id去简历表里面查找出当前的记录
		UserResume userResume = userResumeMapper.selectByUserId(u.getId());
		if(userResume!=null) {
			//2.0 判断简历是否完成
			String address = userResume.getAddress();
			//description是非必要字段哦
			String description = userResume.getDescription();
			String email = userResume.getEmail();
			String jobname = userResume.getJobname();
			String name = userResume.getName();
			String phone = userResume.getPhone();
			String professional = userResume.getProfessional();
			String school = userResume.getSchool();
			String sex = userResume.getSex();
			String xueli = userResume.getXueli();
			if(address == null || address.equals("") || 
			   email == null || email.equals("") ||
			   jobname == null || jobname.equals("") ||
			   name == null || name.equals("") ||
			   phone == null || phone.equals("") ||
			   professional == null || professional.equals("") ||
			   school == null || school.equals("") ||
			   sex == null || sex.equals("") ||
			   xueli == null || xueli.equals("") ) {
				
				return false;
			}
			Integer age = userResume.getAge();
			Double highmoney = userResume.getHighmoney();
			Double lowmoney = userResume.getLowmoney();
			Double nowmoney = userResume.getNowmoney();
			if(age==null||highmoney==null||lowmoney==null||nowmoney==null) {
				return false;
			}
			return true;
		}else {
			//3.0 不存在个人简历，建议填写个人简历
			return false;
		}
	
	}
	
}
