package com.wys.recruitment.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.wys.recruitment.pojo.Company;

public interface ICompanyService {
	public int saveCompany(Company company);
	
	public Company findByUid(int uid);
	
	public int updateData(Company company);
	
	public List<Company> selectLastestCompany(int number);
	
	public Map<String,String> selectCompanyDetail(Integer id);
	
}
