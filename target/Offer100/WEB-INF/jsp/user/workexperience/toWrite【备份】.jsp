<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>注册</title>
<style type="text/css">
body,h1,h2,h3,h4,h5,h6,hr,p,blockquote,dl,dt,dd,ul,ol,li,pre,form,fieldset,legend,button,input,textarea,th,td{margin:0;padding:0}
body,button,input,select,textarea{font:12px/1.5 tahoma,arial,\5b8b\4f53,sans-serif;text-align:justify;text-justify:inter-ideograph;word-break:break-all;word-wrap:break-word}
h1,h2,h3,h4,h5,h6{font-size:100%}
address,cite,dfn,em,var,i,u{font-style:normal}
code,kbd,pre,samp{font-family:courier new,courier,monospace}
small{font-size:12px}ul,ol{list-style:none}
sup{vertical-align:text-top}sub{vertical-align:text-bottom}
legend{color:#000}fieldset,img{border:0}button,input,select,textarea{font-size:100%;padding:0;margin:0}
table{border-collapse:collapse;border-spacing:0}caption,th{ text-align:left }
.ovh{overflow:hidden}.l{float:left}.r{float:right}.cur{cursor:pointer}
.c_b{content:".";display:block;height:0;clear:both;visibility:hidden;zoom:1;font-size:0px;overflow:hidden;visibility:hidden}.c_b2{clear:both}.dn{display:none}.dis{display:block}.b{font-weight:bold}
body{behavior:url("css/hover_htc.htc");font-family:"Microsoft YaHei",宋体; color:#333;}/*hover*/

/*会员注册*/
.login ul{/*background:url(../images/line.png) repeat-x;*/ padding-top:10px; border-top:1px solid #fff}
.login ul a{ color:#005cb1}
.login .id input,.login .pw input,.in_id,.in_mo,.reg_input,.reg_input_pic{background-color:#FFF; border:1px solid #d5cfc2;  font-size:14px; font-weight:bold; vertical-align:middle}
.login .id input,.login .pw input{width:170px; height:30px;margin:0 5px 5px 0; line-height:30px; padding:0 5px;}
.login .id input:hover,.login .pw input:hover,.in_id:hover,.in_mo:hover,.reg_input:hover,.reg_input_pic:hover{border:1px solid #005cb1;background-color:#F2FAFF;}
.l_button,.r_button{background:url(images/login_button.png) no-repeat; width:118px; height:39px; border:none; cursor:pointer; display:block; float:left; text-indent:-9000px}
.l_button{background-position:0 -60px;}
.r_button{background-position:-138px -60px; margin-right:4px}
.l_button:hover{background-position:0 0;}
.r_button:hover{background-position:-138px 0;}
.f_reg_but{margin:10px 0 0 115px}

.reg{width:800px; font-size:14px;line-height:25px; overflow:hidden;}
.reg dl{padding-left:10px; font-size:14px;}
.reg dl dt{ margin-top:15px}
.reg dl dd{padding:3px 0}
.reg .title{width:100px; display:inline-block; text-align:right; padding-right:10px}
.reg_input_pic{width:80px;}
.in_pic_s{margin-left:83px}
.reg .img{position:absolute}
.onShow,.onFocus,.onError,.onCorrect,.onLoad{background:url(${pageContext.request.contextPath}/static/window/images/reg_bg.png) no-repeat 3000px 3000px;padding-left:30px; font-size: 12px; height:25px; width:224px; display:inline-block; line-height:25px; vertical-align:middle; overflow:hidden; margin-left:6px}
.onShow{color:#999; padding-left:0px}
.onFocus{background-position:0px -30px; color:#333}
.onError{background-position:0px -60px; color:#333}
.onCorrect{background-position:0px 0; text-indent:-9000px}
.onLoad{background-position:0px 0}
.reg_m{margin-left:90px}
.clew_txt{display:inline-block; padding:7px  0 0 15px; font-size:12px;}

.id input,.pw input,.in_id,.in_mo,.reg_input,.reg_input_pic{_behavior:url(js/Round_htc.htc);-moz-border-radius:4px;-webkit-border-radius:4px;border-radius:4px; height:25px;}
.user_button a,.pay_but{_behavior:url(js/Round_htc.htc);-moz-border-radius:100px;-webkit-border-radius:100px;border-radius:100px;}

#one1,#one2{display:block; background-color:#e9eed8; padding:5px 0; text-align:center; clear:both; cursor:pointer}
#one2{margin-top:15px}
#one1:hover,#one2:hover{background-color:#d4dfb0}
#one1 span,#one2 span{color:#F00}
</style>

<script src="${pageContext.request.contextPath}/static/window/js/jquery-1.2.6.min.js" type=text/javascript></script>
<script src="${pageContext.request.contextPath}/static/window/js/formValidator_min.js" type="text/javascript" charset="UTF-8"></script>
<script src="${pageContext.request.contextPath}/static/window/js/formValidatorRegex.js" type="text/javascript" charset="UTF-8"></script>


  <!-- 引入boostrap的样式 strat -->
  
  <link href="${pageContext.request.contextPath}/static/company/css/bootstrap.css" rel="stylesheet"> 
  <!-- 引入boostrap的样式 end -->
   <!-- 引入弹窗插件 start -->
  	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css" />
  
  <!-- 引入弹窗插件 start -->
<script type="text/javascript">
$(document).ready(function(){
	$.formValidator.initConfig({formid:"form1",debug:false,submitonce:true,
		onerror:function(msg,obj,errorlist){
			//$.map(errorlist,function(msg1){alert(msg1)});
			alert(msg);
		}
	});
	
	//岗位名称
	$("#iptNickName").formValidator({onshow:"不能为空",onfocus:"不能为空",oncorrect:"通过"}).inputValidator({min:1,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>输入长度有误</font>"},onerror:"<font color='red'>输入长度有误</font>"});
	//部门名称
	$("#iptDepartment").formValidator({onshow:"不能为空",onfocus:"不能为空",oncorrect:"通过"}).inputValidator({min:1,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>不能为空</font>"},onerror:"<font color='red'>不能为空</font>"});
	//职位
	$("#iptPosition").formValidator({onshow:"不能为空",onfocus:"不能为空",oncorrect:"通过"}).inputValidator({min:1,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>不能为空</font>"},onerror:"<font color='red'>不能为空</font>"});
	//职位
	$("#iptWeight").formValidator({onshow:"不能为空",onfocus:"不能为空",oncorrect:"通过"}).inputValidator({min:1,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>不能为空</font>"},onerror:"<font color='red'>不能为空</font>"});
	
	
	
	

});
function test1(obj)
{
	if(obj.value=="全角字符当做1个长度")
	{
		$.formValidator.getInitConfig("1").wideword = false;
		obj.value = "全角字符当做2个长度";
	}
	else
	{
		$.formValidator.getInitConfig("1").wideword = true;
		obj.value = "全角字符当做1个长度";
	}
	
}

</script>
</head>

<body style="height:960px;">

<!--注册开始-->
    <div class="reg" >
        <form action="${pageContext.request.contextPath}/myrecruitment/saveRecruitment" method="post" name="form1" id="form1"  onsubmit = "return checkUser();" >
            <dl>
            	<input type="hidden" id="id" value="${requestScope.workexperience.id}">
    			<!-- 公司名称 -->
    			<dd  class="mydd" style="margin-top:20px;"><span class="title">公司名称：</span><input  required class="reg_input myInput" name="companyname" value="${requestScope.workexperience.companyname}" id="iptNickName"  type="text" /><span id="iptNickNameTip" class="onshow">至少2个字符</span></dd>
    			<!-- 部门 -->
    			<dd  class="mydd"><span class="title">部门：</span><input required class="reg_input myInput" name="department" value="${requestScope.workexperience.department}" id="iptDepartment"type="text" /><span id="iptDepartmentTip" class="onshow showWarn"></span></dd>	
    			<!-- 职位 -->
    			<dd  class="mydd"><span class="title">职位：</span><input required class="reg_input myInput" name="position" value="${requestScope.workexperience.position}" id="iptPosition"type="text" /><span id="iptPositionTip" class="onshow showWarn"></span></dd>	
    			<!-- 权重 -->
    			<dd  class="mydd"><span class="title">权重：</span><input required class="reg_input myInput" name="weight" value="${requestScope.workexperience.weight}" placeholder="输入1-10，数字越大，经验排在越上面" id="iptWeight" type="text" /><span id="iptWeightTip" class="onshow showWarn"></span></dd>	
    			
    			<!-- 工作类类型	-->
            	<dd  class="mydd"><span class="title">工作类型：</span>										
            		<select class="form-control reg_input mySelcet" name="type" id="type" >
					  <option ${requestScope.workexperience.type eq '全职' ? "selected=\"selected\"":""}>全职</option>.
					  <option ${requestScope.workexperience.type eq '实习' ? "selected=\"selected\"":""}>实习</option>
					  <option ${requestScope.workexperience.type eq '兼职' ? "selected=\"selected\"":""}>兼职</option>
					</select>
           	 	</dd>
           	 
           	 	<!-- 公司类型	-->
            	<dd  class="mydd" style="margin-top:12px;"><span class="title">公司类型：</span>										
            		<select class="form-control reg_input mySelcet" name="nature" id="nature" >
					  <option ${requestScope.workexperience.nature eq '外企(欧美)' ? "selected=\"selected\"":""}>外资(欧美)</option>
					  <option ${requestScope.workexperience.nature eq '外企(非欧美)' ? "selected=\"selected\"":""}>外资(非欧美)</option>
					  <option ${requestScope.workexperience.nature eq '合资' ? "selected=\"selected\"":""}>合资</option>
					  <option ${requestScope.workexperience.nature eq '国企' ? "selected=\"selected\"":""}>国企</option>
					  <option ${requestScope.workexperience.nature eq '民营公司' ? "selected=\"selected\"":""}>民营公司</option>
					  <option ${requestScope.workexperience.nature eq '上市公司' ? "selected=\"selected\"":""}>上市公司</option>
					  <option ${requestScope.workexperience.nature eq '创业公司' ? "selected=\"selected\"":""}>创业公司</option>
					  <option ${requestScope.workexperience.nature eq '外企代表处' ? "selected=\"selected\"":""}>外企代表处</option>
					  <option ${requestScope.workexperience.nature eq '政府机关' ? "selected=\"selected\"":""}>政府机关</option>
					  <option ${requestScope.workexperience.nature eq '事业单位' ? "selected=\"selected\"":""}>事业单位</option>
					  <option ${requestScope.workexperience.nature eq '非盈利组织' ? "selected=\"selected\"":""}>非盈利组织</option>
					</select>
           	 	</dd>
           	 	<!-- 工作开始时间 -->
           	 	<dd  class="mydd" style="margin-top:12px;float:left;"><span class="title" style="float:left;">开始时间：</span>										
            		<select class="form-control reg_input dateselect" name="startyear" id="startyear" >
					  <option value="">--选择年份--</option>
					  <option ${requestScope.workexperience.startyear eq '1995' ? "selected=\"selected\"":""}>1995</option>
					  <option ${requestScope.workexperience.startyear eq '1996' ? "selected=\"selected\"":""}>1996</option>
					  <option ${requestScope.workexperience.startyear eq '1997' ? "selected=\"selected\"":""}>1997</option>
					  <option ${requestScope.workexperience.startyear eq '1998' ? "selected=\"selected\"":""}>1998</option>
					  <option ${requestScope.workexperience.startyear eq '1999' ? "selected=\"selected\"":""}>1999</option>
					  <option ${requestScope.workexperience.startyear eq '2000' ? "selected=\"selected\"":""}>2000</option>
					  <option ${requestScope.workexperience.startyear eq '2001' ? "selected=\"selected\"":""} >2001</option>
					  <option ${requestScope.workexperience.startyear eq '2002' ? "selected=\"selected\"":""}>2002</option>
					  <option ${requestScope.workexperience.startyear eq '2003' ? "selected=\"selected\"":""}>2003</option> 
					  <option ${requestScope.workexperience.startyear eq '2004' ? "selected=\"selected\"":""}>2004</option>
					  <option ${requestScope.workexperience.startyear eq '2005' ? "selected=\"selected\"":""}>2005</option>
					  <option ${requestScope.workexperience.startyear eq '2006' ? "selected=\"selected\"":""}>2006</option>
					  <option ${requestScope.workexperience.startyear eq '2007' ? "selected=\"selected\"":""}>2007</option>
					  <option ${requestScope.workexperience.startyear eq '2008' ? "selected=\"selected\"":""}>2008</option>
					  <option ${requestScope.workexperience.startyear eq '2009' ? "selected=\"selected\"":""}>2009</option>
					  <option ${requestScope.workexperience.startyear eq '2010' ? "selected=\"selected\"":""}>2010</option>
					  <option ${requestScope.workexperience.startyear eq '2011' ? "selected=\"selected\"":""}>2011</option>
					  <option ${requestScope.workexperience.startyear eq '2012' ? "selected=\"selected\"":""}>2012</option>
					  <option ${requestScope.workexperience.startyear eq '2013' ? "selected=\"selected\"":""}>2013</option>
					  <option ${requestScope.workexperience.startyear eq '2014' ? "selected=\"selected\"":""}>2014</option>
					  <option ${requestScope.workexperience.startyear eq '2015' ? "selected=\"selected\"":""}>2015</option>
					  <option ${requestScope.workexperience.startyear eq '2016' ? "selected=\"selected\"":""}>2016</option>
					  <option ${requestScope.workexperience.startyear eq '2017' ? "selected=\"selected\"":""}>2017</option>
					  <option ${requestScope.workexperience.startyear eq '2018' ? "selected=\"selected\"":""}>2018</option>
					  <option ${requestScope.workexperience.startyear eq '2019' ? "selected=\"selected\"":""}>2019</option>
					  <option ${requestScope.workexperience.startyear eq '2020' ? "selected=\"selected\"":""}>2020</option>			       
					</select>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<select class="form-control reg_input dateselect" style="margin-left:20px;" name="startmonth" id="startmonth" >
					  <option value="">--选择月份--</option>
					  <option ${requestScope.workexperience.startmonth eq '1' ? "selected=\"selected\"":""}>1</option>
					  <option ${requestScope.workexperience.startmonth eq '2' ? "selected=\"selected\"":""}>2</option>
					  <option ${requestScope.workexperience.startmonth eq '3' ? "selected=\"selected\"":""}>3</option>
					  <option ${requestScope.workexperience.startmonth eq '4' ? "selected=\"selected\"":""}>4</option>
					  <option ${requestScope.workexperience.startmonth eq '5' ? "selected=\"selected\"":""}>5</option>
					  <option ${requestScope.workexperience.startmonth eq '6' ? "selected=\"selected\"":""}>6</option>
					  <option ${requestScope.workexperience.startmonth eq '7' ? "selected=\"selected\"":""}>7</option>
					  <option ${requestScope.workexperience.startmonth eq '8' ? "selected=\"selected\"":""}>8</option>
					  <option ${requestScope.workexperience.startmonth eq '9' ? "selected=\"selected\"":""}>9</option>
					  <option ${requestScope.workexperience.startmonth eq '10' ? "selected=\"selected\"":""}>10</option>
					  <option ${requestScope.workexperience.startmonth eq '11' ? "selected=\"selected\"":""}>11</option>
					  <option ${requestScope.workexperience.startmonth eq '12' ? "selected=\"selected\"":""}>12</option>
					 	       
					</select>
           	 	</dd>
           	 	<!-- 工作结束时间 -->
           	 	<dd  class="mydd" style="margin-top:12px;float:left;"><span class="title" style="float:left;">结束时间：</span>										
            		<select class="form-control reg_input dateselect" name="endyear" id="endyear" >
					  	  <option value="">--选择年份--</option>
					  <option ${requestScope.workexperience.endyear eq '1995' ? "selected=\"selected\"":""}>1995</option>
					  <option ${requestScope.workexperience.endyear eq '1996' ? "selected=\"selected\"":""}>1996</option>
					  <option ${requestScope.workexperience.endyear eq '1997' ? "selected=\"selected\"":""}>1997</option>
					  <option ${requestScope.workexperience.endyear eq '1998' ? "selected=\"selected\"":""}>1998</option>
					  <option ${requestScope.workexperience.endyear eq '1999' ? "selected=\"selected\"":""}>1999</option>
					  <option ${requestScope.workexperience.endyear eq '2000' ? "selected=\"selected\"":""}>2000</option>
					  <option ${requestScope.workexperience.endyear eq '2001' ? "selected=\"selected\"":""} >2001</option>
					  <option ${requestScope.workexperience.endyear eq '2002' ? "selected=\"selected\"":""}>2002</option>
					  <option ${requestScope.workexperience.endyear eq '2003' ? "selected=\"selected\"":""}>2003</option> 
					  <option ${requestScope.workexperience.endyear eq '2004' ? "selected=\"selected\"":""}>2004</option>
					  <option ${requestScope.workexperience.endyear eq '2005' ? "selected=\"selected\"":""}>2005</option>
					  <option ${requestScope.workexperience.endyear eq '2006' ? "selected=\"selected\"":""}>2006</option>
					  <option ${requestScope.workexperience.endyear eq '2007' ? "selected=\"selected\"":""}>2007</option>
					  <option ${requestScope.workexperience.endyear eq '2008' ? "selected=\"selected\"":""}>2008</option>
					  <option ${requestScope.workexperience.endyear eq '2009' ? "selected=\"selected\"":""}>2009</option>
					  <option ${requestScope.workexperience.endyear eq '2010' ? "selected=\"selected\"":""}>2010</option>
					  <option ${requestScope.workexperience.endyear eq '2011' ? "selected=\"selected\"":""}>2011</option>
					  <option ${requestScope.workexperience.endyear eq '2012' ? "selected=\"selected\"":""}>2012</option>
					  <option ${requestScope.workexperience.endyear eq '2013' ? "selected=\"selected\"":""}>2013</option>
					  <option ${requestScope.workexperience.endyear eq '2014' ? "selected=\"selected\"":""}>2014</option>
					  <option ${requestScope.workexperience.endyear eq '2015' ? "selected=\"selected\"":""}>2015</option>
					  <option ${requestScope.workexperience.endyear eq '2016' ? "selected=\"selected\"":""}>2016</option>
					  <option ${requestScope.workexperience.endyear eq '2017' ? "selected=\"selected\"":""}>2017</option>
					  <option ${requestScope.workexperience.endyear eq '2018' ? "selected=\"selected\"":""}>2018</option>
					  <option ${requestScope.workexperience.endyear eq '2019' ? "selected=\"selected\"":""}>2019</option>
					  <option ${requestScope.workexperience.endyear eq '2020' ? "selected=\"selected\"":""}>2020</option>				       
					</select>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<select class="form-control reg_input dateselect" style="margin-left:20px;" name="endmonth" id="endmonth" >
					   <option value="">--选择月份--</option>
					  <option ${requestScope.workexperience.endmonth eq '1' ? "selected=\"selected\"":""}>1</option>
					  <option ${requestScope.workexperience.endmonth eq '2' ? "selected=\"selected\"":""}>2</option>
					  <option ${requestScope.workexperience.endmonth eq '3' ? "selected=\"selected\"":""}>3</option>
					  <option ${requestScope.workexperience.endmonth eq '4' ? "selected=\"selected\"":""}>4</option>
					  <option ${requestScope.workexperience.endmonth eq '5' ? "selected=\"selected\"":""}>5</option>
					  <option ${requestScope.workexperience.endmonth eq '6' ? "selected=\"selected\"":""}>6</option>
					  <option ${requestScope.workexperience.endmonth eq '7' ? "selected=\"selected\"":""}>7</option>
					  <option ${requestScope.workexperience.endmonth eq '8' ? "selected=\"selected\"":""}>8</option>
					  <option ${requestScope.workexperience.endmonth eq '9' ? "selected=\"selected\"":""}>9</option>
					  <option ${requestScope.workexperience.endmonth eq '10' ? "selected=\"selected\"":""}>10</option>
					  <option ${requestScope.workexperience.endmonth eq '11' ? "selected=\"selected\"":""}>11</option>
					  <option ${requestScope.workexperience.endmonth eq '12' ? "selected=\"selected\"":""}>12</option>
					 	     
					 	       
					</select>
           	 	</dd>
    			<!--   	jobrequired	工作要求	text	Not null -->		
              	<dd  class="mydd" style="margin-top:20px;margin-left:50px;"><span class="title">工作职责：</span>
            		<textarea class="form-control jobduty" rows="12" id="duty" name="duty" style="margin-top:10px;margin-left:100px;" >
  ${requestScope.workexperience.duty}
            		</textarea>
           	 	</dd>

            </dl>

            
             <style>
            	.mydd{
            		margin-left:50px;
            		width:600px;
            	
            	}
            	 .myInput{
            		width:250px;
            	} 
            	.mySelcet{
            		float:right;
            		width:250px;
            		line-height:32px;
            		height:32px;
            		margin-right:250px;
            	}
            	.jobduty{
            		width:400px;
            		text-align:left;
            	
            		margin-left:50px;
            	}
            	.dateselect{
            		float:left;
            		width:120px;
            		line-height:32px;
            		height:32px;
            	
            	
            	}
            </style>
         
    
			<div class="f_reg_but">
			    <!-- <input  type="submit" value="发布招聘" id="releaseResume"  onclick="saveRecruitment()"/> -->
				<input type="button" value="保存" class="btn2" id="releaseResume" onclick = "saveRecruitment();" />
			
			</div>
   			
   			
            
   		
   			<script type="text/javascript">
	   			function saveRecruitment(){
	   				<!--公司名称不能为空-->
	   				var companyname = $("#iptNickName").val();
	   				
	   				if(!isNull(companyname)){
	           			easyDialog.open({
	    					container : {
	    						content : "公司名称不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				<!--部门名称不能为空-->
	   		
					var department = $("#iptDepartment").val();
	   				
	   				if(!isNull(department)){
	           			easyDialog.open({
	    					container : {
	    						content : "部门名称不能为空"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}
					<!--职位名称不能为空-->
	   				
					var position = $("#iptPosition").val();
	   				
	   				if(!isNull(position)){
	           			easyDialog.open({
	    					container : {
	    						content : "职位名称不能为空"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}
	   			
	   				<!-- 权重不能为空，权重-->
					var weight = $("#iptWeight").val();
	   				
	   				if(!isNull(weight)){
	           			easyDialog.open({
	    					container : {
	    						content : "权重不能为空，关乎到你工作经验的排列顺序，数字越大，排在越前面。建议输入1~10··"
	    					},
	    					autoClose : 3000
	    				});
	           			return;
	           		}
	   				//验证权重的数据格式
	   				if(!checkData(weight)){
	   					easyDialog.open({
	    					container : {
	    						content : "权重必须为数字。建议输入1~10"
	    					},
	    					autoClose : 3000
	    				});
	           			return;
	   				}
	   				
	   				return;
	   				
	   				<!--获取当前工作的类型-->
	   				var type = $("#type").val();
	   				
					<!--获取当前的公司类型-->
					var nature = $("#nature").val();
					nature,startyear,startmonth
					<!--获取当前的startyear-->
					var startyear = $("#startyear").val();
					if(!isNull(startyear)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作开始年份不能为空"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}
					<!--获取当前的startmonth-->
					var startmonth = $("#startmonth").val();
					if(!isNull(startmonth)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作开始月份不能为空"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}
					<!--获取当前的endyear-->
					var endyear = $("#endyear").val();
					if(!isNull(endyear)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作结束年份不能为空"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}

					<!--获取当前的endmonth-->
					var endmonth = $("#endmonth").val();
					if(!isNull(endmonth)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作结束月份不能为空"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}

					<!--稍微验证一下输入的日期是否合法-->
					
					if(startyear > endyear){
						easyDialog.open({
	    					container : {
	    						content : "工作开始时间，不能大于结束时间，不合。建议检查月份"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
					}
		
					if(startyear == endyear){
						//开始工作的月份不能大于等于结束工作的时间
						if(startmonth > endmonth){
							easyDialog.open({
		    					container : {
		    						content : "工作开始时间，不能大于结束时间，不合法"
		    					},
		    					autoClose : 1000
		    				});
		           			return;
						}
					}
				
					<!--工作职责-->
					var duty = $("#duty").val().trim();
					if(!isNull(duty)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作职责必须填写"
	    					},
	    					autoClose : 2000
	    				});
	           			return;
	           		}
	           	   	
					
					//companyname,department,position,weight,type,	    5 + 6 = 11
					//nature,startyear,startmonth.endyear,endmonth,duty
	           	  
	           	 	var id =  $("#id").val();
	   			//然后提交到后台管理系统
	           		$.ajax({
	 					type: "POST",
	 					url: '${pageContext.request.contextPath}/workexperience/saveWorkexperience',
	 			    	data: {
	 			    		companyname:companyname,
	 			    		department:department,
	 			    		position:position,
	 			    		weight:weight,
	 			    		type:type,
	 			    		nature:nature,
	 			    		startyear:startyear,
	 			    		startmonth:startmonth,
	 			    		endyear:endyear,
	 			    		endmonth:endmonth,
	 			    		duty:duty,
	 			    		id:id
	 			    	},
	 					dataType:'json',
	 					cache: false,
	 					success: function(data){
	 						//alert("保存成功");
	 						
	 						 if("-1" == data.code){
	 							easyDialog.open({
	 								container : {
	 									content : data.msg
	 								},
	 								autoClose : 1500
	 							});
	 						}else if("1" == data.code){
	 							//表示注册成功，调到登录页面
	 							//alert("101111");
	 							parent.window.location="${pageContext.request.contextPath}/user/memberResume";
	 							parent.$144.XYTipsWindow.removeBox();
	 							//重定向到某个页面
	 							
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
	   		
	   		//验证是否数字
	   		//邮箱格式校验
	       	function checkData(data) {
	
	       		if(data!=null){
	       			return(new RegExp(/^[0-9]/).test(data));
	       		}
	       	}
   			</script>
   			<style>
   				#releaseResume{
   					background-color: #03A9F4;
   					color:white;
   					width:80px;
   					height:30px;
   					border-radius:2px;
   					font-weight:bold;
   					box-shadow: 3px 3px 2px #888888;
   					font-size:16px;
   					line-height: 30px;
   					border:1px solid black;
   					text-align: center;
   				}
   			
   			</style>
           
            
        </form>                              
    </div>
<!--注册结束-->    
   <!-- 弹窗插件 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
</body>
</html>