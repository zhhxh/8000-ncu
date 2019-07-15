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
  <title>我的消息</title>
  <!-- 头部展览工具栏的css样式，一般不可以少，头部的菜单栏是需要的  start -->
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
  <!-- 头部展览工具栏的css样式，一般不可以少，头部的菜单栏是需要的  end -->

  <!--左边菜单--右边的画板的样式 start-->
  <link href="<%=path %>css/main.css" rel="stylesheet" type="text/css" />

  <!--左边菜单--右边的画板的样式 end-->
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




  <!-- windows end -->



  <!-- 引入boostrap的样式 strat -->
   <!-- 全局js -->

  	 <script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript">
        var $144 = $;
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/window/js/jquery.XYTipsWindow.2.9.xiaozheng.js"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/jquery.min.js?v=2.1.4"></script>
  	<script type="text/javascript">
        var $214 = $;

    </script>


<!--   	<script>
	    // 现在window.$和window.jQuery是2.1.4版本:
	    console.log($().jquery); // => '1.4.4'
	    var jq1_3_2 = jQuery.noConflict(true);
	   	console.log(jq1_3_2().jquery);
	    // 现在window.$和window.jQuery被恢复成1.4.4版本:
	    console.log($().jquery); // => '2.1.4'



	    // 可以通过$jq访问1.11版本的jQuery了
	</script> -->
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

   <!-- 引入弹窗提醒功能的css样式 start -->

  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css" />

  <!-- 引入弹窗提醒功能的css样式 start -->

 </head>
<body>
  <!-- 动态包含头部导航 -->
  <jsp:include page="../../company/common/header.jsp" flush="true" />

  <!-- 展示一张图片 -->
  <img style="width:100%;margin:0 auto;height:130px;" src="${pageContext.request.contextPath}/static/company/images/baseMessagetest.png" />

  <div class="bs_deliver">
   <div class="dl_content dl_gray_bg">
    <!---->
    <!--申请职位 s-->
    <!--申请职位 e-->
    <!--我的简历 s-->
    <!--简历内容 s-->

    <div class="dl_bigwrap dl_heightagain clearfix dl_grey_bc">
     <div class="leftmenu" style="width:16%;">
      <div class="dl_greyline_bg">
       <span class="dl_menutit">个人中心</span>
      </div>

      <!-- 静态包含 -->

       <ul class="dl_menulist clearfix" id="myMenu">
       <%--  <li> <a href="${pageContext.request.contextPath}/user/userInfo" class="accountSettings">账户设置</a> </li>
        <li> <a href="member_apply.html" class="apply">我的申请</a> </li>

        <li > <a href="member_collect.html" class="shoucang">招聘列表</a> </li>
         <li > <span class="dl_menuchose" style="position: absolute;margin-top: -8px;">招聘列表</span> </li>
   		 --%>
   		 	 <li> <a href="${pageContext.request.contextPath}/companyUser/index" class="profile">HR信息</a> </li>
       		 <li> <a href="${pageContext.request.contextPath}/company/companyInfo" class="apply">公司信息</a> </li>
      		 <li> <a href="${pageContext.request.contextPath}/company/releaseResume" class="profile">发布招聘</a> </li>
      		 <li> <a href="${pageContext.request.contextPath}/myrecruitment/recruitmentlist" class="shoucang">招聘列表</a> </li>
      		 <li> <a href="${pageContext.request.contextPath}/applay/applaylist" class="cominfo">申请中心</a> </li>
      		 <li class="selected settingchoose"> <span class="dl_menuchose" style="position: absolute;margin-top: -8px;">消息中心</span> </li>
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

     <div class="rightcontent dl_height1 dl_new_error_wrap" style="width:79%;">
      <h3 class="dl_bigtit"><span class="dl_postit">消息列表</span></h3>
      <div class="dl_importprofile">
       <a class="import dl_import" href="javascript:void(0)"></a>
       <a id="previewBtn" class="look" target="_self" href="#" style=""></a>
       <span id="previewBtnDisable" class="look" style="color:#666;display:none;"></span>
      </div>

 	 <div class="dl_basicinfo">
	       <!-- 基本信息小标题 start  -->



	        <style>
	        	.selectCondition{
	        		color:#999999;
	        		font-size:17px;
	        		float:left;

	        	}

	        	.mySelect{
	        		width:400px;
	        	}

	        </style>

	       <!-- 基本信息小标题 start  -->
	        <div class="wrapper wrapper-content  animated fadeInRight">
		        <div class="row">
		            <div class="col-sm-12" style="margin-left:-50px;">
		                <div class="ibox ">

		                    <div class="ibox-content" style="width:109%;">

		                        <div class="jqGrid_wrapper" style="width:109%;">
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
		      <c:forEach items ="${newslist}" var="data" varStatus="status">

		    		<script type="text/javascript">
		    			//处理当前时间，转化成良好的格式
						 var datetime = new Date("${data.createtime}"+"  GMT+0800");

		    			 var year = datetime.getFullYear();

		    			 var month = datetime.getMonth() + 1;
		    			 var date = datetime.getDate();
		    			 var hours = datetime.getHours()
		    			 var minutes = datetime.getMinutes();
		    			 var seconds = datetime.getSeconds()
		    			 var createtime = year+"-"+month+"-"+date+" " + hours+":"+minutes+":"+seconds;


		    			 //console.log(${status.index});
		    			 lists[${status.index} ] = {
		    					 number:"${status.index}",
		    					 title:"${data.title}",
		    					 content:"${data.content}",
		    					 createtime:createtime,
		    					 operation: "<span style='color:#65A8DC;cursor:pointer;' onclick='newdetail(${data.nid})'>详情</span> " + "&nbsp;&nbsp;" +
		    					 "<span style='color:#65A8DC;cursor:pointer;' onclick='mydelete1(${data.nid});' >删除</span> " + "&nbsp;&nbsp;"
		    			 };


		    		</script>
		    </c:forEach>



	      	<script>

      	function newdetail(nid){
      		//alert(uid);
         	var openUrl = "${pageContext.request.contextPath}/news/newdetail?nid="+nid;//弹出窗口的url
         	var iWidth=1000; //弹出窗口的宽度;
         	var iHeight=460; //弹出窗口的高度;
         	var iTop = (window.screen.availHeight-30-iHeight)/2; //获得窗口的垂直位置;
         	var iLeft = (window.screen.availWidth-10-iWidth)/2; //获得窗口的水平位置;
         	window.open(openUrl,"","height="+iHeight+", width="+iWidth+", top="+iTop+", left="+iLeft);

         }

      	 function mydelete1(id){

      		$.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/news/delete',
		    	data: {
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
			            window.location.href = '${pageContext.request.contextPath}/news/newslist'
						//window.location.href = 'http://baidu.com'
					}

				}
			});
      	 }

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
                colNames: ['序号', '标题', '内容', '时间', '操作'],
                colModel: [
                	  {
                          name: 'number',
                          index: 'number',
                          editable: true,
                          width: 40,

                      },
                     {
                        name: 'title',
                        index: 'title',
                        editable: true,
                        width: 40,

                    },
                    {
                        name: 'content',
                        index: 'content',
                        editable: true,
                        width: 160,

                    },
                     {
                        name: 'createtime',
                        index: 'createtime',
                        editable: true,
                        width: 80,
                        sorttype: "date",
                        formatter: "datetime"

                    },

                    {
                        name: 'operation',
                        index: 'operation',
                        editable: true,
                        width: 120,
                        align: "left"

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

        function open_window(uid,aid){
        	//alert(uid);
        	var openUrl = "${pageContext.request.contextPath}/user/showMemberResumeForCompany?uid="+uid+"&aid="+aid;//弹出窗口的url
        	var iWidth=1000; //弹出窗口的宽度;
        	var iHeight=860; //弹出窗口的高度;
        	var iTop = (window.screen.availHeight-30-iHeight)/2; //获得窗口的垂直位置;
        	var iLeft = (window.screen.availWidth-10-iWidth)/2; //获得窗口的水平位置;
        	window.open(openUrl,"","height="+iHeight+", width="+iWidth+", top="+iTop+", left="+iLeft);
        }

        function invite(aid,state){
        	var jobname = $("#jobname").val();
            var state = $("#state").val();
        	if(state == 3){
        		alert("已经给该用户发送了面试邀请通知了，不要重复操作");
        		return;
        	}
        	//发送ajax请求
        	$.ajax({
 					type: "POST",
 					url: '${pageContext.request.contextPath}/applay/invited',
 			    	data: {
 			    		id:aid

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
 							/* easyDialog.open({
 					      		  container : {
 					      		    header : '面试邀请提示',
 					      		    content : data.data
 					      		  }

 					      		}); */
 				            alert(data.data);
 							window.location.href = '${pageContext.request.contextPath}/applay/applaylist?jobname='+jobname+"&state="+state;
 						}

 					}
 				});

        }

        function refuse(aid,state){
        	var jobname = $("#jobname").val();
            var state = $("#state").val();
        	if(state == 4){
        		alert("已经将该申请标志位不合适状态，请不要重复点击操作，谢谢");
        		return;
        	}

        	//发送ajax请求
        	$.ajax({
 					type: "POST",
 					url: '${pageContext.request.contextPath}/applay/refuse',
 			    	data: {
 			    		id:aid
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

 				            alert(data.data);
 				            window.location.href = '${pageContext.request.contextPath}/applay/applaylist?jobname='+jobname+"&state="+state;
 						}

 					}
 				});

        }

        function mydelete(aid){
        	var jobname = $("#jobname").val();
            var state = $("#state").val();
            $.ajax({
					type: "POST",
					url: '${pageContext.request.contextPath}/applay/delete',
			    	data: {
			    		id:aid
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
				            window.location.href = '${pageContext.request.contextPath}/applay/applaylist?jobname='+jobname+"&state="+state;
						}

					}
				});
        }

        function myclear(){
        	var jobname = $("#jobname").val("");
            var state = $("#state").val("");
        }

    </script>



	       <!-- 核心基础内容 start -->



	       <!-- 核心基础内容 end -->

     </div>

   	</div>
    <!--简历内容 e-->
   </div>
   <div class="dl_footer">
    <!-- 静态包含 -->
	   <span> &copy;2018&nbsp;&nbsp;zkhl.huilan.com&nbsp;&nbsp;北京市海淀区东北旺西路8号9号楼二区305 &nbsp;联系电话&nbsp;010-82826258</span>
   </div>
  </div>




   <!-- 弹窗插件 start-->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
   <!-- 弹窗插件 end -->



 </body>
</html>
