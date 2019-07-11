package com.wys.recruitment.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wys.recruitment.pojo.User;
import com.wys.recruitment.pojo.Workexperience;
import com.wys.recruitment.service.IWorkExperienceService;
import com.wys.recruitment.utils.Response;

@Controller
@RequestMapping("/workexperience")
public class WorkExperienceController {
	@Autowired
	private IWorkExperienceService workExperienceService;
	
	@RequestMapping("/toWrite")
	public String toWrite(Integer id,HttpServletRequest request) {
		if(id!=null) {
			//说明是修改操作，需要去数据库存储拿数据
			Workexperience workexperience = workExperienceService.selectByPrimaryKey(id);
			request.setAttribute("workexperience", workexperience);
		}
		return "user/workexperience/toWrite";
	}
	
	@RequestMapping("/saveWorkexperience")
	@ResponseBody
	public Response saveWorkexperience(Workexperience workexperience,HttpServletRequest request) {
		//1.0 声明需要返回的类型、
		Response res = new Response();
		if(workexperience.getId()!=null) {
			//表示进行更改才做
			int j = workExperienceService.updateWorkexperience(workexperience);
			//3.0 如果保存失败，则返回失败信息
			if(j > 0) {
				//3.1表示保存成功
				res.setCode(1);
				res.setData("修改成功");
			}else {
				res.setData(-1);
				res.setData("修改失败");
				
			}
		}else {
			//2.0 保存数据
			User u = (User) request.getSession().getAttribute("user");
			Integer uid = u.getId();
			workexperience.setUid(uid);
			workexperience.setState("1");
			workexperience.setWritetime(new Date());
			int i = workExperienceService.saveWorkexperience(workexperience);
			//3.0 如果保存失败，则返回失败信息
			if(i > 0) {
				//3.1表示保存成功
				res.setCode(1);
				res.setData("保存成功");
			}else {
				res.setData(-1);
				res.setData("保存失败");
				
			}
		}
		
		return res;
		
		
	}
	
	/**
	 * 删除个人的工作经验信息a
	 */
	@RequestMapping("/delete")
	public String delete(Integer id,HttpServletRequest request) {
		//1.0 删除个人信息
		int i = workExperienceService.deleteByPrimaryKey(id);
		if(i > 0) {
			//重定向到其他页面
			return "redirect:/user/memberResume";
		}else {
			//表示程序代码有错
			request.setAttribute("error", "传入的工作经验id不合法，或者检查程序代码，如有问题联系管理员：420869664");
			return "system/error";
		}
	}
}

