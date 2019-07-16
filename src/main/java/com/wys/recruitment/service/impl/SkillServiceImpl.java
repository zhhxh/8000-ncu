package com.wys.recruitment.service.impl;

import com.wys.recruitment.mapper.SkillMapper;
import com.wys.recruitment.pojo.Articles;
import com.wys.recruitment.service.ISkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional
@Service
public class SkillServiceImpl implements ISkillService {
    @Autowired
    private SkillMapper skillMapper;

    @Override
    public int insertArticle(Articles articles) {
        return skillMapper.insert(articles);
    }

    @Override
    public List<Map<String, Object>> listAll() {
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("isshow", null);

        return skillMapper.listAll(map);
    }

    @Override
    public int delete(Integer id) {
        return skillMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int pass(Integer id, int i) {
        return skillMapper.pass(id,i);
    }

    @Override
    public Articles selectByPrimaryKey(Integer id) {
        return skillMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateArticle(Articles articles) {
        Articles a = skillMapper.selectByPrimaryKey(articles.getArticleid());
        //修改数据
        a.setArticlecontent(articles.getArticlecontent());
        a.setArticlekey(articles.getArticlekey());
        a.setArticletitle(articles.getArticletitle());
        if(articles.getArticleimg()!=null) {
            a.setArticleimg(articles.getArticleimg());
        }

        return skillMapper.updateByPrimaryKey(a);
    }

    @Override
    public List<Map<String, Object>> userlistAll(Map<String, Object> map) {
        return skillMapper.userlistAll(map);
    }

    @Override
    public int countNumber() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("isshow", "1");
        return skillMapper.countNumber(map);
    }

    @Override
    public Articles selectById(String id) {
        return skillMapper.selectByPrimaryKey(Integer.parseInt(id));
    }

    @Override
    public List<Map<String, Object>> listTwo() {
        return skillMapper.listTwo();
    }
}
