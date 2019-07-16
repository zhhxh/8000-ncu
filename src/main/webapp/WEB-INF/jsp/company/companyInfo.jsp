<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.*,java.text.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%SimpleDateFormat template
= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String now= template.format(request.getAttribute("registerTime"));%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>公司基本信息</title>
   <!-- 可能会重复引入，引入了index的样式 start -->
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
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

 <!-- 可能会重复引入，引入了index的样式 end -->


  <!--引用静态文件:requirejs-->
  <script type="text/javascript" src="<%=path %>js/require.js"></script>
  <!--引用静态文件:skin_default-->
  <link href="<%=path %>css/common.css" rel="stylesheet" type="text/css" />
  <link href="<%=path %>css/templateform.css" rel="stylesheet" type="text/css" />
  <link href="<%=path %>css/controls.css" rel="stylesheet" type="text/css" />
  <link href="<%=path %>css/default.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="<%=path %>js/base_new.js"></script>
  <script type="text/javascript" src="<%=path %>js/widgetnew.js?v=3"></script>
  <script type="text/javascript" src="<%=path %>js/common.js"></script>
  <script type="text/javascript" src="<%=path %>js/bsdialog.js"></script>
  <script type="text/javascript" src="<%=path %>js/common.js"></script>
  <script type="text/javascript" src="<%=path %>js/controls.js"></script>
  <script type="text/javascript" src="<%=path %>js/underscore.js"></script>
  <script type="text/javascript" src="<%=path %>js/school-select-v2.js?v=6"></script>
  <link href="<%=path %>css/school-select-v2.css" rel="stylesheet" type="text/css" />
  <!--引用静态文件:skin_new_css-->
  <link href="<%=path %>css/main.css" rel="stylesheet" type="text/css" />
  <!--引用静态文件:new_dialog_js-->
  <script type="text/javascript" src="<%=path %>js/dialog_js.js"></script>
  <!--产品头部CSS和脚本-->
  <script src="<%=path %>js/WdatePicker.js"></script>

  <!--引用静态文件:front_css-->
  <link href="<%=path %>css/front.css" rel="stylesheet" type="text/css" />
  <style type="text/css">
          .checkbox_list {float: left;width: 450px;}
          .form_container ul li span.start_date {width: 80px;}
          .form_container ul li span.end_date {width: 70px;}
          .dl_logo img {
              width: auto!important;
              height: 40px!important;
              margin: 16px 0 0 30px!important;
            }
    </style>

  	 <!-- 引入弹窗插件 start -->
  	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css" />

  <!-- 引入弹窗插件 start -->

  <!-- 引入 三级联动插件-->

  	<script src="${pageContext.request.contextPath}/static/company/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/distpicker.data.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/distpicker.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/main.js"></script>
 </head>
<body>

<!-- 动态包含头部导航 -->
  <jsp:include page="../../company/common/header.jsp" flush="true" />

  <!-- 展示一张图片 -->
	<img style="width:100%;margin:0 auto;height:130px;" src="${pageContext.request.contextPath}/static/company/images/baseMessagetest.png" />


<div class="dl_content dl_gray_bg">
    <!---->
    <!--申请职位 s-->
    <!--申请职位 e-->
    <!--我的简历 s-->
    <!--简历内容 s-->
    <style type="text/css">
       .area-title {
	        height:20px;
	        border-bottom:solid 1px #D3DAE2
        }
        .area-title .label {
	        display:inline-block;
	        border-bottom:solid 1px #3887BC;
	        padding:0 3px 0 3px
        }
        .account-settings .area {
	        padding:10px 10px 10px 10px
        }
        .base-info,.we-chat-bind {
	        margin:10px 20px 10px 30px;
	        padding:10px;
	        position:relative
        }
        .release-relation-weChat {
	        display:inline-block;
	        float:right
        }
        .text {
	        padding:10px 0 5px 10px
        }
        .relation-user {
	        color:#879900;
	        display:inline-block;
	        margin-left:10px
        }
        .td1 {
	        width:15%;
	        text-align:right;
	        padding-right:20px
        }
        .td2 {
	        width:59%
        }
        .td3 {
	        width:25%;
	        text-align:right
        }
        .btn {
	        color:#06C;
	        margin-left:15px;
	        cursor:pointer;
            z-index:99;
        }
        .base-info .btn {
            float:right;
        }
        .user-name-label {
            margin-right:20px
        }
        input.user-name {
	        width:260px;
            height:20px;
            line-height:20px;
        }
        table.user-info-table td {
	        padding-top:5px;
	        padding-bottom:5px
        }
        input.confirm-password,input.new-password,input.original-password {
	         width:200px;
            height:20px;
            line-height:20px;
        }
        .err-msg {
	        color:#F17F7F;
	        margin-left:10px;
	        position:absolute;
        }
        .err-msg.err-message-name {
	        white-space:nowrap;
	        position:absolute
        }
        .password-pattern-note {
	        color:#AAA;
        }
        .is-not-null {
	        color:#F17F7F;
	        width:10px;
	        display:inline-flex;
        }
        .we-chart-img {
	        height:200px
        }
        .dl_dialog1 {
            -moz-border-radius: none;
            -webkit-border-radius: none;
            -o-border-radius: none;
            -moz-box-shadow: none;
            -webkit-box-shadow: none;
            -o-box-shadow: none;
        }
    </style>
    <style type="text/css">
        .pop-container{box-shadow:4px 3px 10px rgba(0,0,0,.3),-4px -3px 10px rgba(0,0,0,.3);-moz-box-shadow:4px 3px 10px rgba(0,0,0,.3),-4px -3px 10px rgba(0,0,0,.3);-webkit-box-shadow:4px 3px 10px rgba(0,0,0,.3),-4px -3px 10px rgba(0,0,0,.3);-o-box-shadow:4px 3px 10px rgba(0,0,0,.3),-4px -3px 10px rgba(0,0,0,.3);background-color:#fff;-webkit-border-radius:8px}.pop-header{background-color:#4290C1;color:#fff;border-top-left-radius:8px;border-top-right-radius:8px;padding:7px}.pop-content{height:70px;border-bottom:solid 1px #ccc;text-align:center;vertical-align:middle}.pop-text{margin-top:33px}.pop-bottom{text-align:right;padding:7px 10px 7px 10px}.pop-cancel,.pop-submit{padding:5px 13px 5px 13px;background-color:#CCC;margin-left:10px;margin-right:12px;cursor:pointer}.simplemodal-overlay{background-color:#000}
    </style>

    <div class="dl_bigwrap dl_gray_bg clearfix">
     <div class="leftmenu">
      <div class="dl_greyline_bg">
       <span class="dl_menutit">账户设置</span>
      </div>
      <ul class="dl_menulist clearfix" id="myMenu">


       <li> <a href="${pageContext.request.contextPath}/companyUser/index" class="profile">HR信息</a> </li>
       <li class="selected settingchoose"> <span class="dl_menuchose">公司信息</span> </li>

       <c:if test="${company.isallow eq 2}">
          <li> <a href="${pageContext.request.contextPath}/company/releaseResume" class="profile">发布招聘</a> </li>
     	  <li> <a href="${pageContext.request.contextPath}/myrecruitment/recruitmentlist" class="shoucang">招聘列表</a> </li>
      	  <li> <a href="${pageContext.request.contextPath}/applay/applaylist" class="cominfo">申请中心</a> </li>
      	  <li> <a href="${pageContext.request.contextPath}/news/newslist" class="messagecenter">消息中心</a> </li>
       </c:if>
       <c:if test="${company.isallow eq 1}">
          <li> <a href="${pageContext.request.contextPath}/company/jindu" class="profile">审核进度</a> </li>

       </c:if>
       <!--<li
         >

       <a href="/Portal/Account/EditPwd" class="changepwd">修改密码</a>

    </li-->
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

     <!-- 头部信息 start -->
	 <div class="rightcontent dl_height1 dl_new_error_wrap">
	      <h3 class="dl_bigtit"><span class="dl_postit">公司信息</span></h3>
	      <div class="dl_importprofile">
			  <button class="edit" onclick="toEdit()" style="background-color: #74a7d0;width: 60px;
              border-radius: 5px;height: 25px;color: white;">编辑</button>
	       <%--<a class="import dl_import" href="javascript:void(0)"></a>--%>
	       <a id="previewBtn" class="look" target="_self" href="#" style=""></a>
	       <span id="previewBtnDisable" class="look" style="color:#666;display:none;"></span>
	      </div>
	      <style type="text/css">
		    *html .dl_myleftform .form_container {
		        width: 490px;
		        overflow: hidden;
		    }

	        *html .dl_myleftform .form_container .form_part .columntwo ul {
	            width: 360px;
	            overflow: hidden;
	        }

	        *html .dl_myleftform .form_container ul li {
	            width: 360px;
	            overflow: hidden;
	        }
	            /* .dl_myleftform .form_container li label{width: 100px}*/
	            *html .dl_myleftform .form_container ul li span.preview_text {
	                width: 220px;
	                overflow: hidden;
	            }

	    .form_container li textarea {
	        border: 1px solid #c1d5df;
	        float: left;
	        height: 100px;
	        margin-right: 5px;
	        padding: 3px;
	        width: 300px;
	    }
	</style>
	  <div class="dl_basicinfo">
	       <div class="dl_greyline_bg">
	        <span class="dl_menutit ">基本信息</span>
	       </div>

      <!-- 头部信息 end -->


        	<!-- 填写个人的账户信息 start -->
        	<script type="text/javascript">
        	function toEdit(){
        		//普通字段：companyname,simplename,industry,minpeople，maxpeople，companyurl,remark、address
        		//下拉字段：development
           		//saveButton/cancleButton
           		//显示保存，取消按钮
                $("#saveButton").show();
           		$("#cancleButton").show();
           		$("#picture").show();
           		//移除不可编辑属性
           		//$("#companyname").removeAttr("readonly");
           		$("#simplename").removeAttr("readonly");
           		$("#industry").removeAttr("readonly");
           		$("#minpeople").removeAttr("readonly");
           		$("#maxpeople").removeAttr("readonly");
           		$("#companyurl").removeAttr("readonly");
           		$("#remark").removeAttr("readonly");
           		$("#address").removeAttr("readonly");
           		$("#description").removeAttr("readonly");
           		$("#product").removeAttr("readonly");
           		$("#jianjie").removeAttr("readonly");

           		$("#development").removeAttr("disabled");


           		//添加一个border属性
           		//$('#companyname').css('border','1px solid #ADADAD');
           		$('#simplename').css('border','1px solid #ADADAD');
           		$('#industry').css('border','1px solid #ADADAD');
           		$('#maxpeople').css('border','1px solid #ADADAD');
           		$('#minpeople').css('border','1px solid #ADADAD');
           		$('#companyurl').css('border','1px solid #ADADAD');
           		$('#remark').css('border','1px solid #ADADAD');
           		$('#address').css('border','1px solid #ADADAD');
           	 }

        	function toCancle(){
        		//普通字段：companyname,simplename,industry,minpeople，maxpeople，companyurl,remark、address
           		//下拉字段：development
        		//saveButton/cancleButton
           		//显示保存，取消按钮
                $("#saveButton").hide();
           		$("#cancleButton").hide();
          		$("#picture").hide();

           	    //添加一个readonly属性
           		//$('#companyname').attr("readonly","readonly");
           		$('#simplename').attr("readonly","readonly");
           		$('#industry').attr("readonly","readonly");
           		$('#minpeople').attr("readonly","readonly");
           		$('#maxpeople').attr("readonly","readonly");
           		$('#companyurl').attr("readonly","readonly");
           		$('#remark').attr("readonly","readonly");
           		$('#address').attr("readonly","readonly");
           		$('#description').attr("readonly","readonly");
           		$('#product').attr("readonly","readonly");
           		$('#jianjie').attr("readonly","readonly");

           	    //下拉字段：development
           		$('#development').attr("disabled","disabled");

           		//移除border属性
           		//$("#companyname").css({border:"none"});
         		$("#simplename").css({border:"none"});
         		$("#industry").css({border:"none"});
         		$("#minpeople").css({border:"none"});
         		$("#maxpeople").css({border:"none"});
         		$("#companyurl").css({border:"none"});
         		$("#remark").css({border:"none"});
         		$("#address").css({border:"none"});


         		//复原原来的值
         		//$("#companyname").val("${requestScope.company.companyname}");
         		$("#simplename").val("${requestScope.company.simplename}");
         		$("#industry").val("${requestScope.company.industry}");
         		$("#minpeople").val("${requestScope.company.minpeople}");
         		$("#maxpeople").val("${requestScope.company.maxpeople}");
         		$("#companyurl").val("${requestScope.company.companyurl}");
         		$("#remark").val("${requestScope.company.remark}");
         		$("#address").val("${requestScope.company.address}");
         		$("#development").val("${requestScope.company.development}");
         		$("#description").val("${requestScope.company.description}");
         		$("#product").val("${requestScope.company.product}");
         		$("#jianjie").val("${requestScope.company.jianjie}");
           	 }

        	/*  头像：logo,
        	           普通字段：companyname,simplename,industry,address、minpeople，maxpeople，companyurl,remark
  				下拉选矿：province,city,area,,development、
  				文本域：,description,product/jianjie

  				不可变的元素：idcardimage/companyimage/isallow/releasednumber/registertime/money
  			*/

        	</script>
       		<div class="jianliUl">

       			<form method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/company/edit">
	   				<input type="hidden" name="id" id="id" value="${requestScope.company.id}">
                    <%--TODO:修改头像功能未完善--%>
                    <div class="applyline">
                    <span class="key">公司logo：</span><img style="width:50px;height:50px;padding-right:30%;border-radius: 10px;" src="${pageContext.request.contextPath}/pic?img=${requestScope.company.logo}">
					<input type="file" id="picture" value="3" readonly="true" name="picture">
                    </div>
					<!--  普通字段：companyname,simplename,industry,minpeople，maxpeople，companyurl,remark、address-->
					<div class="applyline">
						<span class="key">公司名称：</span><input type="text" name="companyname" required id="companyname" value="${requestScope.company.companyname}" readonly="true">
					</div>
					<div class="applyline">
						<span class="key">公司简称：</span><input type="text" id="simplename" name="simplename" value="${requestScope.company.simplename}" readonly="true">
	   				<!-- 	下拉选矿：province,city,area,,development、 -->
					</div>
					<div class="applyline">
						<span class="key">发展阶段：</span>
	   					<%-- <input type="text" id="development" name="development" value="${requestScope.company.development}" readonly="true"> --%>
	   					 <select class="form-control" required name="development" id="development" disabled="disabled" >
								 <%-- ${gender eq 0?"男":"女"} --%>
								  <option ${requestScope.company.development eq '未融资'?"selected=\"selected\"":""} value="未融资">未融资</option>
								  <option ${requestScope.company.development eq '天使轮'?"selected=\"selected\"":""} value="天使轮">天使轮</option>
								  <option ${requestScope.company.development eq 'A轮'?"selected=\"selected\"":""} value="A轮">A轮</option>
								  <option ${requestScope.company.development eq 'B轮'?"selected=\"selected\"":""} value="B轮">B轮</option>
								  <option ${requestScope.company.development eq 'C轮'?"selected=\"selected\"":""} value="C轮">C轮</option>
								  <option ${requestScope.company.development eq 'D轮'?"selected=\"selected\"":""} value="D轮">D轮</option>
								  <option ${requestScope.company.development eq '上市公司'?"selected=\"selected\"":""} value="上市公司">上市公司</option>
								  <option ${requestScope.company.development eq '不需要融资'?"selected=\"selected\"":""} value="不需要融资">不需要融资</option>
						</select>
						<style>
							#development{
								display:block;
								width:40%;
						        font-size:16px;
						        line-height:30px;
						        font-size:14px;
						        padding-left:10px;
						        margin-bottom:8px;
						        margin-top:8px;
							}


						</style>
					</div>
					<div class="applyline">
						<span class="key">行业：</span><input type="text" id="industry"  name="industry" value="${requestScope.company.industry}" readonly="true" >
					</div>
					<div class="applyline">
						<span class="key">具体地址：</span><input type="text" id="address" name="address" value="${requestScope.company.address}" readonly="true" >
					</div>
					<div class="applyline">
						<span class="key">最少人数：</span><input type="text" name="minpeople" required id="minpeople" value="${requestScope.company.minpeople}" readonly="true">
					</div>
					<div class="applyline">
						<span class="key">最大人数：</span><input type="text" id="maxpeople" name="maxpeople" value="${requestScope.company.maxpeople}" readonly="true">
					</div>
					<div class="applyline">
						<span class="key">公司网址：</span><input type="text" id="companyurl"  name="companyurl" value="${requestScope.company.companyurl}" readonly="true" >
					</div>
					<div class="applyline">
						<span class="key">公司介绍：</span>
	   					<%-- <input type="text" id="description" name="description" value="${requestScope.company.description}" readonly="true" > --%>
	   					<textarea rows="8" cols="20" id="description" style="margin-top:10px;" class="mytextarea" readonly="true" name="description" >
${requestScope.company.description}
					    </textarea>
					</div>
					<div class="applyline">
					<span class="key">公司产品：</span>
	   					<%-- <input type="text" id="description" name="description" value="${requestScope.company.description}" readonly="true" > --%>
	   					<textarea rows="4" cols="20" id="product" style="margin-top:10px;"  name="product" class="mytextarea" readonly="true" >
${requestScope.company.product}
					    </textarea>
					</div>
					<div class="applyline">
					<span class="key">公司简介：</span>
	   					<%-- <input type="text" id="description" name="description" value="${requestScope.company.description}" readonly="true" > --%>
	   					<textarea rows="5" cols="20" class="mytextarea" style="margin-top:10px;"   id="jianjie" name="jianjie" readonly="true" >
${requestScope.company.jianjie}
					    </textarea>



	   					<style>
	   						.mytextarea{
	   							width:60%;
						        font-size:16px;
						        line-height:30px;
						        font-size:14px;
						        text-align: left;
	   						}

	   					</style>
					</div>
					<div class="applyline">
						<span class="key">公司宗旨：</span><input type="text" id="remark" name="remark" value="${requestScope.company.remark}" readonly="true" >
					</div>
	   				<div class="saveButton">
				        <!-- <button id="saveButton" class="rkmd-btn btn-lightBlue" onclick="toSave()">保存</button> -->
				   		<input type="submit" id="saveButton" value="修改" class="rkmd-btn btn-lightBlue">
				    </div>
				    </form>
				   <div class="cancleButton">
				    	<button id="cancleButton" class="rkmd-btn btn-lightBlue" onclick="toCancle()">取消</button>
				    </div>
				    <%--<div style="height:50px;"></div>--%>


   			</div>
   			<br/>
        	<script type="text/javascript">
        	function toEdit(){
        		//普通字段：companyname,simplename,industry,minpeople，maxpeople，companyurl,remark、address
        		//下拉字段：development
           		//saveButton/cancleButton
           		//显示保存，取消按钮
                $("#saveButton").show();
           		$("#cancleButton").show();
           		$("#picture").show();
           		//移除不可编辑属性
           		//$("#companyname").removeAttr("readonly");
           		$("#simplename").removeAttr("readonly");
           		$("#industry").removeAttr("readonly");
           		$("#minpeople").removeAttr("readonly");
           		$("#maxpeople").removeAttr("readonly");
           		$("#companyurl").removeAttr("readonly");
           		$("#remark").removeAttr("readonly");
           		$("#address").removeAttr("readonly");
           		$("#description").removeAttr("readonly");
           		$("#product").removeAttr("readonly");
           		$("#jianjie").removeAttr("readonly");

           		$("#development").removeAttr("disabled");


           		//添加一个border属性
           		//$('#companyname').css('border','1px solid #ADADAD');
           		$('#simplename').css('border','1px solid #ADADAD');
           		$('#industry').css('border','1px solid #ADADAD');
           		$('#maxpeople').css('border','1px solid #ADADAD');
           		$('#minpeople').css('border','1px solid #ADADAD');
           		$('#companyurl').css('border','1px solid #ADADAD');
           		$('#remark').css('border','1px solid #ADADAD');
           		$('#address').css('border','1px solid #ADADAD');

              //添加一个border-radius属性
              $('#simplename').css('border-radius','10px');
              $('#industry').css('border-radius','10px');
              $('#maxpeople').css('border-radius','10px');
              $('#minpeople').css('border-radius','10px');
              $('#companyurl').css('border-radius','10px');
              $('#remark').css('border-radius','10px');
              $('#address').css('border-radius','10px');
           	 }

        	function toCancle(){
        		//普通字段：companyname,simplename,industry,minpeople，maxpeople，companyurl,remark、address
           		//下拉字段：development
        		//saveButton/cancleButton
           		//显示保存，取消按钮
                $("#saveButton").hide();
           		$("#cancleButton").hide();
          		$("#picture").hide();

           	    //添加一个readonly属性
           		//$('#companyname').attr("readonly","readonly");
           		$('#simplename').attr("readonly","readonly");
           		$('#industry').attr("readonly","readonly");
           		$('#minpeople').attr("readonly","readonly");
           		$('#maxpeople').attr("readonly","readonly");
           		$('#companyurl').attr("readonly","readonly");
           		$('#remark').attr("readonly","readonly");
           		$('#address').attr("readonly","readonly");
           		$('#description').attr("readonly","readonly");
           		$('#product').attr("readonly","readonly");
           		$('#jianjie').attr("readonly","readonly");

           	    //下拉字段：development
           		$('#development').attr("disabled","disabled");

           		//移除border属性
           		//$("#companyname").css({border:"none"});
         		$("#simplename").css({border:"none"});
         		$("#industry").css({border:"none"});
         		$("#minpeople").css({border:"none"});
         		$("#maxpeople").css({border:"none"});
         		$("#companyurl").css({border:"none"});
         		$("#remark").css({border:"none"});
         		$("#address").css({border:"none"});


         		//复原原来的值
         		//$("#companyname").val("${requestScope.company.companyname}");
         		$("#simplename").val("${requestScope.company.simplename}");
         		$("#industry").val("${requestScope.company.industry}");
         		$("#minpeople").val("${requestScope.company.minpeople}");
         		$("#maxpeople").val("${requestScope.company.maxpeople}");
         		$("#companyurl").val("${requestScope.company.companyurl}");
         		$("#remark").val("${requestScope.company.remark}");
         		$("#address").val("${requestScope.company.address}");
         		$("#development").val("${requestScope.company.development}");
         		$("#description").val("${requestScope.company.description}");
         		$("#product").val("${requestScope.company.product}");
         		$("#jianjie").val("${requestScope.company.jianjie}");
           	 }

        	/*  头像：logo,
        	           普通字段：companyname,simplename,industry,address、minpeople，maxpeople，companyurl,remark
  				下拉选矿：province,city,area,,development、
  				文本域：,description,product/jianjie

  				不可变的元素：idcardimage/companyimage/isallow/releasednumber/registertime/money
  			*/

        	</script>
        	<style type="text/css">
			      .btn-lightBlue{
			      	background-color: #74a7d0;
			      	border-radius: 1px;
			      	box-shadow: 1px 1px 1px #888888;
			      	color:white;
			      	font-size:16px;
			      }
				  .applyline{
					  padding-bottom: 20px;
					  padding-top: 20px;
				  }
			      .edit{
			      	color:#64A8DC;
			      	font-size:12px;
			      	margin-left:25px;

			      }
			      .jianliUl{
			      	padding-top:30px;
			      	font-size:19px;
			      }

			      .key{
			     		display:block;
			     		float:left;
				      	width:150px;
				      	line-height:30px;
				      	letter-spacing:4px;
				      	font-size:16px;
			      		padding-left:35px;

			      }

			      .jianliUl  input{
			      	width:60%;
			        font-size:16px;
			        line-height:30px;
			        font-size:14px;
			        padding-left:10px;

			      }
			      .myselect{
			    	  width:200px;
			      }
			      .myselect option{
			    	 width:150px;
					height:300px;
			      }

			      .saveButton{
			     	 float:left;
			     	 padding-left:35px;
			     	 margin-top:30px;

			      }

			      .saveButton button{
			     	 width:100px;
			     	 height:25px;
			     	 line-height:25px;
			     	 display:none;
			      }

			       .saveButton input{
			     	 width:100px;
			     	 height:25px;
			     	 line-height:25px;
			     	 display:none;
			      }

			      .cancleButton{
			     	 float:left;
			     	 padding-left:35px;
			     	 margin-top:30px;

			      }

			      .cancleButton button{
			     	 width:100px;
			     	 height:25px;
			     	 line-height:25px;

			     	 display:none;
			      }
			      #picture{
			      	display:none;
			      	flaot:left;
			      	width:20%;
			      }

			    *html .dl_myleftform .form_container {
			        width: 490px;
			        overflow: hidden;
			    }

			      *html .dl_myleftform .form_container .form_part .columntwo ul {
			          width: 360px;
			          overflow: hidden;
			      }

			      *html .dl_myleftform .form_container ul li {
			          width: 360px;
			          overflow: hidden;
			      }
			          /* .dl_myleftform .form_container li label{width: 100px}*/
			          *html .dl_myleftform .form_container ul li span.preview_text {
			              width: 220px;
			              overflow: hidden;
			          }

			    .form_container li textarea {
			        border: 1px solid #c1d5df;
			        float: left;
			        height: 100px;
			        margin-right: 5px;
			        padding: 3px;
			        width: 300px;
			    }
			</style>

        	<!-- 填写个人的账户信息 end -->

			<!-- 不可更改信息 -->
			<div class="dl_basicinfo">
		       <div class="dl_greyline_bg">
		        <span class="dl_menutit ">不可修改信息</span>
		       </div>
		       <div class="jianliUl">
					<!-- 不可变的元素：idcardimage/companyimage/isallow/releasednumber/registertime/money -->
	   				<!--  <span class="key">HR身份证：</span><img style="width:150px;height:150px;padding-right:30%;border-radius: 10px;" src="http://localhost:8080/pic/${requestScope.company.idcardimage}">-->
					<!--  <span class="key">公司营业执照：</span><img style="width:150px;height:150px;padding-right:30%;border-radius: 10px;" src="http://localhost:8080/pic/${requestScope.company.companyimage}">-->


					<!--  普通字段：isallow/releasednumber/registertime/money-->
	   				<span class="key">是否审核：</span><input type="text" style="color:red;" required  value="${requestScope.company.isallow eq 2 ? '是':'否'}" readonly="true">
	   				<span class="key">可发布条数：</span><input type="text" style="color:red;"  required  value="${requestScope.company.releasednumber}" readonly="true">
	   				<span class="key">注册时间：</span><input type="text"  style="color:red;" required  value="<%=now %>" readonly="true">
	   				<span class="key">账户金额：</span><input type="text"  style="color:red;" required  value="${requestScope.company.money}" readonly="true">

	   			</div>
		    </div>

		    <!-- 不可更改信息 -->



		</div>



       </div>



      </div>



     </div>

    </div>

    <!--简历内容 e-->
    <div style="height:10px;"></div>
   </div>
   <div class="dl_footer">

   </div>
  </div>
  <!-- 弹窗插件 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
 </body>
</html>
