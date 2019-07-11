<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司信息列表</title>
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
						                    	
						                        <h5>条件查询</h5>
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
						                        <form role="form" method="get" action="${pageContext.request.contextPath}/sysadmin/companylist" class="form-inline">
						                            <div class="form-group">
						                                
						                                <label for="exampleInputEmail2">公司名称:</label>
						                                <input type="input" placeholder="请输入公司名称" name="companyname" id="companyname" value="${requestScope.companyname }" class="form-control">
						                            </div>
						                            
						                           <div class="form-group" style="margin-left:50px;">
						                                <label for="exampleInputEmail2">是否审核:</label>
						                                <select class="form-control" name="isallow" id="isallow">
						                                    <option value="3" ${is eq 3 ? "selected=\"selected\"":"" }>--选择是否审核--</option>
					                                        <option value="2" ${is eq 2 ? "selected=\"selected\"":"" }>审核</option>
					                                        <option value="1" ${is eq 1 ? "selected=\"selected\"":"" }>未审核</option>
					                                        
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
						        		$("#companyname").val("");
						        		$("#isallow ").val("3");
						        		window.location.href="${pageContext.request.contextPath}/sysadmin/companylist";
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
     <c:forEach items ="${companylist}" var="data" varStatus="status">
  		
    		<script type="text/javascript">
    			//处理当前时间，转化成良好的格式
    			 var isAllow;
		 		 if(${data.isallow} == 2){
					 isAllow = "<font color='#3CB7F6'>已审核</font>";
				 }else  {
					 isAllow = "<font color='#FC4070'>未审核</font>";
				 }
    			 lists[${status.index}] = {
    					 id:"${status.index}",
    					 companyname:"${data.companyname}",
    					 industry:"${data.industry}",
    					 development:"${data.development}",
    					 registertime:"${data.registertime}",
    					 isallow:isAllow,
    					 operation: 
    					 "<span class='btn btn-primary btn-sm' style='color:white;cursor:pointer ;' onclick='pass(\"${data.id}\",\"${data.isallow}\")'>通过\</span> "+ "&nbsp;&nbsp;&nbsp;"+
    					 "<span class='btn btn-primary btn-sm' style='color:white;cursor:pointer ;' onclick='mydelete(\"${data.id}\")'>删除\</span> "+ "&nbsp;&nbsp;&nbsp;"+
    					 "<a data-toggle='modal' class='btn btn-primary' href='${pageContext.request.contextPath}/sysadmin/companylist#modal-form' onclick='open_d(\"${data.id}\")'>查看</a>"
    					 
    			 };
    			 
    		</script>
	</c:forEach>
    
    <script type="text/javascript">
    	function open_d(id){
    		//根据当前的id去后台查询数据
    		$.ajax({
				type: "POST",
				url: '${pageContext.request.contextPath}/sysadmin/companyDetail',
		    	data: {
		    		id:id
		    	},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("-1" == data.code){
						 $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:data.data})
					}else if("1" == data.code){
			
						//companyname,simplename,industry,address,companyUrl,,minpeople,maxpeople  7 
                        //remark/releasednumber/description/product/jianjie/development/money  7
                        // 3个图片
                        
                        //17个字段 --》 三个图片  三个文本域 一个 下拉选框    文本框剩下：10个
                        $("#id").val(data.data.id);
                        $("#companyname1").val(data.data.companyname);
                        $("#simplename").val(data.data.simplename);
                        $("#industry").val(data.data.industry);
                        $("#address").val(data.data.address);
                        $("#companyurl").val(data.data.companyurl);
                        $("#minpeople").val(data.data.minpeople);
                        $("#maxpeople").val(data.data.maxpeople);
                        $("#remark").val(data.data.remark);
                        $("#releasednumber").val(data.data.releasednumber);
                        $("#money").val(data.data.money);
                  		
                        //处理下拉选框
                        $("#development").val(data.data.development);
                        
                        //处理三个文本域
                        $("#description").val(data.data.description);
                        $("#product").val(data.data.product);
                        $("#jianjie").val(data.data.jianjie);
                        
                        //设置图片的url
                        $('#logo').attr('src','http://localhost:8080/upload/'+datsa.data.logo);
                        $('#idcardimage').attr('src', 'http://localhost:8080/upload/'+data.data.idcardimage);
                        $('#companyimage').attr('src','http://localhost:8080/upload/'+data.data.companyimage);
                        
					} 
					
				}
			}); 
    	}
    
    
    </script>
    <!-- 打开的窗口 start -->
    
    <div id="modal-form" class="modal fade" aria-hidden="true">
        <div class="col-sm-8" style="margin-top:50px;margin-left:10%;">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class="m-t-none m-b">公司详细信息</h3>
                            <form role="form" class="form-horizontal" method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/sysadmin/updateCompany" >
	                            <input type="hidden" name="id" id="id" >
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">公司名称：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="companyname1" name="companyname">
	                                </div>
	                              
	                                 <label class="col-sm-2 control-label">简称：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="simplename" name="simplename">
	                                </div>
	                            </div>
	                            
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">公司logo：</label>
	                                <div class="col-sm-1">
	                                    <img src="" class="img-responsive" style="height:40px;width:40px;" alt="" id="logo">
	                                </div>
	                                <div class="col-sm-3">
	                                    <input type="file" class="form-control" name="logo1">
	                                </div>
	                                 
	                                 <label class="col-sm-2 control-label">行业：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="industry" name="industry">
	                                </div>
	                            </div>
                                <div class="form-group">
	                                <label class="col-sm-2 control-label">公司地址：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="address" name="address">
	                                </div>
	                                
	                                 <label class="col-sm-2 control-label">网址：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="companyurl" name="companyurl">
	                                </div>
	                            </div>
	                             
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">最少人数：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="minpeople" name="minpeople">
	                                </div>
	                                
	                                 <label class="col-sm-2 control-label">最多人数：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="maxpeople" name="maxpeople">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">发展阶段：</label>
	                                <div class="col-sm-4">
	                                   	<select class="form-control" required name="development" id="development" name="development">
											  <option>未融资</option>
											  <option>天使轮</option>
											  <option>A轮</option>
											  <option>B轮</option>
											  <option>C轮</option>
											  <option>D轮</option>
											  <option>上市公司</option>
											  <option>不需要融资</option>
										</select>
	                                </div>
	                             
	                                 <label class="col-sm-2 control-label">公司宗旨：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="remark" name="remark">
	                                </div>
	                            </div>
	                           
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">可发布简历数目：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="releasednumber" name="releasednumber">
	                                </div>
	                                
	                                 <label class="col-sm-2 control-label">充值金额：</label>
	                                <div class="col-sm-4">
	                                    <input type="text" class="form-control" required id="money" name="money">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">身份证：</label>
	                                <div class="col-sm-1">
	                                    <img src="" id="idcardimage" class="img-responsive" style="height:40px;width:40px;" alt="">
	                                </div>
	                                <div class="col-sm-3">
	                                    <input type="file" class="form-control" name="idcardimage1">
	                                </div>
	                                 <label class="col-sm-2 control-label">营业执照：</label>
	                                <div class="col-sm-1">
	                                    <img id="companyimage" class="img-responsive" style="height:40px;width:40px;" alt="">
	                                </div>
	                                <div class="col-sm-3">
	                                    <input type="file" class="form-control" name="companyimage1">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">公司描述：</label>
	                                <div class="col-sm-4">
	                                    <textarea class="form-control" rows="8" name="description" id="description" required>


	                                    </textarea>
	                                </div>
	                                
	                                 <label class="col-sm-2 control-label">公司产品：</label>
	                                <div class="col-sm-4">
	                                  <textarea class="form-control" rows="8" name="product" id="product" required>
你好<br/>

	                                    </textarea>
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-sm-2 control-label">公司简介：</label>
	                                <div class="col-sm-4">
	                                    <textarea class="form-control" rows="4" name="jianjie" id="jianjie" required>
	                                    	
	                                    </textarea>
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <div class="form-group">
		                                <div class="col-sm-4 col-sm-offset-2">
		                                    <button class="btn btn-primary" type="submit">保存内容</button>
		                                </div>
		                            </div>
	                            </div>
	                            
                               
                            </form>
                        </div>
                   
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- 打开的窗口 end -->
    
    <script>
    
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
     	function mydelete(id){
     		if(confirm("确认删除吗")){
     			var companyname = $("#companyname").val();
         		var isallow = $("#isallow").val();
         		
         		//发送ajax请求删除数据
         		$.ajax({
    				type: "POST",
    				url: '${pageContext.request.contextPath}/sysadmin/delete',
    		    	data: {
    		    		id:id

    		    	},
    				dataType:'json',
    				cache: false,
    				success: function(data){
    					 if("-1" == data.code){
    						 alert(data.data);
    					}else if("1" == data.code){
    						alert(data.data);
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
                colNames: ['序号', '公司名称', '行业', '发展阶段', '注册时间', '审核', '操作'],
                colModel: [
                    {
                        name: 'id',
                        index: 'id',
                        editable: true,
                        width: 60,
                        sorttype: "int",
                        search: true
                    }, {
                        name: 'companyname',
                        index: 'companyname',
                        editable: true,
                        width: 150
                    }, {
                        name: 'industry',
                        index: 'industry',
                        editable: true,
                        width: 100
                    }, {
                        name: 'development',
                        index: 'development',
                        editable: true,
                        width: 100
                    },
                    {
                        name: 'registertime',
                        index: 'registertime',
                        editable: true,
                        width: 90,
                        sorttype: "datetime",
                        formatter: "datetime"
                    }, {
                        name: 'isallow',
                        index: 'isallow',
                        editable: true,
                        width: 60
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
