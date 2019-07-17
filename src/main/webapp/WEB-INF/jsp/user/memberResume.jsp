 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title>我的简历</title>
  <!-- windows start -->
  <style type="text/css">
	.XYTipsWindow .boxLoading { position: absolute; display: block; width: 90px; height: 30px; line-height: 30px; margin-left: -45px; margin-top: -15px; left: 50%; top: 50%; color: #f00; }
	.XYTipsWindow .boxLoading { width:28px; margin-left: -14px; background:url("images/loading.gif") no-repeat; text-indent: -999em; text-align: center; }
	.XYTipsWindow .boxTitle, .XYTipsWindow .boxTitle span, .XYTipsWindow .boxTitle span.hover, .XYTipsWindow .loadinglayer, .XYTipsWindow .tipslayer, .XYTipsWindow .arrowLeft, .XYTipsWindow .colseBtn, .XYTipsWindow .boxError em, .XYTipsWindow .dialogBtn, .XYTipsWindow .dialogBtn.hover { background-image: url("${pageContext.request.contextPath}/static/window/images/ico.png"); background-repeat: no-repeat; }
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
        var $144 = $;
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery.XYTipsWindow.3.0.xiaozheng2.js"></script>




  <!-- windows end -->



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

  <!-- 引入弹窗插件 start -->
  	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css" />

  <!-- 引入弹窗插件 start -->


 </head>
<body>
  <!-- 动态包含头部导航 -->
  <jsp:include page="../../common/header.jsp" flush="true" />

  <!-- 静态包含 -->
  <div class="nav">
      <!--module:menu begin-->
      <div class="bs-module">
          <div class="menu-simple ">
              <ul id="portalmenu" style="">

                  <li><a target="_self" href="${pageContext.request.contextPath}/system/index"  >返回首页</a> </li>
                  <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>职位搜索</a> </li>
                  <!-- <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=社招" ${requestScope.moreCondition.type eq '社招' ? 'class="current"':'' }>社会招聘</a> </li>  -->
                  <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>实习专区</a> </li>
                  <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList" class="">最新资讯</a> </li>
                  <li><a target="_self" href="${pageContext.request.contextPath}/skill/showOurCompany">求职技巧</a> </li>
                  <li><a target="_self" href="${pageContext.request.contextPath}/user/userInfo" class="current">个人中心</a> </li>
              </ul>
          </div>
      </div>
      <!--module:menu end-->
  </div>

  <%--<div class="bs_deliver">--%>
   <div class="dl_content dl_gray_bg" style="background-color: #ffffff;">
    <!---->
    <!--申请职位 s-->
    <!--申请职位 e-->
    <!--我的简历 s-->
    <!--简历内容 s-->
    <script type="text/javascript">

        $(document).ready(function () {

            var promptview = new UserPrompt({
                targetSelector: 'a.accountsettings'
                , promptText: '在账户设置中，可以改用户名和密码啦！'
            });
            promptview.show();
        })
    </script>
    <div class="dl_bigwrap dl_heightagain clearfix dl_grey_bc">
     <div class="leftmenu" style="border: 2px solid #096aa1;">
      <div class="dl_greyline_bg">
       <span class="dl_menutit">个人中心</span>
      </div>

      <!-- 静态包含 -->

       <ul class="dl_menulist clearfix" id="myMenu">
        <li> <a href="${pageContext.request.contextPath}/user/userInfo" class="accountSettings">账户设置</a> </li>
        <li> <a href="${pageContext.request.contextPath}/applay/applayRecord?state=100" class="apply">我的申请</a> </li>
        <li class="selected profilechoose" style="padding-top: 9px;background-color: #096aa1;"> <span class="dl_menuchose">我的简历</span> </li>
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

     <div class="rightcontent dl_height1 dl_new_error_wrap" style="border: 2px solid #096aa1;">
      <h3 class="dl_bigtit" style="background-color: #096aa1;"><span class="dl_postit">我的简历</span></h3>
      <div class="dl_importprofile">
          <button class="edit" onclick="toEdit()" style="background-color: #ffffff;width: 60px;
              border-radius: 5px;height: 21px;margin-top: -3px;color: #74a7d0;margin-right: 40px;">编辑</button>
<%--       <a look class="import dl_import" href="javascript:void(0)"></a>--%>
       <button class="edit" onclick="javascript:testword();" style="background-color: #ffffff;width: 60px;
              border-radius: 5px;height: 21px;color: #74a7d0;margin-right: 40px;margin-right: 7px;margin-left: -29px;">打印</button>
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
         <%--导出为word--%>
  <div class="dl_basicinfo">
       <div class="dl_greyline_bg">
        <span class="dl_menutit ">个人信息*（以下信息都必填）</span>
        <script type="text/javascript">
       	 function toEdit(){
       		//显示保存，取消按钮
            $("#saveButton").show();
       		$("#cancleButton").show();
       		//移除不可编辑属性
       		$("#show_name").removeAttr("readonly");
       		$("#show_email").removeAttr("readonly");
       		$("#show_phone").removeAttr("readonly");
       		$("#show_age").removeAttr("readonly");
       		$("#show_sex").removeAttr("readonly");
       		$("#show_address").removeAttr("readonly");
       		$("#show_school").removeAttr("readonly");
       		$("#show_professional").removeAttr("readonly");
       		$("#show_xueLi").removeAttr("readonly");
       		$("#show_description").removeAttr("readonly");

       		//添加一个border属性
       		$('#show_name').css('border','1px solid #ADADAD');
       		$('#show_email').css('border','1px solid #ADADAD');
       		$('#show_phone').css('border','1px solid #ADADAD');
       		$('#show_age').css('border','1px solid #ADADAD');
       		$('#show_sex').css('border','1px solid #ADADAD');
       		$('#show_school').css('border','1px solid #ADADAD');
       		$('#show_professional').css('border','1px solid #ADADAD');

       		$('#show_address').css('border','1px solid #ADADAD');
       		$('#show_xueLi').css('border','1px solid #ADADAD');
       		$('#show_description').css('border','1px solid #ADADAD');



       	 }


       	function toCancle(){

       		//显示保存，取消按钮
            $("#saveButton").hide();
       		$("#cancleButton").hide();

       	    //添加一个readonly属性
       		$('#show_name').attr("readonly","readonly");
       		$('#show_email').attr("readonly","readonly");
       		$('#show_phone').attr("readonly","readonly");
       		$('#show_age').attr("readonly","readonly");
       		$('#show_sex').attr("readonly","readonly");
       		$('#show_school').attr("readonly","readonly");
       		$('#show_professional').attr("readonly","readonly");
       		$('#show_address').attr("readonly","readonly");
       		$('#show_xueLi').attr("readonly","readonly");
       		$('#show_description').attr("readonly","readonly");
       		//移除border属性

       		$("#show_name").css({border:"none"});
     		$("#show_email").css({border:"none"});
     		$("#show_phone").css({border:"none"});
     		$("#show_age").css({border:"none"});
     		$("#show_school").css({border:"none"});
     		$("#show_professional").css({border:"none"});
     		$("#show_sex").css({border:"none"});
     		$("#show_address").css({border:"none"});
     		$("#show_xueLi").css({border:"none"});
     		$("#show_description").css({border:"none"});

     		//复原原来的值
     		$("#show_name").val("${requestScope.userResume.name}");
     		$("#show_email").val("${requestScope.userResume.email}");
     		$("#show_phone").val("${requestScope.userResume.phone}");
     		$("#show_age").val("${requestScope.userResume.age}");
     		$("#show_school").val("${requestScope.userResume.school}");
     		$("#show_professional").val("${requestScope.userResume.professional}");
     		$("#show_sex").val("${requestScope.userResume.sex}");
     		$("#show_address").val("${requestScope.userResume.address}");
     		$("#show_xueLi").val("${requestScope.userResume.xueli}");
     		$("#show_description").val("${requestScope.userResume.description}");

       	 }

       	function toSave(){
       		//验证用户名是否为空
       		var name = $("#show_name").val();
       		if(!isNull(name)){
       			easyDialog.open({
					container : {
						content : "用户名不能为空"
					},
					autoClose : 1000
				});
       			return;
       		}
       		//验证邮箱是否合法
       		var email = $("#show_email").val();
       		if(!isNull(email)){
       			easyDialog.open({
					container : {
						content : "邮箱不能为空"
					},
					autoClose : 1500
				});
       			return;
       		}

       		if(!checkEmail()){
       			easyDialog.open({
					container : {
						content : "邮箱格式不对"
					},
					autoClose : 1000
				});
       			return;
       		}

       		//验证手机号码是否合法
       		var phone = $("#show_phone").val();
       		if(!isNull(phone)){
       			easyDialog.open({
					container : {
						content : "手机不能不能为空"
					},
					autoClose : 1000
				});
       			return;
       		}

       		if(!isPoneAvailable(phone)){
       			easyDialog.open({
					container : {
						content : "手机不合法，长度11位"
					},
					autoClose : 1000
				});
       			return;
       		}

       		//验证年龄是否合法
       		var age = $("#show_age").val();
       		if(!isNull(age)){
       			easyDialog.open({
					container : {
						content : "年龄必须填写"
					},
					autoClose : 1000
				});
       			return;
       		}

       		if(age < 0 || age > 120){
       			easyDialog.open({
					container : {
						content : "年龄不合法"
					},
					autoClose : 1000
				});
       			return;
       		}

       		//验证性别是否合法
     		var sex = $("#show_sex").val();
       		if(!isNull(sex)){
       			easyDialog.open({
					container : {
						content : "性别必须填写"
					},
					autoClose : 1000
				});
       			return;
       		}


       		//验证住址是否合法
     		var address = $("#show_address").val();
       		if(!isNull(address)){
       			easyDialog.open({
					container : {
						content : "住址必须填写"
					},
					autoClose : 1000
				});
       			return;
       		}

       		//验证学历是否合法
     		var xueLi = $("#show_xueLi").val();
       		if(!isNull(xueLi)){
       			easyDialog.open({
					container : {
						content : "学历必须填写"
					},
					autoClose : 1000
				});
       			return;
       		}

       		//验证学校是否合法
       		var school = $("#show_school").val();
       		if(!isNull(school)){
       			easyDialog.open({
					container : {
						content : "学校必须填写"
					},
					autoClose : 1000
				});
       			return;
       		}

       		//验证专业是否合法
     		var professional = $("#show_professional").val();
       		if(!isNull(professional)){
       			easyDialog.open({
					container : {
						content : "专业必须填写"
					},
					autoClose : 1000
				});
       			return;
       		}

       		var description = $("#show_description").val();
       		var id =  $("#id").val();

       		//alert("执行保存")
       		$.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/userResume/saveBaseMessage',
		    	data: {
		    			name:name,
		    			email:email,
		    			phone:phone,
		    			age:age,
		    			sex:sex,
		    			address:address,
		    			xueli:xueLi,
		    			school:school,
		    			professional:professional,
		    			description:description,
		    			id:id

		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					if("-1" == data.code){
						easyDialog.open({
							container : {
								content : data.msg
							},
							autoClose : 1500
						});
					}else if("1" == data.code){
						//表示注册成功，调到登录页面
						window.location.href = '${pageContext.request.contextPath}/user/memberResume';
					}

				}
			});






       	}

       	//验证是否为空
       	function isNull(str){
       		if(str==''){
       			return false;
       		}else{
       			return true;
       		}
       	}



        //邮箱格式校验
       	function checkEmail() {
       		var show_email = $("#show_email").val();

       		if(show_email!=null){
       			return(new RegExp(/^(?:[a-zA-Z0-9]+[_\-\+\.]?)*[a-zA-Z0-9]+@(?:([a-zA-Z0-9]+[_\-]?)*[a-zA-Z0-9]+\.)+([a-zA-Z]{2,})+$/).test(show_email));
       		}
       	}

        //手机号码验证
        function isPoneAvailable(phone) {
          var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
          if (!myreg.test(phone)) {
              return false;
          } else {
              return true;
          }
        }


        </script>
       </div>
   			<div class="jianliUl">
   				<input type="hidden" name="id" id="id" value="${requestScope.userResume.id}">
                <div class="applyline">
                <span class="key">姓名：</span><input type="text" id="show_name" value="${requestScope.userResume.name}" readonly="true">
<%--                    <span class="edit" onclick="toEdit()">编辑</span>--%>
                </div>
                <div class="applyline">
                    <span class="key">邮箱：</span><input type="text" id="show_email" value="${requestScope.userResume.email}" readonly="true">
                </div>
                <div class="applyline">
                    <span class="key">手机号：</span><input type="text" id="show_phone" value="${requestScope.userResume.phone}" readonly="true">
                </div>
                <div class="applyline">
                    <span class="key">年龄：</span><input type="text" id="show_age" value="${requestScope.userResume.age}" readonly="true" >
                </div>
                <div class="applyline">
                    <span class="key">性别：</span><input type="text" id="show_sex" value="${requestScope.userResume.sex}" readonly="true" >
                </div>
                <div class="applyline">
                <span class="key">现居住地：</span><input type="text" id="show_address" value="${requestScope.userResume.address}" readonly="true" >
                </div>
                <div class="applyline">
                <span class="key">最高学历：</span><input type="text" id="show_xueLi" value="${requestScope.userResume.xueli}" readonly="true">
                </div>
                <span class="key">学校：</span><input type="text" id="show_school" value="${requestScope.userResume.school}" readonly="true">
                <div class="applyline">
                <span class="key">专业：</span><input type="text" id="show_professional" value="${requestScope.userResume.professional}" readonly="true">
                </div>
                <div class="applyline">
                <span class="key">自我评价：</span><input type="text" id="show_description" style="" value="${requestScope.userResume.description}" readonly="true" >
                </div>
   				<div></div>
   				<div class="saveButton">
			        <button id="saveButton" class="rkmd-btn btn-lightBlue" onclick="toSave()" style="background-color: #096aa1;">保存</button>
			    </div>
			    <div class="cancleButton">
			    	<button id="cancleButton" class="rkmd-btn btn-lightBlue" onclick="toCancle()" style="background-color: #096aa1;">取消</button>
			    </div>
   			</div>
   			<br/>
      </div>
      <style type="text/css">
      .btn-lightBlue{
      	background-color: #03A9F4;
      	border-radius: 1px;
      	box-shadow: 1px 1px 1px #888888;
      	color:white;
      	font-size:16px;
      }

      .applyline {
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
	<!-- 求职意向 stary -->
	<div class="dl_basicinfo">
       <div class="dl_greyline_bg">
        <span class="dl_menutit ">求职意向</span>
           <button class="edit" onclick="toEditIntention()" style="
                   background-color: #096aa1;
                   width: 60px;
                   border-radius: 5px;
                   height: 21px;
                   margin-bottom: 3px;
                   color: #ffffff;
                   margin-left: 81%;
           ">编辑</button>
       </div>
       <script type="text/javascript">

       function toEditIntention(){
      		//显示保存，取消按钮
            $("#intentionSaveButton").show();
      		$("#intentionCancleButton").show();
      		//移除不可编辑属性
      		$("#intention_name").removeAttr("readonly");
      		$("#intention_money").removeAttr("readonly");
      		$("#intention_low_money").removeAttr("readonly");
      		$("#intention_high_money").removeAttr("readonly");


      		//添加一个border属性
      		$('#intention_name').css('border','1px solid #ADADAD');
      		$('#intention_money').css('border','1px solid #ADADAD');
      		$('#intention_low_money').css('border','1px solid #ADADAD');
      		$('#intention_high_money').css('border','1px solid #ADADAD');

      	 }

 			function toCancleIntention(){

       		//显示保存，取消按钮
            $("#intentionSaveButton").hide();
       		$("#intentionCancleButton").hide();

       	    //添加一个readonly属性
       		$('#intention_name').attr("readonly","readonly");
       		$('#intention_money').attr("readonly","readonly");
       		$('#intention_low_money').attr("readonly","readonly");
       		$('#intention_high_money').attr("readonly","readonly");

       		//移除border属性

       		$("#intention_name").css({border:"none"});
     		$("#intention_money").css({border:"none"});
     		$("#intention_low_money").css({border:"none"});
     		$("#intention_high_money").css({border:"none"});

     		//恢复到原来的值

     		$("#intention_name").val("${requestScope.userResume.jobname}");
     		$("#intention_money").val("${requestScope.userResume.nowmoney}");
     		$("#intention_low_money").val("${requestScope.userResume.lowmoney}");
     		$("#intention_high_money").val("${requestScope.userResume.highmoney}");


       	 }

 			function toSaveIntention(){
 				var jobname = $("#intention_name").val();
 				var nowmoney = $("#intention_money").val();
 				var lowmoney = $("#intention_low_money").val();
 				var highmoney = $("#intention_high_money").val();
 				if(!isNull(jobname)){
 	       			easyDialog.open({
 						container : {
 							content : "职位必须填写"
 						},
 						autoClose : 1000
 					});
 	       			return;
 	       		}
 				//判断nowMone是否为空
 				if(!isMoneyAvailable(nowmoney)){
 					easyDialog.open({
						container : {
							content : "当前月薪输入不合法"
						},
						autoClose : 1500
					});
 					return;
 				}
 				//判断lowmoney是否为空
 				if(!isMoneyAvailable(lowmoney)){
 					easyDialog.open({
						container : {
							content : "'最低期望薪资'输入不合法"
						},
						autoClose : 1500
					});
 					return;
 				}
 				//判断highmoney是否为空
 				if(!isMoneyAvailable(highmoney)){
 					easyDialog.open({
						container : {
							content : "'最高期望薪资'输入不合法"
						},
						autoClose : 1500
					});

 					return;
 				}

 				if(highmoney - lowmoney < 0){
 					easyDialog.open({
						container : {
							content : "最高期望薪资不能小于最低期望薪资"
						},
						autoClose : 1500
					});
 					return;
 				}

 				var id =  $("#id").val();
 				//alert(id);
 				//return;
 				$.ajax({
 					type: "POST",
 					url: '${pageContext.request.contextPath}/userResume/saveIntention',
 			    	data: {
 			    		jobname:jobname,
 			    		nowmoney:nowmoney,
 			    		lowmoney:lowmoney,
 			    		highmoney:highmoney,
 			    		id:id

 			    	},
 					dataType:'json',
 					cache: false,
 					success: function(data){
 						if("-1" == data.code){
 							easyDialog.open({
 								container : {
 									content : data.msg
 								},
 								autoClose : 1500
 							});
 						}else if("1" == data.code){
 							//表示注册成功，调到登录页面
 							window.location.href = '${pageContext.request.contextPath}/user/memberResume';
 						}

 					}
 				});







 			}

 			  //手机号码验证
 	        function isMoneyAvailable(phone) {
 	          var myreg=/^([1-9][\d]{0,7}|0)(\.[\d]{1,2})?$/;
 	          if (!myreg.test(phone)) {
 	              return false;
 	          } else {
 	              return true;
 	          }
 	        }
       </script>
        <style type="text/css">
        </style>
     	<div class="jianliUl">
                <div class="applyline">
   				    <span class="key">求职工作：</span><input type="text" id="intention_name" value="${requestScope.userResume.jobname}" readonly="true">
<%--            <span class="edit" onclick="toEditIntention()">编辑</span></li>--%>
                </div>
            <div class="applyline">
                    <span class="key">现月薪：</span><input type="text" id="intention_money" value="${requestScope.userResume.nowmoney}" readonly="true"></li>
            </div>
            <div class="applyline">
                    <span class="key">最低薪资：</span><input type="text" id="intention_low_money" value="${requestScope.userResume.lowmoney}" readonly="true">
            </div>
            <div class="applyline">
                    <span class="key">最高薪资：</span><input type="text" id="intention_high_money" value="${requestScope.userResume.highmoney}" readonly="true" >
            </div>
   				<div class="saveButton">
			        <button id="intentionSaveButton" class="rkmd-btn btn-lightBlue" onclick="toSaveIntention()" style="background-color: rgb(9, 106, 161);">保存</button>
			    </div>
			    <div class="cancleButton">
			    	<button id="intentionCancleButton" class="rkmd-btn btn-lightBlue" onclick="toCancleIntention()" style="background-color: rgb(9, 106, 161);">取消</button>
			    </div>
   		 </div>
   		<br/>
      </div>
      <!-- 求职意向 end -->


	  <!-- 求职意向 stary -->
	<div class="dl_basicinfo">
       <div class="dl_greyline_bg">
        <span class="dl_menutit ">工作经验</span>
        <span class="dl_menutit " style="float:right;color:#096aa1;font-size:15px;" onclick="test()">添加工作经验</span>
      	<script type="text/javascript">
      		function test(){

      		    //alert(id);
            	$144.XYTipsWindow({
    				___title:"填写信息",
    				___content:"iframe:${pageContext.request.contextPath}/workexperience/toWrite",
    				___width:"700",
    				___height:"550",
    				___showbg:true,
    				___drag:"___boxTitle",
    				___closeID:"xioaozheng"

    			});
      		}
      	</script>
       </div>
       <script type="text/javascript">


       </script>
        <style type="text/css">
        </style>
        <c:forEach items="${requestScope.workexperienceLists }" var="workexperience">
     	<div class="jianliUl">
                    <button class="edit" onclick="update(${workexperience.id})"  style="background-color: #096aa1;width: 60px;
              border-radius: 5px;height: 25px;margin-top: -3px;color: #ffffff;margin-left: 509px;">修改</button>
                    <button class="edit" href="${pageContext.request.contextPath}/workexperience/delete?id=${workexperience.id}" style="background-color: #096aa1;width: 60px;
              border-radius: 5px;height: 25px;margin-top: -3px;color: #ffffff;"  onclick="if(confirm('确认要删除该工作经历吗？')==false) return false;">删除</button>
   				<div class="myline">
   					<span class="companyname" >公司名称：</span><span class="mydata" style="color:#00B38A;">${workexperience.companyname }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

   			    </div>
   			    <div class="myline">
   					<span class="companyname">部门名称：</span><span class="mydata" style="color:#00B38A;">${workexperience.department }</span>
   			    </div>
   			    <div class="myline">
   					<span class="companyname">职位名称：</span><span class="mydata" style="color:#00B38A;">${workexperience.position }</span>
   			    </div>
   			    <div class="myline">
   					<span class="companyname">工作时间：</span><span class="mydata">${workexperience.startyear }.${workexperience.startmonth } - ${workexperience.endyear }.${workexperience.endmonth }</span>
   			    </div>
   			    <div class="myline">
   					<span class="companyname">公司类型：</span><span class="mydata">${workexperience.nature }</span>
   			    </div>
   			     <div class="myline">
   					<span class="companyname">工作类型：</span><span class="mydata">${workexperience.type }</span>
   			    </div>
   			    <div class="myline">
   					<span class="companyname">工作职责：</span>
   			    </div>
   				<div class="myline1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${workexperience.duty}


   				</div>

			    <div style="color:#ccc;background-color: #D1D1D1;border:1px solid #D1D1D1;float:left;width:100%;margin-top:10px;margin-bottom:30px;"></div>
   		 </div>

     	</c:forEach>
   		 <script type="text/javascript">
   		 	function update(id){

   		 	   //alert(id);
            	 $144.XYTipsWindow({
    				___title:"填写信息",
    				___content:"iframe:${pageContext.request.contextPath}/workexperience/toWrite?id="+id,
    				___width:"700",
    				___height:"550",
    				___showbg:true,
    				___drag:"___boxTitle",
    				___closeID:"xioaozheng"

    			});
   		 	}

   		 </script>

   		 <style>
   		 	.myline{
		     		display:block;
		     		float:left;
			      	width:100%;
			      	line-height:30px;
			      	letter-spacing:4px;
			      	font-size:16px;
		      		padding-left:35px;

		      }
		      .myline1{
		     		display:block;
		     		float:left;
			      	width:95%;
			      	line-height:30px;
			      	letter-spacing:4px;
			      	font-size:14px;
		      		padding-left:35px;

		      }
   		 	.companyname{
   		 		width:500px;
   		 		font-size:16px;
   		 	}
   		 	.mydata{
   		 		font-size:15px;
   		 	}

   		 </style>
   		<br/>
      </div>
      <!-- 求职意向 end -->





   		</div>
    <!--简历内容 e-->
   </div>
   <div class="dl_footer">
    <!-- 静态包含 -->
	   <span> &copy;2018&nbsp;&nbsp;zkhl.huilan.com&nbsp;&nbsp;北京市海淀区东北旺西路8号9号楼二区305 &nbsp;联系电话&nbsp;010-82826258</span>
   </div>
  </div>
  <%--地图--%>
      <div style="left: 90%;margin-left: -26px;position: fixed; bottom:-100px;width: 90px;height: 600px;z-index: 891208; margin-top: 500px">
          <img src="${pageContext.request.contextPath}/static/window/images/person.jpg" style="width: 90px; height: 90px;">
          <input type="button" value="简历咨询" style="background-color:#1296db; text-align: center ; width: 90px; height: 40px; border-radius: 3px;"/>

      </div>

      <script type="text/javascript">

        $(document).ready(function () {


            if (window.location.host.toLowerCase() == 'pecc.zhiye.com') {

                var certificateType = $("#RecruitmentPortalPersonProfile_CertificateType");
                if (certificateType.length) {
                    //先选择option是为了使用所选option的验证规则
                    certificateType.val('1');
                    $.each(certificateType.find('option'), function (state, child) {

                        if ($(child).val() != "1") $(child).remove()
                    });
                }

                var phone = $("#phoneTypeSel");
                if (phone.length) {
                    phone.val("chn");
                    $.each(phone.find('option'), function (state, child) {

                        if ($(child).val() != "chn") $(child).remove()
                    });
                }
            }     });

    </script>
  <!--引用静态文件:dataInitFunc,HangYe,AreaJson,NewAreaJson-->
  <script type="text/javascript"> function setAJson(data){ window.Ajson=data; } function setNewAJson(data){ window.NewAjson=data; } function setMJson(data){ window.Mjson=data; } </script>
  <script type="text/javascript" src="http://const.tms.beisen.com/ConstData.svc/Const/hangye?callback=setMJson"></script>
  <script type="text/javascript" src="http://const.tms.beisen.com/ConstData.svc/Const/Areas?callback=setAJson"></script>
  <script type="text/javascript" src="http://const.tms.beisen.com/Api/Defination/AreaFormat?callback=setNewAJson"></script>
  <script language="javascript" type="text/javascript">

        function SetCss() {
            var win = window.location.href;
            if (win.indexOf("Apply") != -1) {
                $("#myapply a").addClass("current");
            }
            else if (win.indexOf("ResumeItem") != -1) {
                $("#myresume a").addClass("current");
            }
            else if (win.indexOf("EditPwd") != -1) {
                $("#changepwd a").addClass("current");
            }
        }
        SetCss();

        $(function () {

            setInterval(function () {
                try {
                    DrawImage($("#logoImg"), '350', '80');
                } catch (e) {
                }
            }, 100);
        });


    </script>
  <!--引用静态文件:dataInitFunc,HangYe,AreaJson,NewAreaJson-->
  <script type="text/javascript"> function setAJson(data){ window.Ajson=data; } function setNewAJson(data){ window.NewAjson=data; } function setMJson(data){ window.Mjson=data; } </script>

   <!-- 弹窗插件 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>

 </body>
</html>
