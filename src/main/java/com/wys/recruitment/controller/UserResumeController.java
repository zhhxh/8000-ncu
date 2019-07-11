package com.wys.recruitment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wys.recruitment.pojo.User;
import com.wys.recruitment.pojo.UserResume;
import com.wys.recruitment.pojo.Workexperience;
import com.wys.recruitment.service.IWorkExperienceService;
import com.wys.recruitment.service.impl.UserResumeServiceImpl;
import com.wys.recruitment.utils.Response;

@Controller
@RequestMapping("/userResume")
public class UserResumeController {
	@Autowired
	private UserResumeServiceImpl userResumeServiceImpl;
	
	@Autowired
	private IWorkExperienceService workExperienceService;
	/**
	 * 增加保存自己的信息
	 * @param userResume
	 * @return
	 */
	@RequestMapping("/saveBaseMessage")
	public @ResponseBody Response saveBaseMessage(UserResume userResume,HttpServletRequest request) {
		//1.0 声明需要返回的类型
		Response rep = new Response();
		rep.setCode(1);
		rep.setMsg("保存成功");
		if(userResume.getId()!=null) {
			//表示之前已经存在了数据，现在是修改
			System.out.println(userResume.getId());
			System.out.println("添加数据");
			userResumeServiceImpl.updateBaseMessage(userResume);
		}else {
			System.out.println("新增数据");
			//表示之前已经不存在了数据，现在是新增
			User user  = (User) request.getSession().getAttribute("user");
			userResume.setUserid(user.getId());
			userResumeServiceImpl.saveBaseMessage(userResume);
			
			
		}
		
		   return rep;
	}
	/**
	 * 修改保存自己的求职意向
	 * @param userResume
	 * @return
	 */
	@RequestMapping("/saveIntention")
	public @ResponseBody Response saveIntention(UserResume userResume,HttpServletRequest request) {
		//1.0 声明需要返回的类型
		Response rep = new Response();
		rep.setCode(1);
		rep.setMsg("保存成功");
		if(userResume.getId()!=null) {
			//表示之前已经存在了数据，现在是修改
			
			userResumeServiceImpl.saveIntention(userResume);
		}else {
			//表示之前已经不存在了数据，现在是新增
			User user  = (User) request.getSession().getAttribute("user");
			userResume.setUserid(user.getId());
			userResumeServiceImpl.saveBaseMessage(userResume);
		}
		return rep;
	}
	
	
	@RequestMapping("/index3")
	public String index3() {
		return "index3";
	}
	
	/**
	 * 以下是小程序的代码
	 */
	/**
	 * 获取个人简历信息
	 * @param id
	 * @return
	 */
	@RequestMapping("/xiaochengxu/getData")
	@ResponseBody
	public Map<String,Object> xiaochengxuGetUserresume(Integer id){
		Map<String,Object> map = new HashMap<String,Object>();
		if(id!=null) {
			UserResume userResume = userResumeServiceImpl.selectByUserId(id);
			map.put("userResume", userResume);
			List<Workexperience> workexperienceLists = workExperienceService.selectByUid(id);
			map.put("workexperienceLists",workexperienceLists);
			return map;
		}else {
			return map;
		}
	}
	

	
	
}
