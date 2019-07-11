package com.wys.recruitment.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wys.recruitment.mapper.NewsMapper;
import com.wys.recruitment.pojo.News;
import com.wys.recruitment.service.INewsService;
@Transactional
@Service
public class NewsServiceImpl implements INewsService {
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public List<Map<String, Object>> findListByCid(Integer id) {
		// TODO Auto-generated method stub
		return newsMapper.findListByCid(id);
	}

	@Override
	public void deleteByPrimaryKey(Integer id) {
		newsMapper.deleteByPrimaryKey(id);
		
	}

	@Override
	public List<Map<String, Object>> findListByUid(Integer id) {
		// TODO Auto-generated method stub
		return newsMapper.findListByUid(id);
	}

	@Override
	public News selectByPrimaryKey(Integer nid) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey(nid);
	}
}
