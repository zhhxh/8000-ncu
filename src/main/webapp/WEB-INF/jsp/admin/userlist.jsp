<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/css/dialog.css">
<%@include file="../../common/admin/header.jsp" %>

</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                   
                    <div class="ibox-content">
                     <!-- 这里写多条件查询框 -->
						   <div class="row">
						            <div class="col-sm-12">
						                <div class="ibox float-e-margins">
						                    <div class="ibox-title">
						                    	
						                        <h5>多条件查询</h5>
						                        <div class="ibox-tools">
						                            <a class="collapse-link">
						                                <i class="fa fa-chevron-up"></i>
						                            </a>
						                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
						                                <i class="fa fa-wrench"></i>
						                            </a>
						                           
						                            <a class="close-link">
						                                <i class="fa fa-times"></i>
						                            </a>
						                        </div>
						                    </div>
						  
						              
						                    <div class="ibox-content">
						                        <form role="form" method="get" action="${pageContext.request.contextPath}/sysadmin/userlist" class="form-inline">
						                            <div class="form-group">
						                                
						                                <label for="exampleInputEmail2">用户账号:</label>
						                                <input type="input" placeholder="请输入用户账号" name="username" id="username" value="${requestScope.username }" class="form-control">
						                            </div>
						                            <div class="form-group" style="margin-left:50px;">
						                                
						                                <label for="exampleInputEmail2">qq查询:</label>
						                                <input type="input" placeholder="请输入用户qq" name="qq" id="qq" value="${requestScope.qq }" class="form-control">
						                            </div>
						                            <div class="form-group" style="margin-left:50px;">
						                                
						                                <label for="exampleInputEmail2">微信查询:</label>
						                                <input type="input" placeholder="请输入用户微信" name="weixin" id="weixin" value="${requestScope.weixin }" class="form-control">
						                            </div>
							                            
							                        <div class="form-group" style="margin-left:50px;">
						                                <label for="exampleInputEmail2">使用状态:</label>
						                                <select class="form-control" name="isaudit" id="isaudit">
						                                    <option value="3" ${is eq 3 ? "selected=\"selected\"":"" }>--选择是否审核--</option>
					                                        <option value="2" ${is eq 2 ? "selected=\"selected\"":"" }>停用</option>
					                                        <option value="1" ${is eq 1 ? "selected=\"selected\"":"" }>正常使用</option>
					                                        
					                                    </select>
						                            </div>  
						                            <input type="submit" value="搜索" class="btn btn-primary" style="margin-top:10px;margin-left:50px;">
						                            <button  class="btn btn-primary" style="margin-top:10px;margin-left:50px;" onclick="zhikong()">置空</button>
						                        </form>
						                    </div>
						                </div>
						            </div>
						           
						        </div>
						        <script type="text/javascript">
						        	function zhikong(){
						        		$("#username").val("");
						        		$("#isaudit").val("3");
						        		$("#qq").val("");
						        		$("#weixin").val("")
						        		window.location.href="${pageContext.request.contextPath}/sysadmin/userlist";
						        	}
						        
						        </script>
                        <div class="jqGrid_wrapper">
                            <table id="table_list_2"></table>
                            <div id="pager_list_2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="../../common/admin/footer.jsp" %>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/js/dialog.js"></script>
    <!-- Page-Level Scripts -->
    <script type="text/javascript">
		    	var lists=new Array();
		    	
	</script>
     <c:forEach items ="${userlists}" var="data" varStatus="status">
  		
    		<script type="text/javascript">
    			//处理当前时间，转化成良好的格式
    			 var isaudit;
				 if(${data.isaudit} == 1){
					 isaudit = "<font color='#3CB7F6'>正常使用</font>";
				 }else  {
					 isaudit = "<font color='#FC4070'>停用</font>";
				 }
				 var number = ${status.index} + 1;
    			 lists[${status.index}] = {
    					 id:number,
    					 username:"${data.username}",
    					 qq:"${data.qq}",
    					 weixin:"${data.weixin}",
    					 isaudit:isaudit,
    					 register:"${data.register}",
    					 operation: "<span style='color:#65A8DC;cursor:pointer ' onclick='chongzhi(\"${data.id}\")'>重置密码\</span> " + "&nbsp;&nbsp;&nbsp;" +
    					 "<span style='color:#65A8DC;cursor:pointer ;' onclick='tingyong(\"${data.id}\",\"${data.isaudit}\")'>冻结\</span> " + "&nbsp;&nbsp;&nbsp;" +
    					 "<span style='color:#65A8DC;cursor:pointer ;' onclick='jiedong(\"${data.id}\",\"${data.isaudit}\")'>解冻\</span> " + "&nbsp;&nbsp;&nbsp;"
    					 
    					 
    			 };
    		</script>
	</c:forEach>
    
    
    
    <script>
    	function jiedong(id,is){
    		var username = $("#username").val();
    		var weixin = $("#weixin").val();
    		var qq = $("#qq").val();
    		var isaudit = $("#isaudit").val();
    		if(is == 1){
    			$('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:'该账户已经正常使用了，不要重复操作'})
    			return ;
    		}
    		$.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/sysadmin/jiedong',
		    	data: {
		    		id:id
		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("-1" == data.code){
						 alert(data.data);
					}else if("1" == data.code){
						window.location.href="${pageContext.request.contextPath}/sysadmin/userlist?username="+username+"&qq="+qq+"&weixin="+weixin+"&isaudit="+isaudit
					} 
				}
			});  
    	}
    	function tingyong(id,is){
    		var username = $("#username").val();
    		var weixin = $("#weixin").val();
    		var qq = $("#qq").val();
    		var isaudit = $("#isaudit").val();
    		if(is == 2){
    			$('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:'该账户已经停用了，不要重复操作'})
    			return ;
    		}
    		$.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/sysadmin/tingyong',
		    	data: {
		    		id:id
		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("-1" == data.code){
						 alert(data.data);
					}else if("1" == data.code){
						window.location.href="${pageContext.request.contextPath}/sysadmin/userlist?username="+username+"&qq="+qq+"&weixin="+weixin+"&isaudit="+isaudit
					} 
				}
			});  
    	}
    	function chongzhi(id) {
    		
    		 $.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/sysadmin/chongzhi',
		    	data: {
		    		id:id
		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("-1" == data.code){
						 alert(data.data);
					}else if("1" == data.code){
						//alert(data.data);
						$('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:'重置密码成功，已经将最新的密码以邮件的形式发送给对方'})
					} 
				}
			});   
		}
    	function pass(id,is){
    		var companyname = $("#companyname").val();
     		var isallow = $("#isallow").val();
     
    		if(is == "2"){
    			$('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:'已经通过审核了，不要重复操作!'})
    		}else{
    			//发送ajax请求删除数据
         		$.ajax({
    				type: "POST",
    				url: '${pageContext.request.contextPath}/sysadmin/pass',
    		    	data: {
    		    		id:id

    		    	},
    				dataType:'json',
    				cache: false,
    				success: function(data){
    					 if("-1" == data.code){
    						 $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:data.data})
    					}else if("1" == data.code){
    					
    						window.location.href = '${pageContext.request.contextPath}/sysadmin/companylist?companyname='+companyname+"&isallow="+isallow;
    					} 
    					
    				}
    			}); 
    		}
    		
    		
    	}
     	
        $(document).ready(function () {

            $.jgrid.defaults.styleUI = 'Bootstrap';
            // Examle data for jqGrid
            var mydata1 = [
            	{
                    id: "1",
                    invdate: "2010-05-24",
                    name: "test",
                    note: "<p  onclick='mydelete()'>note</p>",
                    tax: "10.00",
                    total: "2111.00"
                },
                {
                    id: "2",
                    invdate: "2010-05-25",
                    name: "test2",
                    note: "note2",
                    tax: "20.00",
                    total: "320.00"
                },
                {
                    id: "3",
                    invdate: "2007-09-01",
                    name: "test3",
                    note: "note3",
                    tax: "30.00",
                    total: "430.00"
                }
            ];

            // Configuration for jqGrid Example 1
            
            // Configuration for jqGrid Example 2
            $("#table_list_2").jqGrid({
                data: lists,
                datatype: "local",
                height: 450,
                autowidth: true,
                shrinkToFit: true,
                rowNum: 10,
                rowList: [10, 20, 30],
                colNames: ['序号', '账号', '绑定qq', '绑定微信','正常使用', '注册时间',  '操作'],
                colModel: [
                    {
                        name: 'id',
                        index: 'id',
                        editable: true,
                        width: 60,
                        sorttype: "int",
                        search: true
                    }, {
                        name: 'username',
                        index: 'username',
                        editable: true,
                        width: 150
                    }, {
                        name: 'qq',
                        index: 'qq',
                        editable: true,
                        width: 100
                    }, {
                        name: 'weixin',
                        index: 'weixin',
                        editable: true,
                        width: 100
                    },{
                        name: 'isaudit',
                        index: 'isaudit',
                        editable: true,
                        width: 60
                    },
                    {
                        name: 'register',
                        index: 'register',
                        editable: true,
                        width: 90,
                        sorttype: "datetime",
                        formatter: "datetime"
                    }, 
                    {
                        name: 'operation',
                        index: 'operation',
                        editable: true
                     
                    }
                ],
                pager: "#pager_list_2",
                viewrecords: true,
                caption: "公司信息列表",
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
                search: false
            }, {
                height: 200,
                reloadAfterSubmit: false
            });

            // Add responsive to jqGrid
            $(window).bind('resize', function () {
                var width = $('.jqGrid_wrapper').width();
              
                $('#table_list_2').setGridWidth(width);
            });
        });
        
    
    </script>
		

</body>
</html>