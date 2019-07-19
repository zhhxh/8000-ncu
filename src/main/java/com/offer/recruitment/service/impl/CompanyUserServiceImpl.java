package com.offer.recruitment.service.impl;

import com.offer.recruitment.service.ICompanyUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.offer.recruitment.mapper.CompanyUserMapper;
import com.offer.recruitment.pojo.CompanyUser;

@Service
@Transactional
public class CompanyUserServiceImpl implements ICompanyUserService {
	@Autowired
	private CompanyUserMapper companyUserMapper;
	/**
	 * 保存企业用户的信息
	 */
	public int saveCompanyUser(CompanyUser companyUser) {
		
		return companyUserMapper.insert(companyUser);
	}
	/**
	 * 根据登录用户的ID查找企业用户
	 */
	public CompanyUser findByUid(int uid) {
	
		return companyUserMapper.findByUid(uid);
	}
	/**
	 * 更新当前企业用户信息
	 */
	public int updateData(CompanyUser companyUser) {
		//根据id查找出当前的对象
		CompanyUser cu = companyUserMapper.selectByPrimaryKey(companyUser.getId());
		//然后在当前对象的基础之前修改资料
		cu.setEmail(companyUser.getEmail());
		cu.setName(companyUser.getName());
		cu.setPosition(companyUser.getPosition());
		cu.setSimplename(companyUser.getSimplename());
		cu.setDepartment(companyUser.getDepartment());
		if(companyUser.getImage()!=null) {
			cu.setImage(companyUser.getImage());
		}
		return companyUserMapper.updateByPrimaryKey(cu);
		
	}
}
