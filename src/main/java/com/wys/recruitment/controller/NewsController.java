package com.wys.recruitment.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wys.recruitment.pojo.News;
import com.wys.recruitment.pojo.User;
import com.wys.recruitment.service.INewsService;
import com.wys.recruitment.utils.Response;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	private INewsService newsService;
	
	@RequestMapping("/newslist")
	public String newsList(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null){
			List<Map<String,Object>> newsLists = newsService.findListByCid(user.getId());
			request.setAttribute("newslist", newsLists);
			return "company/newslist";
		}else {
			request.setAttribute("error", "请登录之后操作，否则非法操作，如有疑问，请联系管理员：");
			return "system/login";
		}
		
	}
	/**
	 * 删除消息
	 */
	@RequestMapping("/delete")
	public @ResponseBody Response delete(Integer id) {
		Response res = new Response();
		if(id!=null) {
			newsService.deleteByPrimaryKey(id);
			res.setCode(1);
			res.setData("标志不合适成功，已经给对方发送了一条消息。建议HR将不合适的申请删除");
		}else {
			res.setCode(-1);
			res.setData("必须带id过来，否则非法操作，如有疑问，请联系管理员：");
		}
		//然后重定向到list页面
		return res;
	}
	
	/**
	 * 用户的消息列表
	 */
	@RequestMapping("/user/newslist")
	public String userNewsList(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		if(user!=null){
			List<Map<String,Object>> newsLists = newsService.findListByUid(user.getId());
			request.setAttribute("newslist", newsLists);
			return "user/usernewslist";
		}else {
			request.setAttribute("error", "请登录之后操作，否则非法操作，如有疑问，请联系管理员：");
			return "system/login";
		}
		
	}
	/**
	 * 查看消息详情
	 */
	@RequestMapping("/newdetail")
	public String newdetail(Integer nid,HttpServletRequest request) {
		if(nid!=null) {
			News news = newsService.selectByPrimaryKey(nid);
			request.setAttribute("news", news);
			return "user/showMessageForAll";
		}else {
			
			request.setAttribute("error", "必须传入用户的nid，非法操作，如操作无误，请联系管理员 ");
			return "system/error";
		}
	}
	
	
	//以下是小程序的API
	/**
	 * 用户的消息列表
	 */
	@RequestMapping("/xiaochengxu/user/newslist")
	@ResponseBody
	public Map<String,Object> xiaochegxuUserNewsList(Integer uid) {
		Map<String,Object> map =  new HashMap<String, Object>();
		if(uid!=null){
			List<Map<String,Object>> newsLists = newsService.findListByUid(uid);
			List<Map<String,Object>> returnLists = new ArrayList<Map<String,Object>>();
			
			for (Map<String, Object> map2 : newsLists) {
				String createTime = map2.get("createtime").toString();
				map2.put("time", createTime.substring(0,createTime.length()-2));
				String description = map2.get("content").toString();
				if(description.length() >= 36) {
					map2.put("description", description.substring(0, 35)+"......");
				}else {
					map2.put("description", description);
				}
				returnLists.add(map2);
			}
			map.put("newslist", returnLists);
			map.put("operate", true);
		}else {
			map.put("operate", false);
			map.put("error", "请登录之后操作，否则非法操作，如有疑问，请联系管理员：");
	
		}
		return map;
	}
	
	
	
	/**
	 * 删除消息
	 */
	@RequestMapping("/xiaochengxu/delete")
	public @ResponseBody boolean xiaochengxuDelete(Integer id) {
		newsService.deleteByPrimaryKey(id);
		return true;
	}

}
