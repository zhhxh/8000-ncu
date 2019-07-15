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
  <title>账户设置</title>
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
 </head>
<body>

  <!-- 动态包含头部导航 -->
  <jsp:include page="../../company/common/header.jsp" flush="true" />

  <!-- 展示一张图片 -->
  <div class="headerimg">
  <img style="width: 1422px;height: 130px;" src="${pageContext.request.contextPath}/static/company/images/baseMessagetest.png" />
  </div>

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
       <li class="selected settingchoose"> <span class="dl_menuchose">HR信息</span> </li>
       <li> <a href="${pageContext.request.contextPath}/company/companyInfo" class="apply">公司信息</a> </li>
       <c:if test="${company.isallow eq 2}">
          <li> <a href="${pageContext.request.contextPath}/company/releaseResume" class="profile">发布招聘</a> </li>
     	  <li> <a href="${pageContext.request.contextPath}/myrecruitment/recruitmentlist" class="shoucang">招聘列表</a> </li>
      	  <li> <a href="${pageContext.request.contextPath}/applay/applaylist" class="cominfo">申请中心</a> </li>
      	  <li> <a href="${pageContext.request.contextPath}/news/newslist" class="messagecenter">消息中心</a> </li>
       </c:if>
       <c:if test="${company.isallow eq 1}">
          <li> <a href="${pageContext.request.contextPath}/company/jindu" class="profile">审核进度</a> </li>

       </c:if>


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
	      <h3 class="dl_bigtit"><span class="dl_postit">HR信息</span></h3>
	      <div class="dl_importprofile">
              <button class="edit" onclick="toEdit()" style="background-color: #ffffff;width: 60px;
              border-radius: 5px;height: 25px;margin-top: -3px;color: #74a7d0;">编辑</button>
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
        		//name/simplename/position/department/email
           		//saveButton/cancleButton
           		//显示保存，取消按钮
                $("#saveButton").show();
           		$("#cancleButton").show();
           		$("#picture").show();
           		//移除不可编辑属性
           		$("#name").removeAttr("readonly");
           		$("#simplename").removeAttr("readonly");
           		$("#position").removeAttr("readonly");
           		$("#department").removeAttr("readonly");
           		$("#email").removeAttr("readonly");


           		//添加一个border属性
           		$('#name').css('border','1px solid #ADADAD');
           		$('#simplename').css('border','1px solid #ADADAD');
           		$('#position').css('border','1px solid #ADADAD');
           		$('#department').css('border','1px solid #ADADAD');
           		$('#email').css('border','1px solid #ADADAD');

              //添加一个border-radius属性
              $('#name').css('border-radius','10px');
              $('#simplename').css('border-radius','10px');
              $('#position').css('border-radius','10px');
              $('#department').css('border-radius','10px');
              $('#email').css('border-radius','10px');

           	 }

        	function toCancle(){
        		//name/simplename/position/department/email
           		//saveButton/cancleButton
           		//显示保存，取消按钮
                $("#saveButton").hide();
           		$("#cancleButton").hide();
          		$("#picture").hide();

           	    //添加一个readonly属性
           		$('#name').attr("readonly","readonly");
           		$('#simplename').attr("readonly","readonly");
           		$('#position').attr("readonly","readonly");
           		$('#department').attr("readonly","readonly");
           		$('#email').attr("readonly","readonly");
           		//移除border属性
           		$("#name").css({border:"none"});
         		$("#simplename").css({border:"none"});
         		$("#position").css({border:"none"});
         		$("#department").css({border:"none"});
         		$("#email").css({border:"none"});


         		//复原原来的值
         		$("#name").val("${requestScope.companyUser.name}");
         		$("#simplename").val("${requestScope.companyUser.simplename}");
         		$("#position").val("${requestScope.companyUser.position}");
         		$("#department").val("${requestScope.companyUser.department}");
         		$("#email").val("${requestScope.companyUser.email}");

           	 }

        	</script>
       		<div class="jianliUl">
       			<form method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/companyUser/edit">
	   				<input type="hidden" name="id" id="id" value="${requestScope.companyUser.id}">
                    <%--TODO:修改头像功能未完善--%>
                    <div class="applyline">
                    <span class="key">头像：</span><img style="width:50px;height:50px;padding-right:30%;border-radius: 10px;" src="http://localhost:8080/${requestScope.companyUser.image}">
					<input type="file" id="picture" value="3" readonly="true" name="picture" style="display: none;">
                    </div>
                        <%--<span class="edit" onclick="toEdit()">编辑</span>--%>

                    <div class="applyline">
	   				    <span class="key">姓名：</span><input type="text" name="name" required id="name" value="${requestScope.companyUser.name}" readonly="true">
                    </div>
                    <div class="applyline">
                        <span class="key">称呼：</span><input type="text" id="simplename" name="simplename" value="${requestScope.companyUser.simplename}" readonly="true">
                    </div>
                    <div class="applyline">
                        <span class="key">职位：</span><input type="text" id="position"  name="position" value="${requestScope.companyUser.position}" readonly="true" >
                    </div>
                    <div class="applyline">
                        <span class="key">部门：</span><input type="text" id="department" name="department" value="${requestScope.companyUser.department}" readonly="true" >
                    </div>
                    <div class="applyline">
                        <span class="key">接收简历邮箱：</span><input type="text" id="email" name="email" value="${requestScope.companyUser.email}" readonly="true" >
                    </div>
	   				<div class="saveButton">
				        <!-- <button id="saveButton" class="rkmd-btn btn-lightBlue" onclick="toSave()">保存</button> -->
				   		<input type="submit" id="saveButton" value="修改" class="rkmd-btn btn-lightBlue">
				    </div>
				    </form>
				   <div class="cancleButton">
				    	<button id="cancleButton" class="rkmd-btn btn-lightBlue" onclick="toCancle()">取消</button>
				    </div>
				    <div style="height:250px;"></div>


   			</div>
   			<br/>

        	<style type="text/css">
			      .btn-lightBlue{
			      	background-color: #74a7d0;
			      	border-radius: 1px;
			      	box-shadow: 1px 1px 1px #888888;
			      	color:white;
			      	font-size:16px;
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

                  .applyline{
                      padding-bottom: 20px;
                      padding-top: 20px;
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
