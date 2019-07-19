package com.offer.recruitment.pojo.query;

public class JianKong {
	private String userName;  //用户名:    Administrator
	private String ip;  //	本地ip地址:    172.27.130.36
	private String getHostName;  //本地主机名:    QKP5IQ3CHNR6HN7
	private Long totalMemory; // JVM可以使用的总内存:    127401984
	private Long freeMemory;  // JVM可以使用的剩余内存:
	private Integer availableProcessors; //	 JVM可以使用的处理器个数:    4
	
	private String javaVersion; // Java的运行环境版本：    1.7.0_80
	
	private String total; //内存总量:
	private String used; //当前内存使用量
	private String free; //当前内存剩余量:
	private String jiaohuanquTotal; // 交换区总量: 
	private String jianhuanquUsed;//当前交换区使用量
	private String jianhuanquFree;//
	
	public String getJianhuanquUsed() {
		return jianhuanquUsed;
	}
	public void setJianhuanquUsed(String jianhuanquUsed) {
		this.jianhuanquUsed = jianhuanquUsed;
	}
	public String getJianhuanquFree() {
		return jianhuanquFree;
	}
	public void setJianhuanquFree(String jianhuanquFree) {
		this.jianhuanquFree = jianhuanquFree;
	}
	public String getJiaohuanquTotal() {
		return jiaohuanquTotal;
	}
	public void setJiaohuanquTotal(String jiaohuanquTotal) {
		this.jiaohuanquTotal = jiaohuanquTotal;
	}
	public String getUsed() {
		return used;
	}
	public void setUsed(String used) {
		this.used = used;
	}
	public String getFree() {
		return free;
	}
	public void setFree(String free) {
		this.free = free;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getJavaVersion() {
		return javaVersion;
	}
	public void setJavaVersion(String javaVersion) {
		this.javaVersion = javaVersion;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getGetHostName() {
		return getHostName;
	}
	public void setGetHostName(String getHostName) {
		this.getHostName = getHostName;
	}
	public Long getTotalMemory() {
		return totalMemory;
	}
	public void setTotalMemory(Long totalMemory) {
		this.totalMemory = totalMemory;
	}
	public Long getFreeMemory() {
		return freeMemory;
	}
	public void setFreeMemory(Long freeMemory) {
		this.freeMemory = freeMemory;
	}
	public Integer getAvailableProcessors() {
		return availableProcessors;
	}
	public void setAvailableProcessors(Integer availableProcessors) {
		this.availableProcessors = availableProcessors;
	}
	@Override
	public String toString() {
		return "JianKong [userName=" + userName + ", ip=" + ip + ", getHostName=" + getHostName + ", totalMemory="
				+ totalMemory + ", freeMemory=" + freeMemory + ", availableProcessors=" + availableProcessors
				+ ", javaVersion=" + javaVersion + ", total=" + total + ", used=" + used + ", free=" + free
				+ ", jiaohuanquTotal=" + jiaohuanquTotal + ", jianhuanquUsed=" + jianhuanquUsed + ", jianhuanquFree="
				+ jianhuanquFree + "]";
	}
}
