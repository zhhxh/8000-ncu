package com.offer.recruitment.mapper;

import com.offer.recruitment.pojo.Articles;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.Map;

public interface SkillMapper {
    int deleteByPrimaryKey(Integer articleid);

    int insert(Articles record);

    int insertSelective(Articles record);

    Articles selectByPrimaryKey(Integer articleid);

    int updateByPrimaryKeySelective(Articles record);

    int updateByPrimaryKey(Articles record);

    List<Map<String, Object>> listAll(Map<String, Object> map);

    @Update("update skill_articles a set a.isshow = #{i} where a.articleid = #{id}")
    int pass(@Param("id") Integer id, @Param("i") int i);

    List<Map<String, Object>> userlistAll(Map<String, Object> map);

    int countNumber(Map<String, Object> map);

    @Select("select * from skill_articles a order by a.createtime desc limit 0,4")
    List<Map<String, Object>> listTwo();
}
