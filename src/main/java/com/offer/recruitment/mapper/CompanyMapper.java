package com.offer.recruitment.mapper;

import com.offer.recruitment.pojo.Company;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKeyWithBLOBs(Company record);

    int updateByPrimaryKey(Company record);

    @Select("select * from company c where c.uid = #{uid} and c.isallow = #{s}")
    Company findByUid(@Param("uid") int uid, @Param("s") String s);

    List<Company> selectLastestCompany(int number);

    Map<String, String> selectCompanyDetail(Integer id);

    List<Map<String, Object>> listAll(Map<String, String> coditionMap);

    @Update("update company c set c.isallow = #{s} where c.id = #{id}")
    int updateById(@Param("id") Integer id, @Param("s") String s);

    @Select("select * from company c where c.uid = #{uid}")
    Company findByUid1(int uid);

    String findEmail(Integer id);


}