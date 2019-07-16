<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
    <%--  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/my_themes_default_style2.css?v=0.0.0.9" front="css" /> --%>
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

    <!-- 整合bootstrap框架 start -->
    <!--图标样式和布局-->
    <link href="${pageContext.request.contextPath}/static/boostrap/css/page/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/font-awesome.min.css" rel="stylesheet">

    <!--公共样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/basePage/css/demo.css">


    <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js"></script> --%>
    <%--  <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap-paginator.js" type="text/javascript"></script> --%>

    <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/page/bootstrap-paginator.js" type="text/javascript"></script>

    <style>
        #page li{
            cursor:pointer;
        }
    </style>

    <!-- 整合bootstrap框架 end -->

    <title>面试技巧</title>
</head>
<body>

<!-- 动态包含头部导航 -->
<jsp:include page="../common/header.jsp" flush="true" />

<!-- 静态包含 -->
<%--  <%@include file="../common/nav.jsp"%> --%>
<!-- 导航栏信息 start -->
<div class="nav">
    <!--module:menu begin-->
    <div class="bs-module">
        <div class="menu-simple ">
            <ul id="portalmenu">

                <li><a target="_self" href="${pageContext.request.contextPath}/system/index">首页</a> </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${ requestScope.all == 'all' ? 'class="current"':'' }>职位搜索</a> </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" >实习专区</a> </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList" >最新资讯</a> </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/skill/showOurCompany" class="current">求职技巧</a> </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="">联系我们</a> </li>
            </ul>
        </div>
    </div>
    <!--module:menu end-->
</div>

<!-- 导航栏信息 end -->


<div class="contain joblist clearfix">

    <div class="clearfix sousuocontain fl" style="width:100%;color: #ffffff">


        <div style="height:8px; background: #eff0f4"/></div>


    <!--module:positionlist begin-->
    <div class="bs-module">
        <div class="positionlist-newtemplate ">
            <div class="clearfix tablecontain" >
                <div style="width:70%;position: relative;left: 15%;">
                <table class="articlelisttable">
                    <tbody>
                    <c:forEach items="${ articleslist}" var="data">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail" style="height: 230px">
                            <a href="#" class="thumbnail">
                               <%--<img src="${pageContext.request.contextPath}/static/window/images/roll_1.jpg" style="width:100%;"&ndash;%&gt;--%>
                               <img src="${pageContext.request.contextPath}/pic?img=${data.articleimg}" style="width:100%; height: 150px"
                                     id="aaaa">
                                <%--<script type="text/javascript">--%>
                                    <%--var img = "${articleslist.articleimg }";--%>
                                    <%--if (img == null || img == "") {--%>
                                        <%--var img = document.getElementById("aaaa");--%>
                                        <%--img.src = "${pageContext.request.contextPath}/static/window/images/roll_1.jpg"--%>
                                        <%--//img.style.display = "none";--%>
                                    <%--}--%>
                                <%--</script>--%>
                            </a>
                            <div class="caption" style="margin-top: -20px">
                                <span class="title">  <a href="${pageContext.request.contextPath}/skill/detail?id=${data.articleid}" style="font-size:17px;" target="_blank">${data.articletitle }</a>   </span>

                                <%--<span class="publiTime">[  ${data.createtime }  发布]</span>--%>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    </tbody>
                </table>
                </div>
                <!-- 分页列表began -->
                <div class="container" style="text-align:center;">
                <div>
                    <ul id="page"></ul>
                </div>
            </div>

                <script type="text/javascript">
                    $(function () {
                        $("#page").bootstrapPaginator({
                            bootstrapMajorVersion:3,  //对应的bootstrap版本
                            currentPage: ${requestScope.pageAble.currentPage} , //当前页数
                            numberOfPages: ${requestScope.pageAble.numberOfPages}, //每次显示页数
                            totalPages:${requestScope.pageAble.totalPages} , //总页数
                            shouldShowPage:true,//是否显示该按钮
                            useBootstrapTooltip:true,
                            //点击事件
                            onPageClicked: function (event, originalEvent, type, page) {
                                //Ajax提交
                                //address,workexperience,xueli,type,development，moneyrange，minpeople，datenumber，datalist
                                window.location.href = '${pageContext.request.contextPath}/skill/showOurCompany?page1='+page;
                            }
                        });
                    });

                </script>
                <script type="text/javascript">
                    $(function () {
                        $('[data-toggle="tooltip"]').tooltip()
                    })
                </script>

                <style>
                    #page li{
                        cursor:pointer;
                    }
                </style>
                <!-- 分页列表end -->
            </div>

        </div>
    </div>
    <%--<div class="bs-module">--%>
        <%--<div class="deliverystoredb-default ">--%>
        <%--</div>--%>
    <%--</div>--%>
    <!--module:deliverystoredb end-->
</div>
</div>


<!-- 静态包含 -->
<%@include file="../common/footer.jsp"%>

</body>
</html>