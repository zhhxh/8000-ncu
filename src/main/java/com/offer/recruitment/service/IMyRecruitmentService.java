package com.offer.recruitment.service;

import com.offer.recruitment.pojo.User;
import com.offer.recruitment.pojo.MoreCondition;
import com.offer.recruitment.pojo.Myrecruitment;

import java.util.List;
import java.util.Map;

public interface IMyRecruitmentService {
    List<Myrecruitment> selectAllByCid(User user);

    int deleteByPrimaryKey(String id);

    Myrecruitment selectById(String id);

    boolean updateById(Myrecruitment myrecruitment);

    List<Map<String, Object>> selectLatest(String type);

    List<Myrecruitment> selectByCid(int id);

    List<Map<String, Object>> selectByMoreCondition(MoreCondition moreCondition);

    List<Map<String, Object>> findJobnameByUid(Integer id);

}
