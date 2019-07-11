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
<body> 
 
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
			     <li><a target="_self" hre="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>全部职位</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=社招" ${requestScope.moreCondition.type eq '社招' ? 'class="current"':'' }>社会招聘</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>校园招聘</a> </li> 
			      <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList"  >系统通告</a> </li> 
			      <li><a target="_self" href="${pageContext.request.contextPath}/system/showOurCompany" class="">公司介绍</a> </li> 
			      <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="current">联系我们</a> </li>
		
			     </ul> 
			    </div> 
			   </div> 
			   <!--module:menu end--> 
		   </div> 
		  
		  <!-- 导航栏信息 end -->
 
  <div class="contain joblist clearfix"> 
   <div class="containsidebar"> 
    <div class="zhaopindongtai bodertop nofly minheight"> 
     <!--module:menu begin--> 
     <div class="bs-module"> 
      <div class="menu-secondtemplate "> 
       <div class="parttitleline"></div> 
       <div class="titlelinks"> 
        <ul> 
         <ul class="secondarymenu"> 
          <li class="secondCurrent"><a target="_self" href="contact.html">联系我们</a></li> 
         </ul> 
        </ul> 
       </div> 
      </div> 
     </div> 
     <!--module:menu end--> 
    </div> 
    <div class="zhaopindongtai bodertop"> 
	     <!--module:newslist begin--> 
	     <div class="bs-module"> 
	      <div class="newslist-newsimple "> 
	       <div class="parttitleline"></div> 
	       <div class="parttitle">
	        <span class="dongtaiico"></span>
	        <div class="wordtitle" style="color:black;">
	         系统公告
	        </div>
	       </div> 
	       <a href="${pageContext.request.contextPath}/articles/user/articlesList" class="morelinks">更多&gt;&gt;</a> 
	       <div class="dongtailinks"> 
	        <ul> 
	       
	        <c:forEach items="${returnArticles }" var="article">
	         	<li><a href="${pageContext.request.contextPath}/articles/detail?id=${article.articleid}"  target="_blank">${article.articletitle}</a></li> 
	        </c:forEach>
	        
	        </ul> 
	       </div> 
	      </div> 
	     </div> 
	     <!--module:newslist end--> 
    </div> 
   </div> 
   <div class="zhiweisousuo bodertop selectmod zx_aboutus"> 
    <div class="parttitleline"></div> 
    <div class="parttitle">
     <span class="dongtaiico"></span>
     <div class="wordtitle">
      联系我们
     </div>
    </div> 
    <div class="s_detail"> 
     <div class="about adminarea" id="ctlArticleShow"> 
      <p class="title f_18 f_c m_b10 unreset"><span style="font-size: medium;">联系方式</span></p> 
      <p class="m_b30 unreset"><span style="font-size: medium;"><img src="<%=path %>images/3.jpg" alt="" /></span></p> 
      <br/>
      <p class="m_b10 unreset"><span style="font-size: medium;"><strong>1. 客服电话：</strong>  89704431</span></p>
      <p class="m_b10 unreset"><span style="font-size: medium;"><strong>2. 公司电话：</strong> 69741507</span></p>
      <p class="m_b10 unreset"><span style="font-size: medium;"><strong>3. 公司地址：</strong>北京市昌平区昌盛路12号院乐华仕健康产业园6号楼 <span lang="EN-US">14</span>号楼<span lang="EN-US">415</span></span>&nbsp;</span></p>
      <p class="m_b10 unreset"><span style="font-size: medium;"><strong>4. 官方微博：</strong> 123456@qq.com（新浪微博）</span></p>
      <p class="m_b10 unreset"><span style="font-size: medium;"><strong>5. 官方微信：</strong> CPRC456</span></p>
     </div> 
    </div> 
   </div> 
  </div> 
  
  
   <!-- 静态包含 -->
  <%@include file="../common/footer.jsp"%> 

 </body>
</html>