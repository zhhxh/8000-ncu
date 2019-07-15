<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_flexslider.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuicore.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuiselectmenu.css?v=0.0.0.9" front="css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuitheme.css?v=0.0.0.9" front="css" />

	<link href="${pageContext.request.contextPath}/static/company/css/bootstrap.css" rel="stylesheet">
  <!-- 引入form表单的样式 -->
	<link href="${pageContext.request.contextPath}/static/company/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/company/css/gloab.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/company/css/index.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/static/company/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/register.js"></script>


	<script src="${pageContext.request.contextPath}/static/company/js/distpicker.data.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/distpicker.js"></script>
	<script src="${pageContext.request.contextPath}/static/company/js/main.js"></script>
  <title>企业版公司信息完善页面</title>
</head>
<body>
	<!-- 动态包含头部导航 -->
  	<jsp:include page="../../../company/common/header.jsp" flush="true" />

	<!-- 展示一张图片 -->
    <img style="width:100%;margin:0 auto;height:130px;" src="${pageContext.request.contextPath}/static/company/images/baseMessagetest.png" />

    <!-- 填写公司信息 -->
	<div id="app">

            <div id="step">
                <div class="step_num step_disable">
                	01  完善个人信息
                </div>
                <div class="step_line"></div>
                <div class="step_num step_disable1" >
                    02 确认公司信息
                </div>
            </div>
            <form method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/company/register">
           	<div class="reg-box" id="verifyCheck" style="margin-top:20px;">
            	<div class="part1">

            	   <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司名称：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20" required name="companyname" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司名称不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司名称</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司简称：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20" required name="simplename" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司简称不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司简称</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司logo：</span>
                        <div class="f-fl item-ifo">
                            <input type="file" maxlength="20" required name="myfile" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="选择你的公司LOGO" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>建议使用公司logo</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>行业：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20" required name="industry" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="行业不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司行业</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12" style="overflow: hidden;height:150px;">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>省份：</span>
                        <div class="f-fl item-ifo">
                        	 <div data-toggle="distpicker">
                          	   <div class="form-group">
						          <label class="sr-only" for="province2">Province</label>
						          <select class="form-control" id="province2" name="province" data-province="---- 选择省 ----"></select>
						        </div>
						           <div class="form-group">
						          <label class="sr-only" for="city2">City</label>
						          <select class="form-control" id="city2" name="city" data-city="---- 选择市 ----"></select>
						        </div>
						        <div class="form-group">
						          <label class="sr-only" for="district2">District</label>
						          <select class="form-control" id="district2" name="area" data-district="---- 选择区 ----"></select>
						        </div>

						     </div>
                        </div>
                    </div>

                   <!--   <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>城市：</span>
                        <div class="f-fl item-ifo">
                        	 <div data-toggle="distpicker">
                          	   <div class="form-group">
						          <label class="sr-only" for="city2">City</label>
						          <select class="form-control" id="city2" name="city" data-city="---- 选择市 ----"></select>
						        </div>
						     </div>
                        </div>
                    </div>  -->
                    <!--
                     <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>地区：</span>
                        <div class="f-fl item-ifo">
                        	 <div data-toggle="distpicker">
                          	   <div class="form-group">
						          <label class="sr-only" for="district2">District</label>
						          <select class="form-control" id="district2" name="district" data-district="---- 选择区 ----"></select>
						        </div>
						     </div>
                        </div>
                    </div>  -->

                     <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>具体地址：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20" required name="address" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="具体地址不能为空若无，请填写‘无’" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司具体地址、省份+城市+地区+具体地址</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司网址：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="100" required name="companyurl" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="网址不能为空若无，请填写‘无’" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司网址、若无，请填写“无”</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                     <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>发展阶段：</span>
                        <div class="f-fl item-ifo">
                            <!-- <input type="text" maxlength="20" required name="development" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="发展阶段不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的发展阶段，A轮、B轮、C轮、D轮、发展阶段等等</span></label>
                            <label class="focus valid"></label> -->
                            <select class="form-control" required name="development">
								  <option>未融资</option>
								  <option>天使轮</option>
								  <option>A轮</option>
								  <option>B轮</option>
								  <option>C轮</option>
								  <option>D轮</option>
								  <option>上市公司</option>
								  <option>不需要融资</option>
							</select>
							<label class="focus"><span>填写你的发展阶段，A轮、B轮、C轮、D轮、发展阶段等等</span></label>
                        </div>
                    </div>



                      <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>最少人数：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20" required name="minpeople" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司最少人数不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司最少人数</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                     <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>最多人数：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20" required name="maxpeople" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司最多人数不能为空" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司最多人数</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                     <div class="item col-xs-12" style="height:150px;">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司描述：</span>
                        <div class="f-fl item-ifo">
                           <!--  <input type="text" maxlength="20" required name="description" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司描述" /> <span class="ie8 icon-close close hide"></span> -->
                            <textarea class="form-control" rows="8" name="description"></textarea>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司描述</span></label>
                            <label class="focus valid"></label>

                        </div>
                    </div>


                    <div class="item col-xs-12" style="margin-top:35px;height:150px;" >
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司产品：</span>
                        <div class="f-fl item-ifo">
                           <!--  <input type="text" maxlength="20" required name="description" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司描述" /> <span class="ie8 icon-close close hide"></span> -->
                            <textarea class="form-control" rows="8" name="product"></textarea>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司产品</span></label>
                            <label class="focus valid"></label>

                        </div>
                    </div>


                    <div class="item col-xs-12" style="margin-top:35px;height:150px;">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司简介：</span>
                        <div class="f-fl item-ifo">
                           <!--  <input type="text" maxlength="20" required name="description" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="公司描述" /> <span class="ie8 icon-close close hide"></span> -->
                            <textarea class="form-control" rows="6" cols="20" name="jianjie"></textarea>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>填写你的公司产品</span></label>
                            <label class="focus valid"></label>

                        </div>
                    </div>




                      <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>公司宗旨：</span>
                        <div class="f-fl item-ifo">
                            <input type="text" maxlength="20"  name="remark" class="txt03 f-r3 required" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>如若需要，填写你的备注信息</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>





                	<div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>身份证：</span>
                        <div class="f-fl item-ifo">
                            <input type="file" maxlength="20" required name="myfile1" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="选择你的身份证" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>建议手拿身份证拍照、清晰，需要审核</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>营业执照：</span>
                        <div class="f-fl item-ifo">
                            <input type="file" maxlength="20" required name="myfile2" class="txt03 f-r3 required" data-valid="isNonEmpty" data-error="选择你的营业执照上传" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>建议手机拍营业执照，清晰</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>

              		 <div class="item col-xs-12">
                        <span class="intelligent-label f-fl">&nbsp;</span>
                        <div class="f-fl item-ifo">
                            <input type="submit" value="提交" class="btn btn-blue f-r3" id="btn_part3"/>
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
    		color:#00B38A;

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
