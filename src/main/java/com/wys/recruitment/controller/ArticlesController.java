package com.wys.recruitment.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wys.recruitment.pojo.Articles;
import com.wys.recruitment.pojo.Sysadmin;
import com.wys.recruitment.service.IArticlesService;
import com.wys.recruitment.utils.IOUtil;
import com.wys.recruitment.utils.PageAble;
import com.wys.recruitment.utils.Response;

@Controller
@RequestMapping("/articles")
public class ArticlesController {
	@Autowired
	private IArticlesService articlesService;
	
	@RequestMapping("/articlesList")
	public String articlesList(HttpServletRequest request) {
		if(!isLogin(request)) {
			return "admin/tologin";
		}
		//查看出当前所有的通告记录
		List<Map<String,Object>> map = articlesService.listAll();
		request.setAttribute("articleslist", map);
		return "admin/articlesList";
	}
	

	/**
	 * 公告信息详情
	 */
	@RequestMapping("/detail")
	public String detail(String id,HttpServletRequest request) {
		if(id!=null) {
			//1.0 公告
			Articles articles  = articlesService.selectById(id);
			request.setAttribute("articles", articles);
			return "articledetail";
		}else {
			return "system/error";
		}
	}
	
	
	
	/**
	 * 
	 * 显示所有通告信息
	 */
	@RequestMapping("/user/articlesList")
	public String userarticlesList(HttpServletRequest request,Integer page1) {
		//5.0 封装好当前的分页信息
		PageAble pageAble = new PageAble();
		pageAble.setNumberOfPages(12);			
				
		Map<String, Object>  map = new HashMap<String, Object>();
		map.put("isshow", 1);
		map.put("number", 12);
		if(page1!=null) {
			map.put("pageSize",( page1 - 1 ) * 12);
			pageAble.setCurrentPage(page1);
		}else {
			map.put("pageSize",0);
			pageAble.setCurrentPage(1);
		}
		
		//统计所有的条数
		int i = articlesService.countNumber();
		if(i%12==0) {
			pageAble.setTotalPages(i / 12);
		}else {
			pageAble.setTotalPages(i / 12 + 1);
		}
		
		List<Map<String,Object>> articleslist = articlesService.userlistAll(map);
		
		request.setAttribute("articleslist", articleslist);
		request.setAttribute("pageAble", pageAble);
		return "articleslist";
	}
	
	
	
	/**
	 * 保存系统公告信息
	 * @throws Exception 
	 */
	@RequestMapping("/insertArticle")
	public String insertArticle(HttpServletRequest request,
			@RequestParam("logo") MultipartFile logo,
			Articles articles
			) throws Exception {
		if(!isLogin(request)) {
			return "admin/tologin";
		}
		articles.setArticleimg(null);
		if(!logo.isEmpty()){
			//2.0 保存图片
			String articleimg= IOUtil.saveImage(logo);
			articles.setArticleimg(articleimg);
		}
		Sysadmin sa = (Sysadmin) request.getSession().getAttribute("adminUser");
		
		if(articles.getArticleid()!=null) {
			//表示修改数据
			articles.setStaffid(sa.getId());
			int j = articlesService.updateArticle(articles);
			if(j>0) {
				//表示修改成功
				return  "redirect:/articles/articlesList";
			}else {
				//表示修改失败
				request.setAttribute("error", "ArticlesController修改数据失败，请联系管理员");
				return "system/error";
			}
		}else {
			//表示新增数据
			articles.setStaffid(sa.getId());
			articles.setCreatetime(new Date());
			articles.setIsshow((byte) 1);
			int i = articlesService.insertArticle(articles);
			if(i>0) {
				return  "redirect:/articles/articlesList";
			}else {
				//表示修改失败
				request.setAttribute("error", "ArticlesController修改数据失败，请联系管理员");
				return "system/error";
			}
		}
		
		
	}
	/**
	 * 公告基本详情
	 * 
	 */
	@RequestMapping("/articlesDetail")
	@ResponseBody
	public Response companyDetail(HttpServletRequest request,Integer id) {
		//2.0 声明需要返回的类型
		Response res = new Response();
		if(id!=null) {
			Articles articles = articlesService.selectByPrimaryKey(id);
			res.setCode(1);
			res.setData(articles);
		}else {
			res.setCode(-1);
			res.setData("必须把用户的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	
	
	/**
	 * 上线通告
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/pass")
	@ResponseBody
	public Response pass(Integer id) {
		//1.0 声明返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = articlesService.pass(id,1);
			if(i > 0) {
				res.setCode(1);
				res.setData("审核通过成功");
			}else {
				res.setCode(-1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把公司的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	
	/**
	 * 下线通告
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping("/nopass")
	@ResponseBody
	public Response nopass(Integer id) {
		//1.0 声明返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = articlesService.pass(id,2);
			if(i > 0) {
				res.setCode(1);
				res.setData("审核通过成功");
			}else {
				res.setCode(-1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把公司的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	/*
	 * 删除通告
	 * */
	@RequestMapping("/delete")
	@ResponseBody
	public Response delete(HttpServletRequest request,Integer id) {
		
		//1.0 声明返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = articlesService.delete(id);
			if(i > 0) {
				res.setCode(1);
				res.setData("删除成功");
			}else {
				res.setCode(1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把公司的通告id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	/**
	 * 检查是否登录
	 */
	private boolean isLogin(HttpServletRequest request) {
		Sysadmin sa = (Sysadmin) request.getSession().getAttribute("adminUser");
		if(sa!=null) {
			return true;
		}else {
			return false;
		}
	}
}
