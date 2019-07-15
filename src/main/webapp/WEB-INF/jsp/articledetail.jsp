<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9"
          front="css"/>
    <%--  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/my_themes_default_style2.css?v=0.0.0.9" front="css" /> --%>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_flexslider.css?v=0.0.0.9"
          front="css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuicore.css?v=0.0.0.9"
          front="css"/>

    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuiselectmenu.css?v=0.0.0.9"
          front="css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuitheme.css?v=0.0.0.9"
          front="css"/>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jquery191.js?v=0.0.0.9"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryflexslidermin.js?v=0.0.0.9"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuicore1.js?v=0.0.0.9"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuiposition.js?v=0.0.0.9"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuiwidget.js?v=0.0.0.9"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_jqueryuiselectmenu1.js?v=0.0.0.9"></script>
    <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/jquery.min.js?v=2.1.4"></script> --%>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/basePage/js/5_themes_default_demo.js?v=0.0.0.9"></script>
    <!--引用静态文件:requirejs-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/basePage/js/require.js"></script>

    <!-- 整合bootstrap框架 start -->
    <!--图标样式和布局-->
    <link href="${pageContext.request.contextPath}/static/boostrap/css/page/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/font-awesome.min.css" rel="stylesheet">

    <!--公共样式-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/basePage/css/demo.css">


    <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js"></script> --%>
    <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap-paginator.js" type="text/javascript"></script> --%>

    <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js"
            type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/page/bootstrap-paginator.js"
            type="text/javascript"></script>

    <style>
        #page li {
            cursor: pointer;
        }
    </style>
    <!-- 整合bootstrap框架 end -->

    <!-- 引入弹窗插件 start -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css"/>

    <!-- 引入弹窗插件 start -->
    <title>招聘信息列表</title>
</head>
<body>
<!-- 动态包含头部导航 -->
<jsp:include page="../common/header.jsp" flush="true"/>

<!-- 静态包含 -->
<div class="nav">
    <!--module:menu begin-->
    <div class="bs-module">
        <div class="menu-simple ">
            <ul id="portalmenu" style="">

                <li><a target="_self" href="${pageContext.request.contextPath}/system/index">首页</a></li>
                <li><a target="_self"
                       href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>职位搜索</a>
                </li>
                <!-- <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=社招" ${requestScope.moreCondition.type eq '社招' ? 'class="current"':'' }>社会招聘</a> </li>  -->
                <li><a target="_self"
                       href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>实习专区</a>
                </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList"
                       class="current">最新资讯</a></li>
                <li><a target="_self" href="${pageContext.request.contextPath}/skill/showOurCompany">求职技巧</a></li>
                <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="">联系我们</a></li>
            </ul>
        </div>
    </div>
    <!--module:menu end-->
</div>


<div class="contain zpcontain clearfix">

    <div class="zhiweixiangqing fr" style="width:70%;color:black;margin-right: 15%">
        <!--module:positiondetail begin-->
        <div class="bs-module">
            <div class="positiondetail-simple ">
                <div class="xiangqingtitle">
                    <span>${articles.articletitle } </span>
                </div>
                <div class="xiangqingcontain">
                    <div class="xiangqingline"></div>
                    <ul class="xiangqinglist clearfix">
                        <li class="ntitle td-HasSalaries" style="width:15%;font-size:16px;text-align: center">发布时间：</li>

                        <li class="nvalue" style="width:75%;font-size:16px;color: #3CB7F6;" id="publictime1"></li>
                        <script type="text/javascript">
                            //处理当前时间，转化成良好的格式
                            var datetime = new Date("${articles.createtime }" + "  GMT+0800");
                            var year = datetime.getFullYear();
                            var month = datetime.getMonth() + 1;
                            var date = datetime.getDate();
                            var hours = datetime.getHours();
                            var minutes = datetime.getMinutes();
                            var seconds = datetime.getSeconds();
                            var publictime = year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds;
                            var jiezi = document.getElementById("publictime1");  //传递的参数是标签里面的id的值
                            jiezi.innerHTML = publictime;
                        </script>

                        <li class="ntitle td-HasSalaries" style="width:15%;font-size:16px;">文章关键字:</li>

                        <li class="nvalue" style="width:75%;font-size:16px;color: #3CB7F6;">${articles.articlekey }</li>

                    </ul>
                    <img src="${pageContext.request.contextPath}/pic?img=${articles.articleimg}" style="width:20%;height: 30%"
                        id="aaaa">

                            <script type="text/javascript">
                        var img = "${articles.articleimg }";

                        if (img == null || img == "") {
                            var img = document.getElementById("aaaa");
                            img.style.display = "none";

                        }

                    </script>
                    <%--<ul class="xiangqinglist clearfix"> --%>
                    <%--<div class="xiangqingtext"> --%>
                    <%--&lt;%&ndash;  <p>工作地点: ${myrecruitment.address }</p>  &ndash;%&gt;--%>
                    <%----%>
                    <%--</ul>--%>
                    <ul class="xiangqinglist clearfix">

                        <%--<textarea  rows="30" cols="10" style="width:100%;font-size:16px;" readonly="readonly">${articles.articlecontent } </textarea>--%>
                        <div class="st">${articles.articlecontent }</div>
                    </ul>
                </div>

            </div>
        </div>
        <!--module:positiondetail end-->
    </div>
</div>

<!-- 静态包含 -->
<%@include file="../common/footer.jsp" %>
<!-- 弹窗插件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>

</body>
</html>