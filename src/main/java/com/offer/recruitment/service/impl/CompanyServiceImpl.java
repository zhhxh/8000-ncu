package com.offer.recruitment.service.impl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.offer.recruitment.mapper.CompanyMapper;
import com.offer.recruitment.pojo.Company;
import com.offer.recruitment.service.ICompanyService;
@Service
@Transactional
public class CompanyServiceImpl implements ICompanyService {
	@Autowired
	private CompanyMapper companyMapper;

	public int saveCompany(Company company) {
		return companyMapper.insert(company);
	}

	public Company findByUid(int uid) {
		// TODO Auto-generated method stub
		//return companyMapper.findByUid(uid,"1");
		return companyMapper.findByUid1(uid);
	}

	public int updateData(Company company) {
		//根据id查找出当前的对象
		Company cu = companyMapper.selectByPrimaryKey(company.getId());
		//然后在当前对象的基础之前修改资料
		//   头像：logo,
		//   普通字段：companyname,simplename,industry,address、minpeople，maxpeople，companyurl,remark
		//   下拉选矿：province,city,area,,development
		
		cu.setCompanyname(company.getCompanyname());
		cu.setSimplename(company.getSimplename());
		cu.setIndustry(company.getIndustry());
		cu.setAddress(company.getAddress());
		cu.setMinpeople(company.getMinpeople());
		cu.setMaxpeople(company.getMaxpeople());
		cu.setCompanyurl(company.getCompanyurl());
		cu.setRemark(company.getRemark());
		cu.setDevelopment(company.getDevelopment());
		
		cu.setDescription(company.getDescription());
		cu.setJianjie(company.getJianjie());
		cu.setProduct(company.getProduct());
		if(company.getLogo()!=null) {
			cu.setLogo(company.getLogo());
		}
		return companyMapper.updateByPrimaryKey(cu);
		
	}

	public Company selectByPrimaryKey(int id) {
		
		return companyMapper.selectByPrimaryKey(id);
	}
	/**
	 * 查找出最新注册的公司信息
	 * 	string 指定查找的条数
	 */
	public List<Company> selectLastestCompany(int number) {
		return companyMapper.selectLastestCompany(number);
	}
	/**
	 * 查找出公司详细信息，包括了HR的信息
	 * @param id
	 * @return
	 */
	public Map<String,String> selectCompanyDetail(Integer id) {
		// TODO Auto-generated method stub
		return companyMapper.selectCompanyDetail(id);
	}
	
	
	/**
	 * 查询出所有的公司信息
	 * @param coditionMap
	 * @return
	 */
	public List<Map<String, Object>> listAll(Map<String, String> coditionMap) {
		// TODO Auto-generated method stub
		return companyMapper.listAll(coditionMap);
	}

	public int update(Company company) {
		Company c = companyMapper.selectByPrimaryKey(company.getId());
		if(company.getLogo()!=null) {
		
		}else {
			company.setLogo(c.getLogo());
		}
		if(company.getIdcardimage()!=null) {
			
		}else{
			company.setIdcardimage(c.getIdcardimage());
		}
		if(company.getCompanyimage()!=null) {
			
		}else {
			company.setCompanyimage(c.getCompanyimage());
		}
		company.setRegistertime(c.getRegistertime());
		company.setIsallow(c.getIsallow());
		company.setUid(c.getUid());
		company.setProvince(c.getProvince());
		company.setCity(c.getCity());
		company.setArea(c.getArea());
		
		//17 + 1 +6 
		return companyMapper.updateByPrimaryKey(company);
	
		
	}


}
