package com.wys.recruitment.mapper;

import com.wys.recruitment.pojo.Sysadvice;

import java.util.List;
import java.util.Map;

public interface SysadviceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sysadvice record);

    int insertSelective(Sysadvice record);

    Sysadvice selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sysadvice record);

    int updateByPrimaryKey(Sysadvice record);

    List<Map<String, Object>> listAll(String string);
}