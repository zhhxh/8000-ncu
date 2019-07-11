package com.wys.recruitment.service;

import java.util.List;
import java.util.Map;

import com.wys.recruitment.pojo.Sysadmin;

public interface ISysadminService {

	int delete(Integer id);

	int pass(Integer id);

	Sysadmin selectSysadminByUsernameAndPassword(String username, String basePassword);

	

}
