package com.wys.recruitment.mapper;

import com.wys.recruitment.pojo.Workexperience;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface WorkexperienceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Workexperience record);

    int insertSelective(Workexperience record);

    Workexperience selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Workexperience record);

    int updateByPrimaryKey(Workexperience record);

    @Select("select * from workexperience w where w.uid = #{userId} order by w.weight DESC,w.writetime DESC")
    List<Workexperience> selectByUid(int userId);
}