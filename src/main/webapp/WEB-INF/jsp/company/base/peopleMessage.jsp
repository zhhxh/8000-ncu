<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_flexslider.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuicore.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuiselectmenu.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuitheme.css?v=0.0.0.9" front="css" />

  <!-- 引入form表单的样式 -->
	<link href="${pageContext.request.contextPath}/static/company/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/company/css/gloab.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/company/css/index.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/static/company/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/register.js"></script>
  <title>企业版个人信息完善页面</title>
</head>

<body>
 	<!-- 动态包含头部导航 -->
  	<jsp:include page="../../../company/common/header.jsp" flush="true" />

	<!-- 展示一张图片 -->
    <img style="width:100%;margin:0 auto;height:130px;" src="${pageContext.request.contextPath}/static/company/images/baseMessagetest.png" />

    <!-- 填写个人信息 -->

	<div id="app">

            <div id="step">
                <div class="step_num step_disable">
                	01  完善个人信息
                </div>
                <div class="step_line"></div>
                <div class="step_num " >
                    02 确认公司信息
                </div>
            </div>
            <form method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/companyUser/register">
           	<div class="reg-box" id="verifyCheck" style="margin-top:20px;">
            	<div class="part1">
            	   <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>头像：</span>
                        <div class="f-fl item-ifo">
                            <input type="file" maxlength="20" required name="myfile" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="头像不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>建议使用招聘者真是头像提升真实性，专业性</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>
                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>姓名：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" name="name" required maxlength="20" class="txt03 f-r3 required" tabindex="1" data-valid="isNonEmpty||between:3-20||isUname" data-error="用户名不能为空||用户名长度3-20位||只能输入中文、字母、数字、下划线，且以中文或字母开头" />                            <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>3-20位，中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>称呼：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" name="simplename" required maxlength="20" class="txt03 f-r3 required" tabindex="1" data-valid="isNonEmpty||between:3-20||isUname" data-error="称呼不能为空||称呼长度3-20位||只能输入中文、字母、数字、下划线，且以中文或字母开头" />                            <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>3-20位，中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>职位：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" name="position" required maxlength="20" class="txt03 f-r3 required" tabindex="1" data-valid="isNonEmpty||isUname" data-error="职位不能为空||只能输入中文、字母、数字、下划线，且以中文或字母开头" />                            <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>部门：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" name="department" required maxlength="20" class="txt03 f-r3 required" tabindex="1" data-valid="isNonEmpty||isUname" data-error="部门不能为空||只能输入中文、字母、数字、下划线，且以中文或字母开头" />                            <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>邮箱：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" name="email" maxlength="20" required class="txt03 f-r3 required" tabindex="1" data-valid="isNonEmpty" data-error="邮箱不能为空" />                            <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span color="color">接收简历使用，必须填写。中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl">&nbsp;</span>
                        <div class="f-fl item-ifo">
                            <input type="submit" value="确认" class="btn btn-blue f-r3" id="btn_part3"/>
                        </div>
                    </div>




                 </div>
              </div>
              </form>
    </div>
    <script type="text/javascript">


    </script>
    <style>
    	#app{width:50%;margin:0 auto;overflow:hidden;margin-top:50px;}
    	#step{
    		overflow: hidden;
    		margin-bottom:50px;
    	}
    	.step_num{

    		float:left;
    		font-size:18px;
    		text-align:center;
    		width:20%;


    	}
    	.step_line{
    		border:1px solid #DDDDDD;
    		float:left;
    		width:8%;
    		margin-top:15px;
    	}
    	.step_disable{
    		color:#00B38A;
    		width:40%;
    		padding-left:20%;
    	}
    </style>
</body>
</html>
