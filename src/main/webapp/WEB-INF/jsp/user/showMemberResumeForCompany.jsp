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
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery.XYTipsWindow.2.9.xiaozheng.js"></script>
    
	

	 
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

  <div class="bs_deliver"> 
   <div class="dl_content dl_gray_bg"> 
    <!----> 
    <!--申请职位 s--> 
    <!--申请职位 e--> 
    <!--我的简历 s--> 
    <!--简历内容 s--> 
  
    <div class="dl_bigwrap dl_heightagain clearfix dl_grey_bc"> 
    
     <div class="rightcontent dl_height1 dl_new_error_wrap" style="width:890px;"> 
      <h3 class="dl_bigtit"><span class="dl_postit">${requestScope.userResume.name}的简历</span></h3> 
      <div class="dl_importprofile"> 
       <a class="import dl_import" href="javascript:void(0)"></a> 
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
        <span class="dl_menutit ">个人信息*（以下信息都必填）</span>
       
       </div> 
   			<div class="jianliUl">
   				<input type="hidden" name="id" id="id" value="${requestScope.userResume.id}">
   				<span class="key">姓名：</span><input type="text" id="show_name" value="${requestScope.userResume.name}" readonly="true">
   				<span class="key">邮箱邮箱：</span><input type="text" id="show_email" value="${requestScope.userResume.email}" readonly="true">
   				<span class="key">手机号：</span><input type="text" id="show_phone" value="${requestScope.userResume.phone}" readonly="true">
   				<span class="key">年龄：</span><input type="text" id="show_age" value="${requestScope.userResume.age}" readonly="true" >
   				<span class="key">性别：</span><input type="text" id="show_sex" value="${requestScope.userResume.sex}" readonly="true" >
   				
   				<span class="key">现居住地：</span><input type="text" id="show_address" value="${requestScope.userResume.address}" readonly="true" >
   				<span class="key">最高学历：</span><input type="text" id="show_xueLi" value="${requestScope.userResume.xueli}" readonly="true">
   				<span class="key">学校：</span><input type="text" id="show_school" value="${requestScope.userResume.school}" readonly="true">
   				<span class="key">专业：</span><input type="text" id="show_professional" value="${requestScope.userResume.professional}" readonly="true">
   				<span class="key">自我评价：</span><input type="text" id="show_description" style="" value="${requestScope.userResume.description}" readonly="true" >
   			
   				<div></div>
   				
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
       </div> 
       
        <style type="text/css"> 	 
        </style>
     	<div class="jianliUl">
   				<span class="key">求职工作：</span><input type="text" id="intention_name" value="${requestScope.userResume.jobname}" readonly="true"></li>
   				<span class="key">现月薪：</span><input type="text" id="intention_money" value="${requestScope.userResume.nowmoney}" readonly="true"></li>
   				<span class="key">最低薪资：</span><input type="text" id="intention_low_money" value="${requestScope.userResume.lowmoney}" readonly="true">
   				<span class="key">最高薪资：</span><input type="text" id="intention_high_money" value="${requestScope.userResume.highmoney}" readonly="true" >
   				
   				<div></div>
   				
   		 </div>
   		<br/>   	
      </div> 	
      <!-- 求职意向 end -->
		
		
	  <!-- 求职意向 stary -->
	<div class="dl_basicinfo"> 
       <div class="dl_greyline_bg">
        <span class="dl_menutit ">工作经验</span>

      
       </div> 
       <script type="text/javascript">
       		
       
       </script>
        <style type="text/css"> 	 
        </style>
        <c:forEach items="${requestScope.workexperienceLists }" var="workexperience">
     	<div class="jianliUl">
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
    				___width:"800",
    				___height:"994",
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
            }
        });

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