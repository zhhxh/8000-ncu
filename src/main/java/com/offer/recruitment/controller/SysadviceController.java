package com.offer.recruitment.controller;

import java.io.UnsupportedEncodingException;

import com.offer.recruitment.service.ISysadvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.offer.recruitment.pojo.Sysadvice;

@Controller
@RequestMapping("/sysadvice")
public class SysadviceController {
	@Autowired
	private ISysadvice sysadviceImpl;
	/**
	 * 保存小程序存传来的数据
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/xiaochengxu/save")
	@ResponseBody
	public String save(Sysadvice sysadvice,String myContent) throws UnsupportedEncodingException {
		//处理字符编码
		
		if(myContent!=null) {
			myContent = new String(myContent.getBytes("ISO8859-1"), "UTF-8");
		}
		sysadvice.setContent(myContent);
		sysadviceImpl.save(sysadvice);
		return "success";
	}
}
