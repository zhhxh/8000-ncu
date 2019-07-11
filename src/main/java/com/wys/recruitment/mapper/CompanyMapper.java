package com.wys.recruitment.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.wys.recruitment.pojo.Company;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKeyWithBLOBs(Company record);

    int updateByPrimaryKey(Company record);
    @Select("select * from company c where c.uid = #{0} and c.isallow = #{1}")
	Company findByUid(int uid, String string);

	List<Company> selectLastestCompany(int number);

	Map<String, String> selectCompanyDetail(Integer id);
	
	List<Map<String, Object>> listAll(Map<String, String> coditionMap);
	@Update("update company c set c.isallow = #{1} where c.id = #{0}")
	int updateById(Integer id, String string);
	@Select("select * from company c where c.uid = #{0}")
	Company findByUid1(int uid);

	String findEmail(Integer id);
    
	


}