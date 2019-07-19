package com.offer.recruitment.mapper;

import java.util.List;
import java.util.Map;

import com.offer.recruitment.pojo.News;
import org.apache.ibatis.annotations.Update;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer nid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer nid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);

    List<Map<String, Object>> findListByCid(Integer id);

    List<Map<String, Object>> findListByUid(Integer id);

    @Update("delete from news where cid = #{id}")
    void deleteByCid(Integer id);

}