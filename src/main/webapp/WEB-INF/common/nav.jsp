<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="nav"> 
	   <!--module:menu begin--> 
	   <div class="bs-module"> 
	    <div class="menu-simple "> 
	     <ul id="portalmenu"> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/index">首页</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist" class="">全部职位</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=社招" class="">社会招聘</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" class="">校园招聘</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList" class="">系统通告</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/showOurCompany" class="current">公司介绍</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="">联系我们</a> </li> 
	     </ul> 
	    </div> 
	   </div> 
	   <!--module:menu end--> 
   </div> 
</body>
</html>