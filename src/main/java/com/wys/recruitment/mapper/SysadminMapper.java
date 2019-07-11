package com.wys.recruitment.mapper;

import org.apache.ibatis.annotations.Select;

import com.wys.recruitment.pojo.Sysadmin;

public interface SysadminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sysadmin record);

    int insertSelective(Sysadmin record);

    Sysadmin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sysadmin record);

    int updateByPrimaryKey(Sysadmin record);
    
    @Select("select * from sysadmin s where s.username = #{0} and s.password = #{1}")
	Sysadmin selectSysadminByUsernameAndPassword(String username, String basePassword);

	
}