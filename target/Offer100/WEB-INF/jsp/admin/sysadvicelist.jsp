<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>小程序反馈建议</title>
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
     <c:forEach items ="${sysadvicelist}" var="data" varStatus="status">
  		
    		<script type="text/javascript">
    			//处理当前时间，转化成良好的格式
    			 var number =  ${status.index} + 1;
    			 lists[${status.index}] = {
    					 id:number,
    					 content:"${data.content}",
    					 advicetime:"${data.advicetime}",
    					 operation: "<span style='color:#65A8DC;cursor:pointer ' onclick='mydelete(\"${data.id}\")'>删除\</span> " 
    			 };
    		</script>
	</c:forEach>
    
    
    
    <script>
    
    	
     	function mydelete(id){
     		if(confirm("确认删除吗")){
     			
         		
         		//发送ajax请求删除数据
         		$.ajax({
    				type: "POST",
    				url: '${pageContext.request.contextPath}/sysadmin/deleteAdvice',
    		    	data: {
    		    		id:id

    		    	},
    				dataType:'json',
    				cache: false,
    				success: function(data){
    					 if("-1" == data.code){
    						 alert(data.data);
    					}else if("1" == data.code){
    						
    						window.location.href = '${pageContext.request.contextPath}/sysadmin/sysadvicelist';
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
                height: 550,
                autowidth: true,
                shrinkToFit: true,
                rowNum: 10,
                rowList: [10, 20, 30],
                colNames: ['序号', '反馈内容', '时间','操作'],
                colModel: [
                    {
                        name: 'id',
                        index: 'id',
                        editable: true,
                        width: 60,
                        sorttype: "int",
                        search: true
                    }, {
                        name: 'content',
                        index: 'content',
                        editable: true,
                        width: 450
                    },
                    {
                        name: 'advicetime',
                        index: 'advicetime',
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
                caption: "小程序用户使用反馈",
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
