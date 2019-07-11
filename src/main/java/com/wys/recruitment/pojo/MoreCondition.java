package com.wys.recruitment.pojo;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 多条件查询，封装多条件的pojo
 * @author Administrator
 *
 */
public class MoreCondition {
	/*jobname   文本框      like
	公司名称  文本框	   like
	工作地点  select选择框 eq
	工作经验  select		  eq
	工作性质				eq worknature
	学历要求  select       eq
	融资阶段  select       development
	行业领域  select       
	招聘类型  select       校招、社招
	月薪范围  select       
	发布日期  近三天、select  between
	公司规模  少于50人	*/
	public String jobname;
	public String companyname;
	public String address;
	public String workexperience;
	public String worknature;
	public String xueli;
	public String development;
	public String industry;
	public String type;
	
	public Double moneyrange;
	public Double moneyrangeend;
	
	public String publictime;
	private Integer minpeople;
	private Integer maxpeople;
	
	private String starttime;
	private String endtime;
	private Integer datenumber;
	
	private String[] companyandjob;
	//分页的条数
	private int pageSize;
	private Integer number = 8;
	private int page = 0;
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) throws UnsupportedEncodingException {
		this.jobname = new String(jobname.getBytes("ISO8859-1"), "UTF-8");
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) throws UnsupportedEncodingException {
		this.companyname = new String(companyname.getBytes("ISO8859-1"), "UTF-8");
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) throws UnsupportedEncodingException {
		this.address = new String(address.getBytes("ISO8859-1"), "UTF-8");;
	}
	
	public String getWorkexperience() {
		return workexperience;
	}
	public void setWorkexperience(String workexperience) throws UnsupportedEncodingException {
		this.workexperience = new String(workexperience.getBytes("ISO8859-1"), "UTF-8");
	}
	public String getWorknature() {
		return worknature;
	}
	public void setWorknature(String worknature) throws UnsupportedEncodingException {
		this.worknature = new String(worknature.getBytes("ISO8859-1"), "UTF-8");
	}
	public String getXueli() {
		return xueli;
	}
	public void setXueli(String xueli) throws UnsupportedEncodingException {
		this.xueli = new String(xueli.getBytes("ISO8859-1"), "UTF-8");
	}
	public String getDevelopment() {
		return development;
	}
	public void setDevelopment(String development) throws UnsupportedEncodingException {
		this.development = new String(development.getBytes("ISO8859-1"), "UTF-8");
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) throws UnsupportedEncodingException {
		this.industry = new String(industry.getBytes("ISO8859-1"), "UTF-8");
	}
	public String getType() {
		return type;
	}
	public void setType(String type) throws UnsupportedEncodingException {
		this.type = new String(type.getBytes("ISO8859-1"), "UTF-8");
	}
	
	
	public String getPublictime() {
		return publictime;
	}
	public void setPublictime(String publictime) {
		this.publictime = publictime;
	}
	public Integer getMinpeople() {
		return minpeople;
	}
	public void setMinpeople(Integer minpeople) {
		if(minpeople!=null) {
			this.minpeople = minpeople - 1;
		}
		
	}
	public Integer getMaxpeople() {
		return maxpeople;
	}
	public void setMaxpeople(Integer maxpeople) {
		this.maxpeople = maxpeople;
	}
	
	public String[] getCompanyandjob() {
		return companyandjob;
	}
	public void setCompanyandjob(String[] companyandjob){
		this.companyandjob = companyandjob;
	}
	public Double getMoneyrange() {
		return moneyrange;
	}
	public void setMoneyrange(Double moneyrange) {
		if(moneyrange!=null) {
			this.moneyrange = moneyrange;
			if(moneyrange!=15000d) {
				this.moneyrangeend = moneyrange + 6000;
			}
		}
		
		
	}
	public Double getMoneyrangeend() {
		return moneyrangeend;
	}
	public void setMoneyrangeend(Double moneyrangeend) {
		
	}
	
	
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	
	
	
	public Integer getDatenumber() {
		return datenumber;
	}
	public void setDatenumber(Integer datenumber) {
		if(datenumber!=null) {
			this.datenumber = datenumber;
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			endtime = sdf.format(date);
			
			Calendar calendar1 = Calendar.getInstance();
			if(datenumber==1) {
				//查询当前一天的时间
				
				calendar1.add(Calendar.DATE, -1);
				starttime = sdf.format(calendar1.getTime());
			}else if(datenumber == 3){
				//查询当前3天的时间
			
				calendar1.add(Calendar.DATE, -3);
				starttime = sdf.format(calendar1.getTime());
			}else if(datenumber == 7) {
				//查询当前7天的时间
			
				calendar1.add(Calendar.DATE, -3);
				starttime = sdf.format(calendar1.getTime());
			}else if(datenumber == 7) {
				//查询当前30天的时间
				calendar1.add(Calendar.DATE, -30);
				starttime = sdf.format(calendar1.getTime());
			}else {
				//查询当前30天的时间
				calendar1.add(Calendar.DATE, -3000);
				starttime = sdf.format(calendar1.getTime());
			}
		}
		
	}
	
	
	
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getPage() {
		return page;
		
	}
	public void setPage(Integer page) {
		this.page = page;
		this.pageSize  = (page - 1) * this.number;
		
	}
	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String imageupdatename = sdf.format(date);
		System.out.println(imageupdatename);
		System.out.println(imageupdatename);
		
	    Calendar calendar1 = Calendar.getInstance();
	    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    calendar1.add(Calendar.DATE, -3);
	    String three_days_ago = sdf1.format(calendar1.getTime());
	    System.out.println(three_days_ago);
	}
	
	
	
}
