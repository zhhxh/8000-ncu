package com.wys.recruitment.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
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

import com.wys.recruitment.pojo.Company;
import com.wys.recruitment.pojo.Sysadmin;
import com.wys.recruitment.pojo.query.JianKong;
import com.wys.recruitment.pojo.query.UserCondition;
import com.wys.recruitment.service.ISysadminService;
import com.wys.recruitment.service.ISysadvice;
import com.wys.recruitment.service.IUserService;
import com.wys.recruitment.service.impl.CompanyServiceImpl;
import com.wys.recruitment.utils.IOUtil;
import com.wys.recruitment.utils.JianKongUtils;
import com.wys.recruitment.utils.MyMd5Utils;
import com.wys.recruitment.utils.Response;

@Controller
@RequestMapping("/sysadmin")
public class SysadminController {
	@Autowired
	private ISysadminService sysadminService;
	
	@Autowired
	private CompanyServiceImpl companyServiceImpl;
	
	@Autowired
	private IUserService userServiceImpl;
	
	@Autowired
	private ISysadvice sysadviceImpl;
	
	@RequestMapping("/toLogin")
	public String toLogin() {
		return "admin/tologin";
	}
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request) {
		if(isLogin(request)) {
			return "admin/index";
		}else {
			return "admin/tologin";
		}
		
	}
	
	@RequestMapping("/basePage")
	public String basePage(HttpServletRequest request) {
		if(isLogin(request)) {
			return "admin/basePage";
		}else {
			return "admin/tologin";
		}
		
	}
	
	@RequestMapping("/companylist")
	public String companylist(HttpServletRequest request,String companyname,String isallow) throws UnsupportedEncodingException {
		if(!isLogin(request)) {
			return "admin/tologin";
		}
		
		
		//TODO 1.0 判断管理员是否登录
		String is = null;
		//2.0 解决字符编码
		if(companyname!=null) {
			companyname = new String(companyname.getBytes("ISO8859-1"), "UTF-8");
		}
		if(isallow!=null) {
			isallow = new String(isallow.getBytes("ISO8859-1"), "UTF-8");
			is = isallow;
			if(isallow.equals("3")) {
				isallow = "";
			}
		}
		
		
		
		
		//3.0 查询出当前所有企业的信息
		Map<String,String> coditionMap = new HashMap<String, String>();
		coditionMap.put("companyname", companyname);
		coditionMap.put("isallow", isallow);
		List<Map<String,Object>> map = companyServiceImpl.listAll(coditionMap);
	
		request.setAttribute("companylist", map);
		request.setAttribute("companyname", companyname);
		request.setAttribute("is", is);
		
		return "admin/companylist";
	}
	
	
	/**
	 * 删除公司信息
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Response delete(HttpServletRequest request,Integer id) {
		//1.0 声明返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = sysadminService.delete(id);
			if(i > 0) {
				res.setCode(1);
				res.setData("删除成功");
			}else {
				res.setCode(1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把公司的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	
	/**
	 * 审核
	 */
	@RequestMapping("/pass")
	@ResponseBody
	public Response pass(Integer id) {
		//1.0 声明返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = sysadminService.pass(id);
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
	 * 数据列表
	 */
	@RequestMapping("/digitManage")
	public 	String digitManage(HttpServletRequest request,UserCondition userCondition) {
		if (!isLogin(request)) {
			return "admin/tologin";
		}
		return "admin/digitManage";
	}
	/**
	 * 用户列表
	 */
	@RequestMapping("/userlist")
	public 	String userlist(HttpServletRequest request,UserCondition userCondition) {
		if(!isLogin(request)) {
			return "admin/tologin";
		}
		
		//TODO 1.0 判断管理员是否登录了
		Integer is = null;
		if(userCondition.getIsaudit()!=null) {
			is = userCondition.getIsaudit();
			if(userCondition.getIsaudit() == 3) {
				userCondition.setIsaudit(null);
			}
		}
		//2.0 查询出所有的用户信息 
		List<Map<String,Object>> lists = userServiceImpl.listAllByCondition(userCondition);
		request.setAttribute("userlists", lists);

		//3.0封装当前的查询条件到页面

		request.setAttribute("is", is);
		request.setAttribute("username",userCondition.getUsername());
		request.setAttribute("qq", userCondition.getQq());
		request.setAttribute("weixin", userCondition.getWeixin());
		return "admin/userlist";
	}

	/**
	 * 重置密码
	 */
	@RequestMapping("/chongzhi")
	@ResponseBody
	public Response chongzhi(Integer id) {
		
		//1.0 TODO 判断用户是否登录
		
		//2.0 声明需要返回的额类型
		Response res = new Response();
		int i;
		try {
			i = userServiceImpl.chongzhi(id);
			if(i>0) {
				res.setCode(1);
				res.setData("重置密码成功");
			}else {
				res.setCode(-1);
				res.setData("重置密码成功");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			res.setCode(-1);
			res.setData("程序有问题");
		}
		
		return res;
	}
	
	/**
	 * 停用账户
	 */
	@RequestMapping("/tingyong")
	@ResponseBody
	public Response tingyong(Integer id) {
		//1.0 TODO 判断管理员是否登录
		
		//2.0 声明需要返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = userServiceImpl.tingyong(id,2);
			if(i > 0) {
				res.setCode(1);
				res.setData("审核通过成功");
			}else {
				res.setCode(-1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把用户的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	
	/**
	 * 解冻账户
	 */
	@RequestMapping("/jiedong")
	@ResponseBody
	public Response jiedong(Integer id) {
		//1.0 TODO 判断管理员是否登录
		
		//2.0 声明需要返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = userServiceImpl.tingyong(id,1);
			if(i > 0) {
				res.setCode(1);
				res.setData("解冻通过成功");
				
			}else {
				res.setCode(-1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把用户的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	
	/**
	 * 查看系统信息
	 */
	@RequestMapping("/sysmessage")
	public String sysmessage(HttpServletRequest request) {
		if(!isLogin(request)) {
			return "admin/tologin";
		}
		
		
		Response res = new Response();
		//获取系统信息
		JianKong jk = JianKongUtils.getData();
		request.setAttribute("jiankong",jk);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");// 年-月-日 
		request.setAttribute("datetiem", sdf.format(date));
		System.out.println(jk);
		return "admin/jiankong";
		
	}
	
	/**
	 * 查看小程序反馈的信息
	 */
	@RequestMapping("/sysadvicelist")
	public String sysadminlist(HttpServletRequest request) {
		if(!isLogin(request)) {
			return "admin/tologin";
		}
		
		List<Map<String,Object>> sysadvicelist = sysadviceImpl.listAll();
		request.setAttribute("sysadvicelist", sysadvicelist);
		return "admin/sysadvicelist";
	}
	/**
	 * 删除小程序反馈信息
	 */
	@RequestMapping("/deleteAdvice")
	@ResponseBody
	public Response deleteAdvice(Integer id) {
		//1.0 声明返回的类型
		Response res = new Response();
		if(id!=null) {
			int i = sysadviceImpl.delete(id);
			if(i > 0) {
				res.setCode(1);
				res.setData("删除成功");
			}else {
				res.setCode(1);
				res.setData("请检查程序代码");
			}
		}else {
			res.setCode(-1);
			res.setData("必须把公司的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	
	/**
	 * 公司基本信息详情
	 * 
	 */
	@RequestMapping("/companyDetail")
	@ResponseBody
	public Response companyDetail(HttpServletRequest request,Integer id) {
		//2.0 声明需要返回的类型
		Response res = new Response();
		if(id!=null) {
			Company company = companyServiceImpl.selectByPrimaryKey(id);
			res.setCode(1);
			res.setData(company);
		}else {
			res.setCode(-1);
			res.setData("必须把用户的id传递过来，否则是违法操作。如有问题，请联系管理员");
		}
		return res;
	}
	/*
	 * 修改公司信息
	 */
	@RequestMapping("/updateCompany")
	public String updateCompany(@RequestParam("logo1") MultipartFile logo1,
			@RequestParam("idcardimage1") MultipartFile idcardimage1,
			@RequestParam("companyimage1") MultipartFile companyimage1,
			Company company
			) throws Exception {
		//表示上传了图片
		company.setLogo(null);
		company.setIdcardimage(null);
		company.setCompanyimage(null);
		if(!logo1.isEmpty()){
			//2.0 保存图片
			String logo = IOUtil.saveImage(logo1);
			company.setLogo(logo);
		}
		
		if(!idcardimage1.isEmpty()){
			//2.0 保存图片
			String idcardimage = IOUtil.saveImage(idcardimage1);
			company.setIdcardimage(idcardimage);
		}
		
		if(!companyimage1.isEmpty()){
			//2.0 保存图片
			String companyimage = IOUtil.saveImage(companyimage1);
			company.setCompanyimage(companyimage);
		}
		System.out.println("-------------------");
		System.out.println(company);
		companyServiceImpl.update(company);
		//通定向到
		return "redirect:/sysadmin/companylist";
	}
	
	
	
	/**
	 * 系统登录
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request,Sysadmin sysadmin) {
		//2.0 根据用户名+密码去检索数据库
		String basePassword = MyMd5Utils.encodeByMD5(sysadmin.getPassword());
		Sysadmin sa = sysadminService.selectSysadminByUsernameAndPassword(sysadmin.getUsername(),basePassword);
		if(sa!=null) {
			//3.0表示登陆成功
			request.getSession().setAttribute("adminUser", sa);
			return "admin/index";
		}else {
			//4.0 账号密码错误
			request.setAttribute("error", "账号密码错误");
			return "admin/tologin";
		}
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
	
	@RequestMapping("/loyout")
	public String loyout(HttpServletRequest request) {
		request.getSession().removeAttribute("adminUser");
		return "admin/tologin";
		
	}
}
