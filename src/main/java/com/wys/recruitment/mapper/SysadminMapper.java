package com.wys.recruitment.mapper;

import com.wys.recruitment.pojo.Sysadmin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface SysadminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sysadmin record);

    int insertSelective(Sysadmin record);

    Sysadmin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sysadmin record);

    int updateByPrimaryKey(Sysadmin record);

    @Select("select * from sysadmin s where s.username = #{username} and s.password = #{basePassword}")
    Sysadmin selectSysadminByUsernameAndPassword(@Param("username") String username, @Param("basePassword") String basePassword);


}