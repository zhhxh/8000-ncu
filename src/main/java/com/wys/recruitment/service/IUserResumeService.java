package com.wys.recruitment.service;

import com.wys.recruitment.pojo.User;
import com.wys.recruitment.pojo.UserResume;

public interface IUserResumeService {
	public int saveBaseMessage(UserResume userResume);
	
	public boolean checkResume(User u);
}
