package com.offer.recruitment.service;

import java.util.List;

import com.offer.recruitment.pojo.Workexperience;

public interface IWorkExperienceService {

	public int saveWorkexperience(Workexperience workexperience);

	public List<Workexperience> selectByUid(int userId);

	public int deleteByPrimaryKey(Integer id);

	public Workexperience selectByPrimaryKey(Integer id);

	public int updateWorkexperience(Workexperience workexperience);

}
