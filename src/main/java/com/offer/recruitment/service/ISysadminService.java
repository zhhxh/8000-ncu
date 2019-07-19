package com.offer.recruitment.service;

import com.offer.recruitment.pojo.Sysadmin;

public interface ISysadminService {

	int delete(Integer id);

	int pass(Integer id);

	Sysadmin selectSysadminByUsernameAndPassword(String username, String basePassword);

	

}
