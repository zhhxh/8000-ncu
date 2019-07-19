package com.offer.recruitment.service.impl;

import com.offer.recruitment.mapper.ApplayMapper;
import com.offer.recruitment.service.ISysadminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.offer.recruitment.mapper.CompanyMapper;
import com.offer.recruitment.mapper.CompanyUserMapper;
import com.offer.recruitment.mapper.MyrecruitmentMapper;
import com.offer.recruitment.mapper.NewsMapper;
import com.offer.recruitment.mapper.SysadminMapper;
import com.offer.recruitment.pojo.Company;
import com.offer.recruitment.pojo.Sysadmin;
import com.offer.recruitment.utils.MailUtils11;

@Service
@Transactional
public class SysadminServiceImpl implements ISysadminService {
	@Autowired
	private SysadminMapper sysadminMapper;
	
	@Autowired
	private CompanyMapper companyMapper;
	
	@Autowired
	private CompanyUserMapper companyUserMapper;

	@Autowired
	public MyrecruitmentMapper myrecruitmentMapper;
	@Autowired
	private ApplayMapper applayMapper;
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public int delete(Integer id) {
		Company c = companyMapper.selectByPrimaryKey(id);
		
		//1.0 删除公司信息
		int i = companyMapper.deleteByPrimaryKey(id);
		//2.0删除HR信息
		companyUserMapper.deleteByUid(c.getUid());
		//3.0删除所有招聘信息
		myrecruitmentMapper.deleteByUid(c.getId());
		//4.0 删除所有申请记录
		applayMapper.deleteByUid(c.getId());
		//5.0删除所有的消息记录
		newsMapper.deleteByCid(c.getId());
		
		return i;
	}

	@Override
	public int pass(Integer id) {
		// TODO Auto-generated method stub
		String email = companyMapper.findEmail(id);
		//发送邮件
		try {
			MailUtils11.sendMail("管理员", email, "公司信息审核成功", "您提交的资料经管理员审核通过，现可以登录网站使用本网站企业版的功能，本网站的地址是：");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return companyMapper.updateById(id,"2");
	
	}

	@Override
	public Sysadmin selectSysadminByUsernameAndPassword(String username, String basePassword) {
	
		return sysadminMapper.selectSysadminByUsernameAndPassword(username,basePassword);
	}

	
	
	
}
