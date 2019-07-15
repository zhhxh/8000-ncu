<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
<html>
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
  <!--左边菜单--右边的画板的样式 start-->

  <!-- windows start -->
    <%--background-image: url("${pageContext.request.contextPath}/static/window/images/ico.png"); background-repeat: no-repeat;--%>
  <style type="text/css">
	.XYTipsWindow .boxLoading { position: absolute; display: block; width: 90px; height: 30px; line-height: 30px; margin-left: -45px; margin-top: -15px; left: 50%; top: 50%; color: #f00; }
	.XYTipsWindow .boxLoading { width:28px; margin-left: -14px; background:url("images/loading.gif") no-repeat; text-indent: -999em; text-align: center; }
	.XYTipsWindow .boxTitle, .XYTipsWindow .boxTitle span, .XYTipsWindow .boxTitle span.hover, .XYTipsWindow .loadinglayer, .XYTipsWindow .tipslayer, .XYTipsWindow .arrowLeft, .XYTipsWindow .colseBtn, .XYTipsWindow .boxError em, .XYTipsWindow .dialogBtn, .XYTipsWindow .dialogBtn.hover { background-color: #74a7d0;}
	.XYTipsWindow .boxTitle { position: relative; border: 1px solid #A6C9E1; border-bottom: none; background-position: 0 0; background-repeat: repeat-x; height: 30px; line-height: 30px; }
	.XYTipsWindow .boxTitle h3 { float: left; font-weight: normal; color: #666; font-size: 14px; margin: 0; text-indent: 10px; }
	.XYTipsWindow .boxTitle span { position: absolute; width: 10px; background-position: -80px -40px; text-indent: -10em; right: 10px; top: 10px; height: 16px; overflow: hidden; cursor: pointer; }
	.XYTipsWindow .boxTitle span.hover { background-position: -90px -40px; }
	.XYTipsWindow .loadinglayer { line-height: 40px; background-position: 0 -100px!important; }
	.XYTipsWindow .tipslayer { line-height: 20px; text-align: left; }
	.XYTipsWindow .arrowLeft { position: absolute; width: 8px; height: 16px; background-position: -20px -170px; text-indent: -9999em; z-index: 20591; overflow: hidden; }
	.XYTipsWindow .colseBtn { position: absolute; top: 5px; right: 5px; width: 8px; height: 8px; background-position: -55px -170px; text-indent: -9999em; cursor: pointer; z-index: 20591; overflow: hidden; }
	.XYTipsWindow .boxError { position: absolute; left: 50%; top: 50%; margin-left: -60px; margin-top: -15px; width: 120px; height: 30px; line-height: 30px; color: #f00; }
	.XYTipsWindow .boxError em { float: left; width:30px; height: 30px; background-position: -35px -140px; }
	.XYTipsWindow .dialogBtn { margin: 5px 5px 0 0; width:80px; height:35px; background-position: 0 -30px; border:none; color:#333; }
	.XYTipsWindow .dialogBtn.hover { background-position: 0 -65px; }
	.XYTipsWindow.shadow { box-shadow:2px 2px 5px #C0BBB5; -moz-box-shadow: 2px 2px 5px #C0BBB5; -webkit-box-shadow:2px 2px 5px #C0BBB5; }
	</style>
	 <script src="${pageContext.request.contextPath}/static/boostrap/js/jquery.min.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery-1.4.4.min.js"></script>
	 <script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery.XYTipsWindow.2.8.js"></script>

	 <script type="text/javascript">
	 $(document).ready(function() {
		var aa = 1;

		$("#releaseResume").click(function(){
			$.XYTipsWindow({
				___title:"填写信息",
				___content:"iframe:${pageContext.request.contextPath}/company/writeResume",
				___width:"460",
				___height:"550",
				___showbg:true,
				___drag:"___boxTitle",
				___closeID:"xioaozheng"

			});




		});




	 })

	 </script>
  <!-- windows end -->



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
       <li> <a href="${pageContext.request.contextPath}/company/companyInfo" class="apply">公司信息</a> </li>
        <li class="selected settingchoose"> <span class="dl_menuchose">发布招聘</span> </li>
       <li> <a href="${pageContext.request.contextPath}/myrecruitment/recruitmentlist" class="shoucang">招聘列表</a> </li>
        <li> <a href="${pageContext.request.contextPath}/applay/applaylist" class="cominfo">申请中心</a> </li>
       <li> <a href="${pageContext.request.contextPath}/news/newslist" class="messagecenter">消息中心</a> </li>
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
	      <h3 class="dl_bigtit"><span class="dl_postit">发布招聘</span></h3>
	      <div class="dl_importprofile">
	       <a class="import dl_import" href="javascript:void(0)"></a>
	       <a id="previewBtn" class="look" target="_self" href="#" style=""></a>
	       <span id="previewBtnDisable" class="look" style="color:#666;display:none;"></span>
	      </div>

	  <div class="dl_basicinfo">
	       <div class="dl_greyline_bg">
	        <span class="dl_menutit ">基本信息</span>
	       </div>

      <!-- 头部信息 end -->

        	<!-- 填写个人的账户信息 start -->
        	<!-- <button type="button" style="background-color: #5097CB;border:1px solid white">发布简历!</button>
       		 -->


		   <button id="releaseResume">发布简历</button>

   			<style>
   				#releaseResume{
                    background-color: #74a7d0;
                    margin-top: 50px;
                    margin-left: 70px;
                    color: white;
                    width: 80%;
                    border-radius: 10px;
                    font-weight: bold;
                    box-shadow: 3px 3px 2px #c4c4c4;
                    font-size: 40px;
                    line-height: 160px;

   				}

   			</style>

        	<script type="text/javascript">



        	</script>


        	<!-- 填写个人的账户信息 end -->





      </div>

     </div>

    </div>

    <!--简历内容 e-->
    <div style="height:10px;"></div>
   </div>
   <div class="dl_footer">
       <span> &copy;2018&nbsp;&nbsp;zkhl.huilan.com&nbsp;&nbsp;北京市海淀区东北旺西路8号9号楼二区305 &nbsp;联系电话&nbsp;010-82826258</span>
   </div>
  </div>
  <!-- 弹窗插件 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
 </body>
</html>
