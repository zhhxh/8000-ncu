package com.wys.recruitment.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.wys.recruitment.pojo.Workexperience;

public interface WorkexperienceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Workexperience record);

    int insertSelective(Workexperience record);

    Workexperience selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Workexperience record);

    int updateByPrimaryKey(Workexperience record);
    @Select("select * from workexperience w where w.uid = #{0} order by w.weight DESC,w.writetime DESC")
	List<Workexperience> selectByUid(int userId);
}