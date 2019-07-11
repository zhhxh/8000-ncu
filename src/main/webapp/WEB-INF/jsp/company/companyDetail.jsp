<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
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
  
  <!--左边菜单--右边的画板的样式 end--> 
  
  
  
  <!-- 引入boostrap的样式 strat -->
   <!-- 全局js -->
    <script src="${pageContext.request.contextPath}/static/boostrap/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js?v=3.3.6"></script>



    <!-- Peity -->
    <script src="${pageContext.request.contextPath}/static/boostrap/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- jqGrid -->
    <script src="${pageContext.request.contextPath}/static/boostrap/js/plugins/jqgrid/i18n/grid.locale-cn.js?0820"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/plugins/jqgrid/jquery.jqGrid.min.js?0820"></script>

    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath}/static/boostrap/js/content.js?v=1.0.0"></script>
  
  
  
  
  <%--  ${pageContext.request.contextPath}/static/boostrap/ --%>
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="${pageContext.request.contextPath}/static/boostrap/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- jqgrid-->
    <link href="${pageContext.request.contextPath}/static/boostrap/css/plugins/jqgrid/ui.jqgrid.css?0820" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/static/boostrap/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/style.css?v=4.1.0" rel="stylesheet">
  <!-- 引入boostrap的样式 end -->
  
 </head> 
<body> 
  
  <!-- 动态包含头部导航 -->
  <jsp:include page="../../common/header.jsp" flush="true" />
	
  <!-- 静态包含 -->
  <%@include file="../../common/nav.jsp"%>

  <div class="bs_deliver"> 
   <div class="dl_content dl_gray_bg"> 
    <!----> 
    <!--申请职位 s--> 
    <!--申请职位 e--> 
    <!--我的简历 s--> 
    <!--简历内容 s--> 

    <div class="dl_bigwrap dl_heightagain clearfix dl_grey_bc" style="background-color:#F9F9F9;"> 
      
     <div class="rightcontent dl_height1 dl_new_error_wrap" style="width:97%;"> 
      <h3 class="dl_bigtit"><span class="dl_postit">公司信息</span></h3> 
   
    
 	 <div class="dl_basicinfo"> 
	       <!-- 基本信息小标题 start  -->
	    	<div id = "baseMessage">
	    	<img src="http://localhost:8080/pic/${companyDetail.logo }" class="companyImg">
	    		<span class="companyName">${companyDetail.companyname }</span>
	    		<span class="companyOther">${companyDetail.industry }   |  ${companyDetail.minpeople }-${companyDetail.maxpeople }人   |  ${company.development }</span>
	    	</div>
	    	<div class="description">
	    		   公司介绍：<br/>&nbsp;&nbsp;&nbsp;&nbsp;${companyDetail.description }
	    	</div>
	    	<div class="description">
	    		   公司产品：<br/>&nbsp;&nbsp;&nbsp;&nbsp; ${companyDetail.product }
	    	</div>
	    	<div class="description">
	    		   公司宗旨：<br/>&nbsp;&nbsp;&nbsp;&nbsp; ${companyDetail.remark }
	    	</div>
	    	<div class="description">
	    		   公司网址：&nbsp;&nbsp;&nbsp;&nbsp; <a href="${companyDetail.companyurl }"  target="_blank" style="font-size:15px;">${companyDetail.companyname }</a>
	    	</div>
	    	<div class="description">
	    		   公司地址：&nbsp;&nbsp;&nbsp;&nbsp; ${companyDetail.address }
	    	</div>
	    	<div class="description">
	    		   联&nbsp;系 &nbsp;人：&nbsp;&nbsp;&nbsp;&nbsp; ${companyDetail.simplename }
	    	</div>
	    	<div class="description">
	    		  邮&nbsp;&nbsp;&nbsp;&nbsp;箱&nbsp;&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;  ${companyDetail.email }
	    	</div>
	    	
	    	
	    	<style>
	    		#baseMessage{
	    			border:2px solid #F9F9F9;
	    			box-shadow:2px 2px 2px #ccc;
	    			overflow: hidden;
	    		
	    		}
	    		.companyImg{
	    			width:100px;
	    			height:100px;
	    			border-radius: 10px;
	    			float:left;
	    		}
	    		.companyName{
	    		    width:60%;
	    			float:left;
	    			margin-left:15px;
	    			font-weight: bold;
	    			font-size:20px;
	    			
	    		
	    		}
	    		
	    		.companyOther{
	    			width:60%;
	    			float:left;
	    			margin-left:15px;
	    			font-size:16px;
	    			color:#999999;
	    			margin-top:10px;
	    		
	    		}
	    		.description{
	    			margin:20px 20px 10px 10px;
	    			font-size:16px;
	    			
	    		
	    		}
	    	</style>
	    	
	    	
	       <!-- 基本信息小标题 start  -->
	        <div class="wrapper wrapper-content  animated fadeInRight">
		        <div class="row">
		            <div class="col-sm-12" style="margin-left:-50px;">
		                <div class="ibox ">
		                   
		                    <div class="ibox-content" style="width:106%;">
		                      
		                        <div class="jqGrid_wrapper" style="width:107%;">
		                            <table id="table_list_2"></table>
		                            <div id="pager_list_2"></div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    
		     <script type="text/javascript">
		    	var lists=new Array();
		    	
		    </script>
		      
		      <c:forEach items ="${requestScope.mycruitments}" var="data" varStatus="status">
    				
		    		<script type="text/javascript">
		    			//处理当前时间，转化成良好的格式
						 var datetime = new Date("${data.publictime}"+"  GMT+0800");
		    			 var year = datetime.getFullYear();
		    			 var month = datetime.getMonth() + 1;
		    			 var date = datetime.getDate();
		    			 var hours = datetime.getHours()
		    			 var minutes = datetime.getMinutes();
		    			 var seconds = datetime.getSeconds()
		    			 var publictime = year+"-"+month+"-"+date+" " + hours+":"+minutes+":"+seconds;
		    	        
		    			
		    			  lists[${status.index}] = {
		    					 jobname:"<a href=\"${pageContext.request.contextPath}/myrecruitment/detail?id=${data.id }\" target='_blank'>${data.jobname}</a>",
		    					 type:"${data.type}",
		    					 workexperience:"${data.workexperience}",
		    					 publictime:publictime
		    					 
		    			 }; 
		    		</script>
		    </c:forEach> 
	 
	      	<script>
	      	$(document).ready(function () {
				
	            $.jgrid.defaults.styleUI = 'Bootstrap';
	            // Examle data for jqGrid
	            var mydata = [
	                {
	                	jobname: "JAVA工程师",
	                	type: "社招",
	                	worknature: "1-3年工作经验",
	                	publictime: "2007-10-02 10:00:00",
	                	operation: "增 删 改 查"
	                   
	                }
	            ];

	         

	            // Configuration for jqGrid Example 2
	            $("#table_list_2").jqGrid({
	                data: lists,
	                datatype: "local",
	                height: 450,
	                autowidth: true,
	                shrinkToFit: true,
	                rowNum: 10,
	                rowList: [10, 20, 30],
	                colNames: ['岗位名称', '招聘类型', '工作经验', '发布时间'],
	                colModel: [
	                    {
	                        name: 'jobname',
	                        index: 'jobname',
	                        editable: true,
	                        width: 60,
	                        search: true
	                    },
	                    {
	                        name: 'type',
	                        index: 'type',
	                        editable: true,
	                        width: 50,
	                     
	                    },
	                    {
	                        name: 'workexperience',
	                        index: 'workexperience',
	                        editable: true,
	                        width: 40
	                    }, {
	                        name: 'publictime',
	                        index: 'publictime',
	                        editable: true,
	                        width: 100, 
	                        sorttype: "date",
	                        formatter: "datetime"
	                        
	                    }
	                ],
	                pager: "#pager_list_2",
	                viewrecords: true,
	                //caption: "jqGrid 示例2",
	                add: true,
	                edit: true,
	                addtext: 'Add',
	                edittext: 'Edit',
	                hidegrid: false
	            });

	            // Add selection
	            $("#table_list_2").setSelection(4, true);


	            // Setup buttons
	            $("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
	                edit: false,
	                add: false,
	                del: false,
	                search: true
	            }, {
	                height: 600,
	                reloadAfterSubmit: true
	            });

	            // Add responsive to jqGrid
	            $(window).bind('resize', function () {
	                var width = $('.jqGrid_wrapper').width();
	          
	                $('#table_list_2').setGridWidth(width);
	            });
	        });
	        
	      
    </script> 
	      	
	       <!-- 核心基础内容 start -->
	       
	       
	       
	       <!-- 核心基础内容 end -->
   					
     </div> 
      
   	</div>
    <!--简历内容 e--> 
   </div> 
   <div class="dl_footer"> 
    <!-- 静态包含 -->
	  
   </div> 
  </div>  
  
 

  
   <!-- 弹窗插件 start-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
   <!-- 弹窗插件 end -->
   
   

 </body>
</html>
