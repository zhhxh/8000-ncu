package com.offer.recruitment.mapper;

import com.offer.recruitment.pojo.UserResume;
import org.apache.ibatis.annotations.Select;

public interface UserResumeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserResume record);

    int insertSelective(UserResume record);

    UserResume selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserResume record);

    int updateByPrimaryKey(UserResume record);

    @Select("select * from userResume u where u.userId = #{userId}")
    UserResume selectByUserId(int userId);
}