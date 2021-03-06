package com.offer.recruitment.service;

import java.util.List;
import java.util.Map;

import com.offer.recruitment.pojo.News;

public interface INewsService {

	List<Map<String, Object>> findListByCid(Integer id);

	void deleteByPrimaryKey(Integer id);

	List<Map<String, Object>> findListByUid(Integer id);

	News selectByPrimaryKey(Integer nid);

}
