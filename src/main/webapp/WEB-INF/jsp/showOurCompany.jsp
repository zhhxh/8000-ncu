<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
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
        <title>公司介绍</title> 
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
			    <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>职位搜索</a> </li>
	      <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>实习专区</a> </li>
			      <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList"  >最新资讯</a> </li>
			      <li><a target="_self" href="${pageContext.request.contextPath}/system/showOurCompany" class="current">求职技巧</a> </li>
			      <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="">联系我们</a> </li>
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
                                        <li class="secondCurrent"><a target="_self" href="about.html">公司介绍</a></li> 
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
                        关于我们
                    </div>
                </div> 
                <div class="s_detail"> 
                    <div class="about adminarea" id="ctlArticleShow"> 
                        <p class="unreset"><span style="font-size: medium;">如果你现在激情满满，准备大干一场</span></p> 
                        <p class="unreset"><span style="font-size: medium;">不想这激情被漫无边际的摸索和无限的等待所磨灭</span></p> 
                        <p class="unreset"><span style="font-size: medium;">如果你只想专注奖金和发展</span></p> 
                        <p class="unreset"><span style="font-size: medium;">不想在充满政治斗争的环境里选边站队</span></p> 
                        <p class="unreset"><span style="font-size: medium;">如果你想努力前行、获得认可</span></p> 
                        <p class="unreset"><span style="font-size: medium;">不想自己的努力被忽视</span></p> 
                        <p class="unreset"><span style="font-size: medium;">那么石职院是你的绝佳平台</span></p> 
                        <p class="unreset"><span style="font-size: medium;">我们是充满朝气的八五九零的团队</span></p> 
                        <p class="unreset"><span style="font-size: medium;">我们是包容开放、能力晋升的团队</span></p> 
                        <p class="unreset"><span style="font-size: medium;">无论你是谁，无论你来自哪里，在这里都有公平的机会</span></p> 
                        <p class="unreset"><span style="font-size: medium;">因为我们是石家庄职业技术学院</span></p> 
                        <p class="unreset"><span style="font-size: medium;">&nbsp;</span></p> 
                        <p class="unreset"><span style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;。石家庄职业技术学院创建于1984年，初名石家庄大学。
1997年6月，学校更名为“石家庄职业技术学院”。 [3] 
2005年，学校通过教育部高职高专人才培养水平评估，获得优秀。
2007年，学校被确定为河北省重点建设的示范性高职院校。同年3月，被河北省教育厅授予河北省高校毕业生就业指导与服务工作先进集体。 [4] 
2008年3月，学校获2007年度全市宣传工作先进单位。
2010年3月，学校被河北省教育厅授予河北省普通高校毕业生离校就业工作先进集体。 [4] 
2013年，学校获“省会平安高校建设先进单位”和“全国职业院校魅力校园”称号。 [2] 
2015年10月，学校获“2015年全国先进社科组织”称号。 [5]  同年10月，学校被石家庄市政府授予“石家庄市社区教育指导中心”、“石家庄市社区教育学院”。 [6] 
2016年，石家庄职业技术学院、119中学合并，合并后，119中学更名为石家庄职业技术学院附属学校，119中学原址将建设石家庄职业技术学院北校区。 [7] 
2016年8月，入选第二批国家现代学徒制试点单位。</span></p> 
                        <p class="unreset"><span style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;截至2015年12月，石家庄职业技术学院设有8系3部3学院，共开设有六大类55个专业。 。</span></p>
                        <p class="unreset"><span style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;石家庄职业技术学院作希望和你一起朝着光辉灿烂的未来前进！</span></p> 
                    </div> 
                </div> 
            </div> 
        </div> 
        
        <!-- 静态包含 -->
  		<%@include file="../common/footer.jsp"%>
        
    </body>
</html>