package com.offer.recruitment.mapper;

import java.util.List;
import java.util.Map;

import com.offer.recruitment.pojo.MoreCondition;
import com.offer.recruitment.pojo.Myrecruitment;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MyrecruitmentMapper {
    int deleteByPrimaryKey(String id);

    int insert(Myrecruitment record);

    int insertSelective(Myrecruitment record);

    Myrecruitment selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Myrecruitment record);

    int updateByPrimaryKey(Myrecruitment record);

    @Select("select * from myrecruitment m where m.cid = #{cid} and m.position = #{s} order by m.publictime desc")
    List<Myrecruitment> selectAllByCid(@Param("cid") int cid, @Param("s")String s);

    List<Map<String, Object>> selectLatest(String type);

    List<Map<String, Object>> selectByMoreCondition(MoreCondition moreCondition);

    int countNumber(MoreCondition moreCondition);

    List<Map<String, Object>> findJobnameByUid(Map<String, Object> map);

    @Update("delete from myrecruitment  where cid = #{uid}")
    void deleteByUid(Integer uid);

}