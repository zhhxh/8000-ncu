package com.offer.recruitment.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.offer.recruitment.service.IArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.offer.recruitment.mapper.ArticlesMapper;
import com.offer.recruitment.pojo.Articles;

@Transactional
@Service
public class ArticlesServiceImpl implements IArticlesService {
	@Autowired
	private ArticlesMapper articlesMapper;

	@Override
	public int insertArticle(Articles articles) {
		// TODO Auto-generated method stub
		return articlesMapper.insert(articles);
	}

	@Override
	public List<Map<String, Object>> listAll() {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("isshow", null);
		// TODO Auto-generated method stub
		return articlesMapper.listAll(map);
	}

	@Override
	public int delete(Integer id) {
		// TODO Auto-generated method stub
		return articlesMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int pass(Integer id, int i) {
		// TODO Auto-generated method stub
		return articlesMapper.pass(id,i);
	}

	@Override
	public Articles selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return articlesMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateArticle(Articles articles) {
		// TODO Auto-generated method stub
		Articles a = articlesMapper.selectByPrimaryKey(articles.getArticleid());
		//修改数据
		a.setArticlecontent(articles.getArticlecontent());
		a.setArticlekey(articles.getArticlekey());
		a.setArticletitle(articles.getArticletitle());
		if(articles.getArticleimg()!=null) {
			a.setArticleimg(articles.getArticleimg());
		}
		
		return articlesMapper.updateByPrimaryKey(a);
	}

	@Override
	public List<Map<String, Object>> userlistAll(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return articlesMapper.userlistAll(map);
	}

	@Override
	public int countNumber() {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("isshow", "1");
		return articlesMapper.countNumber(map);
	}

	@Override
	public Articles selectById(String id) {
		// TODO Auto-generated method stub
		return articlesMapper.selectByPrimaryKey(Integer.parseInt(id));
	}

	@Override
	public List<Map<String, Object>> listTwo() {
		// TODO Auto-generated method stub
		return articlesMapper.listTwo();
	}


}
