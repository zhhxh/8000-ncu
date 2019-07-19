package com.offer.recruitment.mapper;

import com.offer.recruitment.pojo.CompanyUser;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CompanyUserMapper {
    int deleteByPrimaryKey(String id);

    int insert(CompanyUser record);

    int insertSelective(CompanyUser record);

    CompanyUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(CompanyUser record);

    int updateByPrimaryKey(CompanyUser record);

    @Select("select * from companyuser c where c.uid = #{uid}")
    CompanyUser findByUid(int uid);

    @Update("delete from companyuser where uid = #{uid}")
    void deleteByUid(Integer uid);
}