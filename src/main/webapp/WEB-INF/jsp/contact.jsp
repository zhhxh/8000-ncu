<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
<html>
 <head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
  <link type="text/css" rel="stylesheet" href="<%=path %>css/frontmodule.css" /> 
  <link type="text/css" rel="stylesheet" href="<%=path %>css/5_themes_default_select.css?v=0.0.0.9" front="css" /> 
  <link type="text/css" rel="stylesheet" href="<%=path %>css/5_themes_default_style.css?v=0.0.0.9" front="css" />
     <script type="text/javascript" src="<%=path %>js/5_themes_default_jquery191.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="<%=path %>js/5_themes_default_custom.js?v=0.0.0.9"></script> 
  <script type="text/javascript" src="<%=path %>js/5_themes_default_dialog.js?v=0.0.0.9"></script> 

  <!--引用静态文件:requirejs--> 
  <script type="text/javascript" src="<%=path %>js/require.js"></script> 
  <title>联系我们</title> 
 </head> 
<body style="background: #ffffff">
 
  <!-- 动态包含头部导航 -->
  <jsp:include page="../common/header.jsp" flush="true" />
  
  <!-- 静态包含 -->
 <%--  <%@include file="../common/nav.jsp"%> --%>
   <!-- 导航栏信息 start -->
		  <div class="nav"> 
			   <!--module:menu begin--> 
			   <div class="bs-module"> 
			    <div class="menu-simple "> 
			     <ul id="portalmenu">

			      <li><a target="_self" href="${pageContext.request.contextPath}/system/index">首页</a> </li>
			     <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>职位搜索</a> </li>
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>实习专区</a> </li>
			      <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList"  >最新资讯</a> </li>
			      <li><a target="_self" href="${pageContext.request.contextPath}/skill/showOurCompany" class="">求职技巧</a> </li>
			      <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="current">联系我们</a> </li>

			     </ul> 
			    </div> 
			   </div> 
			   <!--module:menu end--> 
		   </div>

		  
		  <!-- 导航栏信息 end -->
 
  <div class="contain joblist clearfix" style="background: #eff0f4">
      <div style="height:8px; background: #eff0f4"/></div>
   <div class="containsidebar" >
    <div class="zhaopindongtai bodertop nofly minheight" style="width: 100%">
     <!--module:menu begin--> 
     <div class="bs-module"> 
      <div class="menu-secondtemplate "> 
       <div class="parttitleline"></div> 
       <div class="titlelinks"> 
        <ul> 
         <ul class="secondarymenu"> 
             <li class="secondCurrent" style="font-size: 16px;list-style: none;margin-top: 20px;margin-bottom: 10px">平台微信</li>
             <li style="list-style: none"><img src="${pageContext.request.contextPath}/static/window/images/wechatcode.png" alt="wechat" style="width: 80%"></li>
             <li class="secondCurrent" style="font-size: 16px;list-style: none;margin-top: 20px;margin-bottom: 10px">平台QQ</li>
             <li style="list-style: none"><img src="${pageContext.request.contextPath}/static/window/images/code.jpg" alt="qq" style="width: 80%"></li>
         </ul> 
        </ul> 
       </div> 
      </div> 
     </div> 
     <!--module:menu end--> 
    </div>
   </div>
      <div style="width: 60%;background: #ffffff;margin-right: 20%;float: right;margin-bottom: 30px">
          <div style="width: 90%;float: left;margin-left: 5%">
              <h3 style="font-size: 16px;color: #0074AA;margin-top: 15px;margin-bottom: 10px">关于平台</h3>
              <hr style="background-color: #dddddd;height: 2px;border: 0px;"/>
              <span style="font-size: 14px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Offer100平台是一个小型的综合招聘平台，旨在为求职者，尤其是在校的大学生，提供招聘信息和在线的招聘服务。本平台同时也是南昌大学软件学院16级学生参与软酷企业实训的工程项目，项目完全符合实训要求，并完全由16级团队（5人）制作。</span>
          </div>
          <div style="width: 90%;float: left;margin-left: 5%">
              <h3 style="font-size: 16px;color: #0074AA;margin-top: 15px;margin-bottom: 10px">联系地址</h3>
              <hr style="background-color: #dddddd;height: 2px;border: 0px;"/>
              <img src="${pageContext.request.contextPath}/static/window/images/location.png" alt="location" style="width: 70%;margin-left:15% ">
          </div>
          <div style="width: 90%;float: left;margin-left: 5%">
              <h3 style="font-size: 16px;color: #0074AA;margin-top: 15px;margin-bottom: 10px">团队信息</h3>
              <hr style="background-color: #dddddd;height: 2px;border: 0px;"/>
              <br/>
              <h3 style="font-size: 16px;text-align: center">祝  杰：8000116169 软件工程166班 </h3><br/>
              <h3 style="font-size: 16px;text-align: center">张  涵：8000116127 软件工程164班 </h3><br/>
              <h3 style="font-size: 16px;text-align: center">李  博：8000116065 软件工程163班 </h3><br/>
              <h3 style="font-size: 16px;text-align: center">张鑫雨：8000116076 软件工程163班 </h3><br/>
              <h3 style="font-size: 16px;text-align: center">徐钰涵：8000116202 软件工程167班 </h3><br/>
              <br/>
          </div>
      </div>
  </div>

   <!-- 静态包含 -->
  <%@include file="../common/footer.jsp"%> 

 </body>
</html>