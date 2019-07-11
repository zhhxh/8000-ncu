<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
<head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
  <title>我的简历</title> 
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
	<form action="${pageContext.request.contextPath}/userResume/saveBaseMessage" method="post">
			<span class="key">姓名：</span><input type="text" id="show_name" name="name" value="${requestScope.userResume.name}" ><span class="edit" onclick="toEdit()">编辑</span>
 			<span class="key">邮箱邮箱：</span><input type="text" id="show_email" name="email" value="${requestScope.userResume.email}" >
 			<span class="key">手机号：</span><input type="text" id="show_phone" name="phone" value="${requestScope.userResume.phone}">
 			<span class="key">年龄：</span><input type="text" id="show_age" name="age" value="${requestScope.userResume.age}"  >
 			<span class="key">性别：</span><input type="text" id="show_sex" value="${requestScope.userResume.sex}" >
 				
 			<span class="key">现居住地：</span><input type="text" id="show_address" name="address" value="${requestScope.userResume.address}" >
 			<span class="key">最高学历：</span><input type="text" id="show_xueLi" value="${requestScope.userResume.xueli}" >
 			<span class="key">学校：</span><input type="text" id="show_school" value="${requestScope.userResume.school}">
 			<span class="key">专业：</span><input type="text" id="show_professional" value="${requestScope.userResume.professional}" >

  			<button onclick="ceshi()">按钮提交</button>
			 <input type="submit" value="提交">
			<script type="text/javascript">
				function ceshi(){
				
					var name = $("#show_name").val();
					var email = $("#show_email").val();
					var phone = $("#show_phone").val();
					var address = $("#show_address").val();
					$.ajax({
						type: "POST",
						url: '${pageContext.request.contextPath}/userResume/saveBaseMessage',
				    	data: {
				    			name:name,
				    			email:email,
				    			phone:phone,
				    			address:address,
				    			
				    	
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
			
			</script>
	
	</form>
</body>
</html>