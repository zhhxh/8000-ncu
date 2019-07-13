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
                  <li><a target="_self" href="${pageContext.request.contextPath}/system/showOurCompany">求职技巧</a> </li>
                  <li><a target="_self" href="${pageContext.request.contextPath}/user/userInfo" class="current">个人中心</a> </li>
              </ul>
          </div>
      </div>
      <!--module:menu end-->
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
       <li class="selected settingchoose"> <span class="dl_menuchose">账户设置</span> </li> 
       <li> <a href="${pageContext.request.contextPath}/applay/applayRecord?state=100" class="apply">我的申请</a> </li> 
       <li> <a href="${pageContext.request.contextPath}/user/memberResume" class="profile">我的简历</a> </li> 
       <li> <a href="${pageContext.request.contextPath}/news/user/newslist" class="shoucang">消息中心</a> </li> 
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
     <div class="rightcontent"> 
      <h3 class="dl_bigtit"> <span class="dl_postit">账户设置</span> </h3> 
      <div class="account-settings"> 
       <div class="area"> 
        <div class="area-title"  style="font-size:16px;"> 
         <div class="label"  style="font-size:16px;">
      			    <span style="font-size:15px;">账号信息</span>
         </div> 
        </div> 
      	<div class="base-info">
      		<script type="text/javascript">
      		function toEditQQ(){
      			
      			//显示保存，取消按钮
                $("#qqSaveButton").show();
           		$("#qqCancleButton").show();
           		
           		//移除不可编辑属性
           		$("#show_qq").removeAttr("readonly");
           		
           		//添加一个border属性
           		$('#show_qq').css('border','1px solid #ADADAD');
      		}
      		
      		function toCancleIntention(){
      		    //显示保存，取消按钮
                $("#qqSaveButton").hide();
           		$("#qqCancleButton").hide();
           		
           	   //添加一个readonly属性
           		$('#show_qq').attr("readonly","readonly");
           	   
           		$("#show_qq").css({border:"none"});
           		
           		//复原原来的值
           		$("#show_qq").val("${requestScope.info.qq}");
      		}
      		
      		function toSaveIntention(){
      			
      			//验证qq是否为空
           		var qq = $("#show_qq").val();
      			
           		if(!isNull(qq)){
           			easyDialog.open({
    					container : {
    						content : "关联的qq号码不能为空"
    					},
    					autoClose : 1000
    				});
           			return;
           		}
           		
           		var id =  ${sessionScope.user.id};
           		//然后提交到后台管理系统
           		$.ajax({
 					type: "POST",
 					url: '${pageContext.request.contextPath}/user/associatedQq',
 			    	data: {
 			    		qq:qq,
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
 							window.location.href = '${pageContext.request.contextPath}/user/userInfo';
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
      	  	
      	  	function toEditWeiXin(){
      	  		//显示保存，取消按钮
                $("#weixinSaveButton").show();
           		$("#weixinCancleButton").show();
           		
           		//移除不可编辑属性
           		$("#show_weixin").removeAttr("readonly");
           		
           		//添加一个border属性
           		$('#show_weixin').css('border','1px solid #ADADAD');
      	  	}
      	  	
      	  	function toCancleIntentionWeixin(){
      	  		//显示保存，取消按钮
                $("#weixinSaveButton").hide();
           		$("#weixinCancleButton").hide();
           		
           	   //添加一个readonly属性
           		$('#show_weixin').attr("readonly","readonly");
           	   
           		$("#show_weixin").css({border:"none"});
           		
           		//复原原来的值
           		$("#show_weixin").val("${requestScope.info.weixin}");
      	  	}
      	  	
      	  	function toSaveIntentionWeixin(){
      	  		//验证qq是否为空
           		var weixin = $("#show_weixin").val();
      			
           		if(!isNull(weixin)){
           			easyDialog.open({
    					container : {
    						content : "关联的weixin号码不能为空"
    					},
    					autoClose : 1000
    				});
           			return;
           		}
           		
           		var id =  ${sessionScope.user.id};
           		
             	//然后提交到后台管理系统
           		$.ajax({
 					type: "POST",
 					url: '${pageContext.request.contextPath}/user/associatedWeixin',
 			    	data: {
 			    		weixin:weixin,
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
 							window.location.href = '${pageContext.request.contextPath}/user/userInfo';
 						}
 						
 					}
 				}); 
      	  	}
      		</script>
        	<!-- 填写个人的账户信息 start -->
        	<div class="jianliUl">
        		<input type="hidden" name="id" id="id" value="${sessionScope.user.id}">
        		<span class="key">登录账号：</span><input type="text" id="show_username" value="${sessionScope.user.username}" readonly="true"><span class="edit"">只读</span>
        		
        		<span class="key">关联qq：</span><input type="text" id="show_qq" value="${requestScope.info.qq}" readonly="true"><span class="edit" onclick="toEditQQ()">编辑</span>
        		
        		
        		<span class="key">关联微信：</span><input type="text" id="show_weixin" value="${requestScope.info.weixin}" readonly="true"><span class="edit"" onclick="toEditWeiXin()">编辑</span>
        		
		
        		<div style="margin-top:20px;color:#ADADAD;font-size:14px;">
        			（关联qq、微信之后，下次可通过qq或者微信登录我们系统）
        		</div>
        		
        		<div></div>
   				<div class="saveButton" id="qqSaveButton">
			        <button  class="rkmd-btn btn-lightBlue" onclick="toSaveIntention()">保存</button>
			    </div>
			    <div class="cancleButton"  id="qqCancleButton" >
			    	<button class="rkmd-btn btn-lightBlue" onclick="toCancleIntention()">取消</button>
			    </div>
			    
			    <div class="saveButton" id="weixinSaveButton">
			        <button  class="rkmd-btn btn-lightBlue" onclick="toSaveIntentionWeixin()">保存</button>
			    </div>
			    <div class="cancleButton"  id="weixinCancleButton" >
			    	<button class="rkmd-btn btn-lightBlue" onclick="toCancleIntentionWeixin()">取消</button>
			    </div>
			    
			    
			   
        	</div>
        	<style type="text/css">
	        	.jianliUl{
			      	
			      }
			      
			      .key{
			     		display:block;
			     		float:left;
				      	width:130px;
				      	line-height:30px;
				      	letter-spacing:4px;
				      	font-size:16px;
					
			      }      
			      
			      .jianliUl input{
			      	width:60%;   
			        font-size:16px;
			        line-height:30px;
			        font-size:14px;
			        padding-left:10px;
			      
			       
			      }
        			
        			.edit{
				      	color:#64A8DC;
				      	font-size:14px;
				      	margin-left:25px;
				      	
				  }
				  
				     .saveButton{
				     	 float:left;
				     	 padding-left:35px;
				     	 margin-top:30px;
				     	 display: none;
				      
				      }
				      .btn-lightBlue{
					      	background-color: #03A9F4;
					      	border-radius: 1px;
					      	box-shadow: 1px 1px 1px #888888;
					      	color:white;
					      	font-size:16px;
					   }
      
				      .saveButton button{
				     	 width:100px;
				     	 height:25px;
				     	 line-height:25px;
				     	
				     	
				      }
				      
				      .cancleButton{
				     	 float:left;
				     	 padding-left:35px;
				     	 margin-top:30px;
				     	 display: none;
				      
				      }
				      
				      .cancleButton button{
				     	 width:100px;
				     	 height:25px;
				     	 line-height:25px;
				     	 
				     	 
				      }
				  
        	</style>
        	<!-- 填写个人的账户信息 end -->
			
		</div> 
	
       </div> 
     		  <!-- 求职意向 stary -->
	
		
      </div> 
      <br/>
      <br/>
    
      <div class="dl_basicinfo"> 
       <div class="dl_greyline_bg">
        <span class="dl_menutit" style="font-size:15px;font-weight:normal">修改密码</span>
       </div> 
     	<div class="jianliUl">
   				    <br/>
   				    <span class="key" style="padding-left:30px;">新密码：</span>
   				    	<input type="text" id="shuruPassword" value="" style="border:1px solid #ADADAD;">
					
					<div id="updatePassword" >
			    		<button class="rkmd-btn" onclick="updatePassword()">保存密码</button>
			   		</div>
			   		<script type="text/javascript">
			   			function updatePassword(){
			   				//验证qq是否为空
			           		var password = $("#shuruPassword").val();
			           		if(!isNull(password)){
			           			easyDialog.open({
			    					container : {
			    						content : "新密码不能为空"
			    					},
			    					autoClose : 1000
			    				});
			           			return;
			           		}
			           		
			           		var id =  ${sessionScope.user.id};
			           		$.ajax({
			 					type: "POST",
			 					url: '${pageContext.request.contextPath}/user/updatePassword',
			 			    	data: {
			 			    		password:password,
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
			 							window.location.href = '${pageContext.request.contextPath}/user/userInfo';
			 						}
			 						
			 					}
			 				}); 
			           		
			   			}
			   		
			   		
			   		</script>
			   		<style type="text/css">
						#updatePassword{
							
						
						}	
						
						#updatePassword button{
							background-color: #03A9F4;
					      	border-radius: 1px;
					      	box-shadow: 5x 5px 5px #888888;
					      	color:white;
					      	font-size:15px;
							margin-left:30%;
							margin-top:10%;
							width:150px;
							height:30px;
							margin-bottom: 100px;
						}		   		
				   		
			   		
			   		</style>
			   		
				
   				
   		 </div>
   		<br/>   	
      </div> 
     </div> 
     
    </div> 
    
    <!--简历内容 e--> 
    <div style="height:60px;"></div>
   </div> 
   <div class="dl_footer">
	   <span> &copy;2018&nbsp;&nbsp;zkhl.huilan.com&nbsp;&nbsp;</span>
   </div> 
  </div>  
  <!-- 弹窗插件 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
 </body>
</html>