<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>资讯列表</title>
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

                                    <h5>资讯</h5>
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
                                        <!--              <button  class="btn btn-primary" style="margin-top:10px;margin-left:50px;" onclick="open_d()">发布公告</button> -->
                                        <a data-toggle='modal' class='btn btn-primary' href='${pageContext.request.contextPath}/admin/articlesList#modal-form' onclick="open_d('no')">发布资讯</a>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>

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
<c:forEach items ="${articleslist}" var="data" varStatus="status">

    <script type="text/javascript">
        //处理当前时间，转化成良好的格式
        var isshow;
        if(${data.isshow} == 1){
            isshow = "<font color='#3CB7F6'>上线</font>";
        }else  {
            isshow = "<font color='#FC4070'>下线</font>";
        }
        lists[${status.index}] = {
            id:"${status.index}",
            articletitle:"${data.articletitle}",
            articlekey:"${data.articlekey}",
            createtime:"${data.createtime}",
            isshow:isshow,
            operation:
                "<span class='btn btn-primary btn-sm' style='color:white;cursor:pointer ;' onclick='pass(\"${data.articleid}\",\"${data.isshow}\")'>上线\</span> "+ "&nbsp;&nbsp;&nbsp;"+
                "<span class='btn btn-primary btn-sm' style='color:white;cursor:pointer ;' onclick='nopass(\"${data.articleid}\",\"${data.isshow}\")'>下线\</span> "+ "&nbsp;&nbsp;&nbsp;"+
                "<span class='btn btn-primary btn-sm' style='color:white;cursor:pointer ;' onclick='mydelete(\"${data.articleid}\")'>删除\</span> "+ "&nbsp;&nbsp;&nbsp;"+
                "<a data-toggle='modal' class='btn btn-primary' href='${pageContext.request.contextPath}/sysadmin/companylist#modal-form' onclick='open_d(\"${data.articleid}\")'>查看</a>"

        };

    </script>
</c:forEach>

<script type="text/javascript">
    function open_d(id){


        if(id=='no'){
            $("#articleid").val(null);
            $("#articletitle").val(null);
            $("#articlekey").val(null);
            $('#logo').attr('src', '${pageContext.request.contextPath}/static/boostrap/img/96.jpg');
            $("#articlecontent").val(null);
        }else{
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/articles/articlesDetail',
                data: {
                    id:id
                },
                dataType:'json',
                cache: false,
                success: function(data){
                    if("-1" == data.code){
                        $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:data.data})
                    }else if("1" == data.code){
                        $('#logo').attr('src', '${pageContext.request.contextPath}/static/boostrap/img/96.jpg');

                        //companyname,simplename,industry,address,companyUrl,,minpeople,maxpeople  7
                        //remark/releasednumber/description/product/jianjie/development/money  7
                        // 3个图片

                        //17个字段 --》 三个图片  三个文本域 一个 下拉选框    文本框剩下：10个
                        $("#articleid").val(data.data.articleid);
                        $("#articletitle").val(data.data.articletitle);
                        $("#articlekey").val(data.data.articlekey);

                        if(data.data.articleimg!=null){
                            $('#logo').attr('src', 'http://localhost:8080/upload/'+data.data.articleimg);
                        }
                        //设置图片的url


                        //处理三个文本域
                        $("#articlecontent").val(data.data.articlecontent);
                    }

                }
            });



        }

        //根据当前的id去后台查询数据

    }


</script>
<!-- 打开的窗口 start -->

<div id="modal-form" class="modal fade" aria-hidden="true">
    <div class="col-sm-8" style="margin-top:50px;margin-left:10%;">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="m-t-none m-b">公告信息</h3>
                        <form role="form" class="form-horizontal" method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/articles/insertArticle" >
                            <input type="hidden" name="articleid" id="articleid" >
                            <div class="form-group">
                                <label class="col-sm-2 control-label">文章标题：</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" required id="articletitle" name="articletitle">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">文章关键字：</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" required id="articlekey" name="articlekey">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">文章图片：</label>
                                <div class="col-sm-3">
                                    <img src="${pageContext.request.contextPath}/static/boostrap/img/96.jpg" class="img-responsive" style="height:80px;width:80px;" alt="" id="logo">
                                </div>
                                <div class="col-sm-7">
                                    <input type="file" class="form-control" name="logo">
                                </div>

                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">文章内容：</label>
                                <div class="col-sm-10">
	                                    <textarea class="form-control" rows="22" name="articlecontent" id="articlecontent" required>

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
    function nopass(id,is){

        if(is == "2"){
            $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:'已经下线了，不要重复操作!'})
        }else{
            //发送ajax请求删除数据
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/articles/nopass',
                data: {
                    id:id

                },
                dataType:'json',
                cache: false,
                success: function(data){
                    if("-1" == data.code){
                        $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:data.data})
                    }else if("1" == data.code){
                        // $("#id").val(data.data.id);
                        // $("#articletitle").val(data.data.companyname);
                        // $("#articlekey").val(data.data.simplename);
                        // $("#createtime").val(data.data.industry);
                        // $("#datetime").val(data.data.address);
                        // $("#isshow").val(data.data.companyurl);
                        // $("#operation").val(data.data.minpeople);
                        window.location.href = '${pageContext.request.contextPath}/articles/articlesList';
                    }

                }
            });
        }


    }
    function pass(id,is){

        if(is == "1"){
            $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:'已经上线了，不要重复操作!'})
        }else{
            //发送ajax请求删除数据
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/articles/pass',
                data: {
                    id:id

                },
                dataType:'json',
                cache: false,
                success: function(data){
                    if("-1" == data.code){
                        $('body').dailog({type:'primary',showBoxShadow:true,animateStyle:'none',bottons:['确定'],discription:data.data})
                    }else if("1" == data.code){

                        window.location.href = '${pageContext.request.contextPath}/articles/articlesList';
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
                url: '${pageContext.request.contextPath}/articles/delete',
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
                        window.location.href = '${pageContext.request.contextPath}/articles/articlesList';
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
            height: 500,
            autowidth: true,
            shrinkToFit: true,
            rowNum: 10,
            rowList: [10, 20, 30],
            colNames: ['序号', '技巧', '关键字', '注册时间', '上线', '操作'],
            colModel: [
                {
                    name: 'id',
                    index: 'id',
                    editable: true,
                    width: 40,
                    sorttype: "int",
                    search: true
                }, {
                    name: 'articletitle',
                    index: 'articletitle',
                    editable: true,
                    width: 140
                }, {
                    name: 'articlekey',
                    index: 'articlekey',
                    editable: true,
                    width: 140
                },
                {
                    name: 'createtime',
                    index: 'createtime',
                    editable: true,
                    width: 90,
                    sorttype: "datetime",
                    formatter: "datetime"
                }, {
                    name: 'isshow',
                    index: 'isshow',
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
            caption: "求职技巧列表",
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
