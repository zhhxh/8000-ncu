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
  <title>我的简历</title>
  <!-- 头部展览工具栏的css样式，一般不可以少，头部的菜单栏是需要的  start -->
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
  <!-- 头部展览工具栏的css样式，一般不可以少，头部的菜单栏是需要的  end -->

  <!--左边菜单--右边的画板的样式 start-->
  <link href="<%=path %>css/main.css" rel="stylesheet" type="text/css" />

  <!--左边菜单--右边的画板的样式 end-->

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
 <%--  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/my_themes_default_style2.css?v=0.0.0.9" front="css" /> --%>
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_flexslider.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuicore.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuiselectmenu.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuitheme.css?v=0.0.0.9" front="css" />

  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jquery191.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryflexslidermin.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuicore1.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuiposition.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuiwidget.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuiselectmenu1.js?v=0.0.0.9"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_demo.js?v=0.0.0.9"></script>
  <!--引用静态文件:requirejs-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/require.js"></script>


<!-- 整合bootstrap框架 start -->
  <!--图标样式和布局-->
	<link href="${pageContext.request.contextPath}/static/boostrap/css/page/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/boostrap/css/font-awesome.min.css" rel="stylesheet">

	<!--公共样式-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/basePage/css/demo.css">
    <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/page/bootstrap-paginator.js" type="text/javascript"></script>

    <style>
        #page li{
            cursor:pointer;
        }
    </style>

   <!-- 整合bootstrap框架 end -->

 </head>
<body>
  <!-- 动态包含头部导航 -->
  <jsp:include page="../common/header.jsp" flush="true" />

  <!-- 静态包含 -->
  <%@include file="../common/nav.jsp"%>

  <%--<div class="bs_deliver"> --%>
   <div class="dl_content dl_gray_bg" style="background-color: #ffffff;">
    <!---->
    <!--申请职位 s-->
    <!--申请职位 e-->
    <!--我的简历 s-->
    <!--简历内容 s-->

    <div class="dl_bigwrap dl_heightagain clearfix dl_grey_bc">
     <div class="leftmenu" style="width: 16.5%;height: 425px;border: 2px solid #096aa1;">
      <div class="dl_greyline_bg">
       <span class="dl_menutit">个人中心</span>
      </div>

      <!-- 静态包含 -->

       <ul class="dl_menulist clearfix" id="myMenu">
       <li> <a href="${pageContext.request.contextPath}/user/userInfo" class="accountSettings">账户设置</a> </li>
               <li class="selected profilechoose" style="padding-bottom: 32px; padding-top: 9px;background-color: #096aa1;"> <span class="dl_menuchose">我的申请</span> </li>
        <li> <a href="${pageContext.request.contextPath}/user/memberResume" class="apply">我的简历</a> </li>

          <li> <a href="${pageContext.request.contextPath}/news/user/newslist" class="shoucang">消息中心</a> </li>

   		 <style>
       	#myMenu li span{
       		font-size:18px;
       	}
       	#myMenu li a{
       		font-size:18px;
       	}
       </style>

       </ul>

     </div>

     <div class="rightcontent dl_height1 dl_new_error_wrap" style="width:79%;border: 2px solid #096aa1;">


 	 <div class="dl_basicinfo">
	       <!-- 基本信息小标题 start  -->
	      <!--  <div class="dl_greyline_bg">
	      	1111

	       </div>  -->
	       <!-- 基本信息小标题 start  -->
	        <div class="wrapper wrapper-content  animated fadeInRight">

		      	<div>

				  <!-- Nav tabs style="background-color:#F2F2F2;margin-left:-50px;margin-top:-25px;"-->
				  <ul class="nav nav-tabs" role="tablist" style="background-color:#F2F2F2;margin-left:-10px;">
				    <li role="presentation" ${requestScope.activeCode eq 100 ? 'class="active"' :'' } ><a href="${pageContext.request.contextPath}/applay/applayRecord?state=100" >全部</a></li>
				    <li role="presentation" ${requestScope.activeCode eq 2 ? 'class="active"' :'' }><a href="${pageContext.request.contextPath}/applay/applayRecord?state=2">被查看</a></li>
				    <li role="presentation" ${requestScope.activeCode eq 3 ? 'class="active"' :'' }><a href="${pageContext.request.contextPath}/applay/applayRecord?state=3">邀请面试</a></li>
				    <li role="presentation" ${requestScope.activeCode eq 4 ? 'class="active"' :'' }><a href="${pageContext.request.contextPath}/applay/applayRecord?state=4">不合适</a></li>
				  </ul>
				  <style>
				  	ul li a{
				  		font-size:16px;
				  	}

				  </style>

				  <!-- Tab panes -->
				  <div class="tab-content">
				    <div role="tabpanel" class="tab-pane active" id="home">
				    	<br/>

				    	<!-- 展示全部的记录 -->
				    	<table class="listtable">
						     <tbody>
						     <c:forEach items="${requestScope.applayRecord }" var="applay">
						         <tr>
						          <td class="tableleft joblsttitle">
						          		<!-- 卡片 start -->
										<div class="container">
											<div class="row" >
												<div class="col-md-7 col-sm-7 myCard" style="margin-left:-15px;">
													<div class="serviceBox" style="padding-bottom:15px;">

														<div class="service-Content" style="overflow: hidden;">
															<div id="leftJob">
																<span class="title"><a href="${pageContext.request.contextPath}/applay/detail?id=${applay.mid }" style="font-size:17px;color:#41D7F7;" target="_blank">${applay.jobname }</a></span>
																<span class="money">( ${applay.minwage}-${applay.maxwage} )&nbsp; &nbsp;&nbsp; &nbsp;</span>
																<button type="button" class="btn  btn-default btn-xs" data-toggle="tooltip" data-placement="right" title="Hi，对我发布的职位感兴趣吗？用小程序客户端可以直接跟我聊天.'招聘小程序'" style="color:#FA6041">联系我</button>
																<br/>

																<span class="required">
																	<a href="${pageContext.request.contextPath}/company/companyDetail?id=${applay.cid}" target="_blank" style="font-size:16px;">${applay.companyname}</a>

																&nbsp;&nbsp;&nbsp;&nbsp;</span>
																<br/>
																<div class="thirdline">
																	<span class="thirdSpan">使用简历：<span style="color:black;font-size:14px;">原件简历</span></span>
																	<span class="thirdtime">${applay.applaytime }被查看</span>
																</div>

															</div>

														</div>
													</div>
												</div>
											</div>
										</div>
									<!-- 卡片  end-->
						          </td>
						         </tr>
						        </c:forEach>

						         <!-- 分页的插件加载 -->
						         <tr>
						         	<td>
						         		<!-- 分页列表began -->
								        <div class="container">
										        <div>
										            <ul id="page" style="display:block;"></ul>
										        </div>
								      	</div>
								      	<script type="text/javascript">
									        $(function () {
									           var currentPage = 1;
									           var totalPages = 100;

									           $("#page").bootstrapPaginator({
									               bootstrapMajorVersion:3, //对应的bootstrap版本
									               currentPage: ${requestScope.pageAble.currentPage}, //当前页数
									               numberOfPages: ${requestScope.pageAble.numberOfPages}, //每次显示页数
									               totalPages:${requestScope.pageAble.totalPages}, //总页数
									               shouldShowPage:true,//是否显示该按钮
									               useBootstrapTooltip:true,
									               //点击事件
									               onPageClicked: function (event, originalEvent, type, page) {
									                   //alert(page);
									            	 //Ajax提交
									            	   window.location.href = '${pageContext.request.contextPath}/applay/applayRecord?state=${requestScope.activeCode}&page1='+page;
									               }
									           });

									        });
								    </script>

						         	</td>


						         </tr>



					           <style>
							  		#leftJob{
							  			width: 100%;
							  			float:left;



							  		}

									.money{
										color:#FA6041;
										font-size:17px;
										margin-top:10px;
									}

									.required{
										color:#999999;
										font-size:16px;
										padding-top:12px;
										margin-top:10px;
									}
									.thirdSpan{
										color:#999999;
										font-size:14px;
										padding-top:12px;
										margin-top:20px;
									}
									.thirdtime{
										float:right;
										margin-right:20px;
										font-size:15px;
										color:black;
									}

						       		.myCard{

						       			background-color:white;
						       		}

						       		.thirdline{
						       			margin-top:10px;
						       		}
							</style>

							   <script type="text/javascript">
									$(function () {
									 	 $('[data-toggle="tooltip"]').tooltip()
									})

								</script>
         				 </tbody>
         				</table>

				    </div>







				  </div>

				</div>

		    </div>


	       <!-- 核心基础内容 start -->



	       <!-- 核心基础内容 end -->

     </div>

   	</div>
    <!--简历内容 e-->
   </div>
   <div class="dl_footer">
    <!-- 静态包含 -->

   </div>
  </div>




   <!-- 弹窗插件 start-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
   <!-- 弹窗插件 end -->



 </body>
</html>
