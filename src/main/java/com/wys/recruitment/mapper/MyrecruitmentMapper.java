package com.wys.recruitment.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.wys.recruitment.pojo.MoreCondition;
import com.wys.recruitment.pojo.Myrecruitment;

public interface MyrecruitmentMapper {
    int deleteByPrimaryKey(String id);

    int insert(Myrecruitment record);

    int insertSelective(Myrecruitment record);

    Myrecruitment selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Myrecruitment record);

    int updateByPrimaryKey(Myrecruitment record);
    @Select("select * from myrecruitment m where m.cid = #{0} and m.position = #{1} order by m.publictime desc")
	List<Myrecruitment> selectAllByCid(int cid, String string);

	List<Map<String, Object>> selectLatest(String type);

	List<Map<String,Object>> selectByMoreCondition(MoreCondition moreCondition);

	int countNumber(MoreCondition moreCondition);

	List<Map<String, Object>> findJobnameByUid(Map<String, Object> map);
	@Update("delete from myrecruitment  where cid = #{0}")
	void deleteByUid(Integer uid);

}