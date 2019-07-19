package com.offer.recruitment.pojo.query;

import java.io.UnsupportedEncodingException;

public class UserCondition {
	private String username;
	private String qq;
	private String weixin;
	private Integer isaudit;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) throws UnsupportedEncodingException {
		if(username!=null) {
			this.username = new String(username.getBytes("ISO8859-1"),"UTF-8");
		}
		
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) throws UnsupportedEncodingException {
		if(qq!=null) {
			this.qq = new String(qq.getBytes("ISO8859-1"),"UTF-8");
		}
		
	}
	public String getWeixin() {
		return weixin;
	}
	public void setWeixin(String weixin) throws UnsupportedEncodingException {
		if(weixin!=null) {
			this.weixin = new String(weixin.getBytes("ISO8859-1"),"UTF-8");
		}
		
	}
	public Integer getIsaudit() {
		return isaudit;
	}
	public void setIsaudit(Integer isaudit) {
		this.isaudit = isaudit;
	}
	
	
}
