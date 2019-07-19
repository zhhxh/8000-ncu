package com.offer.recruitment.service;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.pojo.UserResume;

public interface IUserResumeService {
	public int saveBaseMessage(UserResume userResume);
	
	public boolean checkResume(User u);
}
