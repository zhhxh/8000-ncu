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
	$("#iptNickName").formValidator({onshow:"至少2个字符",onfocus:"至少2个字符",oncorrect:"通过"}).inputValidator({min:2,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>输入长度有误</font>"},onerror:"<font color='red'>输入长度有误</font>"});
	// minwage	最低薪资
	$("#t_minwage").formValidator({onshow:"4位数以上，'元'",onfocus:"4位数以上，'元'",oncorrect:"恭喜你,你输对了",defaultvalue:""}).inputValidator({min:4,max:10,onerror:"<font color='red'>金额数字非法</font>"}).regexValidator({regexp:"(^[0-9]*$)",onerror:"<font color='red'>只能输入数字</font>"});
	//Maxwage	最高薪资	Double
	$("#t_maxwage").formValidator({onshow:"4位数以上，'元'",onfocus:"4位数以上，'元'",oncorrect:"恭喜你,你输对了",defaultvalue:""}).inputValidator({min:4,max:10,onerror:"<font color='red'>金额数字非法</font>"}).regexValidator({regexp:"(^[0-9]*$)",onerror:"<font color='red'>只能输入数字</font>"});
	//Address	工作地点	Varchar(255)	Not null
	$("#iptAddress").formValidator({onshow:"至少2个字符",onfocus:"至少2个字符",oncorrect:"通过"}).inputValidator({min:2,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>输入长度有误</font>"},onerror:"<font color='red'>输入长度有误</font>"});
	//workexperience	工作经验	Varchar(255)	Not null
	
	
	 //Number	数量	Int 	Not null	
	$("#t_number").formValidator({onshow:"纯数字",onfocus:"纯数字",oncorrect:"恭喜你,你输对了",defaultvalue:""}).inputValidator({min:1,max:10,onerror:"<font color='red'>必须纯数字</font>"}).regexValidator({regexp:"(^[0-9]*$)",onerror:"<font color='red'>只能输入数字</font>"});	
	
	//key	职位关键字	Varchar(255)	Not null
	$("#t_key").formValidator({onshow:"空格分隔、检索使用",onfocus:"空格分隔、检索使用",oncorrect:"通过"}).inputValidator({min:0,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>输入长度有误</font>"},onerror:"<font color='red'>输入长度有误</font>"});
	//attract	职业诱惑	Varchar(255)	Not null
	$("#t_attract").formValidator({onshow:"简单一句话，描述福利",onfocus:"简单一句话，描述福利",oncorrect:"通过"}).inputValidator({min:0,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>输入长度有误</font>"},onerror:"<font color='red'>输入长度有误</font>"});
	
	//Remark	补充说明	Text	null	
	$("#t_remark").formValidator({onshow:"补充说明，若无，可不填",onfocus:"补充说明，若无，可不填",oncorrect:"通过"}).inputValidator({min:0,empty:{leftempty:false,rightempty:false,emptyerror:"<font color='red'>输入长度有误</font>"},onerror:"<font color='red'>输入长度有误</font>"});
	
	

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
            	
    			<!-- 岗位名称 -->
    			<dd  class="mydd" style="margin-top:20px;"><span class="title">岗位名称：</span><input  required class="reg_input myInput" name="jobname" value="${requestScope.myrecruitment.jobname}" id="iptNickName" onblur="checkNickName(this.value)" type="text" /><span id="iptNickNameTip" class="onshow">至少2个字符</span></dd>
               <!--  minwage	最低薪资 -->
   				<dd class="mydd"><span class="title">最低薪资：</span><input  required class="reg_input myInput" name="minwage" value="${requestScope.myrecruitment.minwage}" type="text" id="t_minwage" /><span id="t_minwageTip" class="onshow showWarn"></span></dd>
               <!-- Maxwage	最高薪资	Double -->
            	<dd class="mydd"><span class="title">最高薪资：</span><input required class="reg_input myInput" name="maxwage" value="${requestScope.myrecruitment.maxwage}" type="text" id="t_maxwage"/><span id="t_maxwageTip" class="onshow showWarn"></span></dd>
            	<!-- 	Address	工作地点	Varchar(255)	Not null -->
            	<dd  class="mydd"><span class="title">工作地点：</span><input required class="reg_input myInput" name="address" value="${requestScope.myrecruitment.address}" id="iptAddress"type="text" /><span id="iptAddressTip" class="onshow showWarn"></span></dd>
            	<!-- workexperience	工作经验	Varchar(255)	Not null -->
            	<dd  class="mydd"><span class="title">工作经验：</span>
            													
            		<select class="form-control reg_input mySelcet" name="workexperience" id="workexperience" >
					  <option ${requestScope.myrecruitment.workexperience eq '无经验'?"selected=\"selected\"":""}>无经验</option>
					  <option ${requestScope.myrecruitment.workexperience eq '1-3年'?"selected=\"selected\"":""}>1-3年</option>
					  <option ${requestScope.myrecruitment.workexperience eq '3-5年'?"selected=\"selected\"":""}>3-5年</option>
					  <option ${requestScope.myrecruitment.workexperience eq '5-10年'?"selected=\"selected\"":""}>5-10年</option>
					  <option ${requestScope.myrecruitment.workexperience eq '10年以上'?"selected=\"selected\"":""}>10年以上</option>
					</select>
            	
           	 	</dd>
           	    <!-- 	worknature	工作性质	Varchar(255)	Not null -->
           	    <dd  class="mydd" style="margin-top:10px;"><span class="title">工作性质：</span>
            		<select class="form-control reg_input mySelcet" name="worknature" id="worknature">
					  <option ${requestScope.myrecruitment.worknature eq '技术'?"selected=\"selected\"":""}>技术</option>
					  <option ${requestScope.myrecruitment.worknature eq '产品'?"selected=\"selected\"":""}>产品</option>
					  <option ${requestScope.myrecruitment.worknature eq '设计'?"selected=\"selected\"":""}>设计</option>
					  <option ${requestScope.myrecruitment.worknature eq '运营'?"selected=\"selected\"":""}>运营</option>
					  <option ${requestScope.myrecruitment.worknature eq '市场'?"selected=\"selected\"":""}>市场</option>
					  <option ${requestScope.myrecruitment.worknature eq '经融'?"selected=\"selected\"":""}>经融</option>
					</select>
            	
           	 	</dd>
           	 	

        	    <!-- 	xueli	学历要求	Varchar(255)	Not null	 --> 
                <dd  class="mydd" style="margin-top:10px;"><span class="title">学历要求：</span>
            		<select class="form-control reg_input mySelcet" name="xueli" id="xueli">
					  
					  <option ${requestScope.myrecruitment.xueli eq '大专'?"selected=\"selected\"":""}>大专</option>
					  <option ${requestScope.myrecruitment.xueli eq '本科'?"selected=\"selected\"":""}>本科</option>
					  <option ${requestScope.myrecruitment.xueli eq '硕士'?"selected=\"selected\"":""}>硕士</option>
					  <option ${requestScope.myrecruitment.xueli eq '博士'?"selected=\"selected\"":""}>博士</option>
					  <option ${requestScope.myrecruitment.xueli eq '不限要求'?"selected=\"selected\"":""}>不限要求</option>
					</select>
           	 	</dd>
           	    <!-- 	type	类型	Varchar(255)	校招、社招	 -->
                <dd  class="mydd" style="margin-top:10px;"><span class="title">招聘类型：</span>
            		<select class="form-control reg_input mySelcet" name="type" id="type">
					  <option ${requestScope.myrecruitment.type eq '社招'?"selected=\"selected\"":""}>社招</option>
					  <option ${requestScope.myrecruitment.type eq '校招'?"selected=\"selected\"":""}>校招</option>
					 
					</select>
           	 	</dd>
                <dd>
                
                </dd>
                <!--   Number	数量	Int 	Not null		 -->
              	<dd class="mydd" style="margin-top:10px;"><span class="title">招聘人数：</span><input required class="reg_input myInput" name="number" value="${requestScope.myrecruitment.number}"  type="text" id="t_number" onblur="checknumber(this.value)" required/><span id="t_numberTip" class="onshow showWarn"></span></dd>
              
              	<!-- key	职位关键字	Varchar(255)	Not null	 -->
              	<dd class="mydd" style="margin-top:10px;"><span class="title">关键字：</span><input required class="reg_input myInput" name="jobkey" value="${requestScope.myrecruitment.jobkey}" type="text" id="t_key" onblur="checknumber(this.value)" required/><span id="t_keyTip" class="onshow showWarn"></span></dd>
              	
              	<!-- attract	职业诱惑	Varchar(255)	Not null		 -->
              	<dd class="mydd" style="margin-top:10px;"><span class="title">职业诱惑：</span><input required class="reg_input myInput" name="attract" value="${requestScope.myrecruitment.attract}" type="text" id="t_attract" onblur="checknumber(this.value)" required/><span id="t_attractTip" class="onshow showWarn"></span></dd>
              	
              	<!-- Jobduty	工作职责	Text	Not null		 -->
             	<dd  class="mydd" style="margin-top:10px;"><span class="title">工作职责：</span>
            		<textarea class="form-control jobduty" rows="5" id="jobduty" name="jobduty" >
            			${requestScope.myrecruitment.jobduty}
            		</textarea>
           	 	</dd>
           	 	
           	 	<!--   	jobrequired	工作要求	text	Not null -->		
              	<dd  class="mydd" style="margin-top:10px;"><span class="title">工作要求：</span>
            		<textarea class="form-control jobduty" rows="5" id="jobrequired" name="jobrequired" >
            			${requestScope.myrecruitment.jobrequired}
            		</textarea>
           	 	</dd>
           	 	
           	 	 <!--   Remark	补充说明	Text	null		 -->
              	<dd class="mydd" style="margin-top:10px;"><span class="title">补充说明：</span><input class="reg_input myInput" name="remark" value="${requestScope.myrecruitment.remark}" type="text" id="t_remark" /><span id="t_remarkTip" class="onshow showWarn"></span></dd>
              	
              	
             
              
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
            	
            </style>
         
    
			<div class="f_reg_but">
			    <!-- <input  type="submit" value="发布招聘" id="releaseResume"  onclick="saveRecruitment()"/> -->
				<input type="button" value="发布招聘" class="btn2" id="releaseResume" onclick = "saveRecruitment();" />
			
			</div>
   			
   			
            
   		
   			<script type="text/javascript">
	   			function saveRecruitment(){
	   				var jobname = $("#iptNickName").val();
	   				
	   				if(!isNull(jobname)){
	           			easyDialog.open({
	    					container : {
	    						content : "岗位名称不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				var minwage = $("#t_minwage").val();
	   				if(!isNull(minwage)){
	           			easyDialog.open({
	    					container : {
	    						content : "最低薪资不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				
	   				var maxwage =  $("#t_maxwage").val();
	   				if(!isNull(maxwage)){
	           			easyDialog.open({
	    					container : {
	    						content : "最高薪资不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				
	   				var address =  $("#iptAddress").val();
	   				if(!isNull(address)){
	           			easyDialog.open({
	    					container : {
	    						content : "地址不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				
	   			
	   				
	   				var number =  $("#t_number").val();
	   				if(!isNull(number)){
	           			easyDialog.open({
	    					container : {
	    						content : "招聘人数不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				
	   				var jobkey =  $("#t_key").val();
	   				if(!isNull(jobkey)){
	           			easyDialog.open({
	    					container : {
	    						content : "关键字不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				
	   				var attract =  $("#t_attract").val();
	   				if(!isNull(attract)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作诱惑不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				

	   				var jobduty1 =  $("#jobduty").val().trim();
	   				var jobduty =  $("#jobduty").val();
	   				if(!isNull(jobduty1)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作责任不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	   				
	   				var jobrequired1 =  $("#jobrequired").val().trim();
	   				var jobrequired =  $("#jobrequired").val();
	   				
	   				if(!isNull(jobrequired1)){
	           			easyDialog.open({
	    					container : {
	    						content : "工作要求不能为空"
	    					},
	    					autoClose : 1000
	    				});
	           			return;
	           		}
	           	 	//jobname t_minwage  t_maxwage iptAddress workexperience worknature xueli type 
	           	 	//t_number t_key t_attract jobduty jobrequired t_remark
	           		
	           	   var workexperience = $("#workexperience").val();
	           	   var worknature = $("#worknature").val();
	               var xueli = $("#xueli").val();
	           	   var type = $("#type").val();
	           	   var remark = $("#t_remark").val();
	           	   
	           	  
	           	 	
	   			//然后提交到后台管理系统
	           		$.ajax({
	 					type: "POST",
	 					url: '${pageContext.request.contextPath}/myrecruitment/saveRecruitment',
	 			    	data: {
	 			    		jobname:jobname,
	 			    		minwage:minwage,
	 			    		maxwage:maxwage,
	 			    		address:address,
	 			    		workexperience:workexperience,
	 			    		worknature:worknature,
	 			    		xueli:xueli,
	 			    		type:type,
	 			    		number:number,
	 			    		jobkey:jobkey,
	 			    		attract:attract,
	 			    		jobduty:jobduty,
	 			    		jobrequired:jobrequired,
	 			    		remark:remark

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
	 							parent.$.XYTipsWindow.removeBox();
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