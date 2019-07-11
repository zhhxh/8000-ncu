package com.wys.recruitment.mapper;

import com.wys.recruitment.pojo.User;
import com.wys.recruitment.pojo.query.UserCondition;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    @Select("select * from user u where u.username = #{username}")
    User selectUserByUsername(String username);

    @Select("select * from user u where u.username = #{username} and u.password = #{password}")
    User selectUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    List<Map<String, Object>> listAllByCondition(UserCondition userCondition);

    @Update("update user u set u.isaudit = #{i} where u.id = #{id}")
    int tingyong(Integer id, int i);

    @Update("update user u set u.isaudit = #{i} where u.password = #{baseString}")
    void updateByBaseString(int i, String baseString);
}