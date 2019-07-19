package com.offer.recruitment.utils;
/*
 * 封装了页数的实体类
 * 自定义页数
 */
public class PageAble {
	/**
	 * bootstrap的分页插件需要我们提供当前页数 + 以及 当前 总页数 + 每页显示的条数
	 */
	private Integer currentPage;  //当前页数
	private Integer numberOfPages; //一页显示的数量
	private Integer totalPages;  //总页数
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getNumberOfPages() {
		return numberOfPages;
	}
	public void setNumberOfPages(Integer numberOfPages) {
		this.numberOfPages = numberOfPages;
	}
	public Integer getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}
	
	
	
	
}
