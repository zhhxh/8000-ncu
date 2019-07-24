<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <%--  <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap-paginator.js" type="text/javascript"></script> --%>

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

    <title>招聘信息列表</title>
</head>
<body>

<!-- 动态包含头部导航 -->
<jsp:include page="../common/header.jsp" flush="true"/>

<!-- 静态包含 -->
<%--   <%@include file="../common/nav.jsp"%> --%>

<!-- 导航栏信息 start -->
<div class="nav">
    <!--module:menu begin-->
    <div class="bs-module">
        <div class="menu-simple ">
            <ul id="portalmenu">

                <li><a target="_self" href="${pageContext.request.contextPath}/system/index">首页</a></li>
                <li><a target="_self"
                       href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${ requestScope.xiaozheng == 'all' ? 'class="current"':'' }>职位搜索</a>
                </li>
                <li><a target="_self"
                       href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type == '校招' ? 'class="current"':'' }  >实习专区</a>
                </li>
                <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList"
                       class="">最新资讯</a></li>
                <li><a target="_self" href="${pageContext.request.contextPath}/skill/showOurCompany">求职技巧</a></li>
                <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="">联系我们</a></li>
            </ul>
        </div>
    </div>
    <!--module:menu end-->
</div>

<!-- 导航栏信息 end -->


<div class="contain joblist clearfix">

    <div class="clearfix sousuocontain fl" style="width:70%;margin-left: 15%">
        <!--module:positionsearch begin-->
        <div class="bs-module">
            <div class="positionsearch-smallfresh ">
                <a name="jlt"></a>
                <form name="searchForm" id="searchForm"
                      action="${pageContext.request.contextPath}/myrecruitment/joblist" method="get">
                    <div class="zhiweisousuo bodertop selectmod" style="width:100%;margin-left: 0;">
                        <div class="parttitleline"></div>
                        <div class="parttitle">
                            <span class="serchico"></span>
                            <div class="wordtitle" style="color:black">
                                条件筛选
                            </div>
                        </div>
                        <div class="serchcontain">
                            <div style="width: 90%;float: left;margin-left: 5%;margin-top: -10px">
                                <div class="d4">
                                    <select class="dropdown" id="address" name="address" tableindex="12" style="">
                                        <option value="">工作城市</option>
                                        <option value="广州" ${requestScope.moreCondition.address eq '广州'?"selected=\"selected\"":""} >
                                            广州
                                        </option>
                                        <option value="深圳" ${requestScope.moreCondition.address eq '深圳'?"selected=\"selected\"":""} >
                                            深圳
                                        </option>
                                        <option value="东莞" ${requestScope.moreCondition.address eq '东莞'?"selected=\"selected\"":""} >
                                            深圳
                                        </option>
                                        <option value="南京" ${requestScope.moreCondition.address eq '南京'?"selected=\"selected\"":""} >
                                            南京
                                        </option>
                                        <option value="珠海" ${requestScope.moreCondition.address eq '珠海'?"selected=\"selected\"":""} >
                                            珠海
                                        </option>

                                        <!-- 成都、杭州、武汉、重庆、南京、天津、苏州、西安、长沙、沈阳、青岛、郑州、大连、东莞和宁波 -->
                                        <option value="成都" ${requestScope.moreCondition.address eq '成都'?"selected=\"selected\"":""} >
                                            成都
                                        </option>
                                        <option value="杭州" ${requestScope.moreCondition.address eq '杭州'?"selected=\"selected\"":""} >
                                            杭州
                                        </option>
                                        <option value="武汉" ${requestScope.moreCondition.address eq '武汉'?"selected=\"selected\"":""} >
                                            武汉
                                        </option>
                                        <option value="重庆" ${requestScope.moreCondition.address eq '重庆'?"selected=\"selected\"":""} >
                                            重庆
                                        </option>
                                        <option value="南京" ${requestScope.moreCondition.address eq '南京'?"selected=\"selected\"":""} >
                                            南京
                                        </option>
                                        <option value="天津" ${requestScope.moreCondition.address eq '天津'?"selected=\"selected\"":""} >
                                            天津
                                        </option>
                                        <option value="苏州" ${requestScope.moreCondition.address eq '苏州'?"selected=\"selected\"":""} >
                                            苏州
                                        </option>
                                        <option value="西安" ${requestScope.moreCondition.address eq '西安'?"selected=\"selected\"":""} >
                                            西安
                                        </option>
                                        <option value="长沙" ${requestScope.moreCondition.address eq '长沙'?"selected=\"selected\"":""} >
                                            长沙
                                        </option>
                                        <option value="沈阳" ${requestScope.moreCondition.address eq '沈阳'?"selected=\"selected\"":""} >
                                            沈阳
                                        </option>
                                        <option value="青岛" ${requestScope.moreCondition.address eq '青岛'?"selected=\"selected\"":""} >
                                            青岛
                                        </option>
                                        <option value="郑州" ${requestScope.moreCondition.address eq '郑州'?"selected=\"selected\"":""} >
                                            郑州
                                        </option>
                                        <option value="大连" ${requestScope.moreCondition.address eq '大连'?"selected=\"selected\"":""} >
                                            大连
                                        </option>
                                        <!-- 				福建省：福州市 厦门市 泉州市 漳州市 南平市 三明市 龙岩市 莆田市 宁德市 建瓯市 武夷山市 长乐市福清市 晋江市 南安市 福安市 龙海市 邵武市 石狮市 福鼎市 建阳市 漳平市 永安市  -->
                                        ="成都" ${requestScope.moreCondition.address eq '成都'?"selected=\"selected\"":""}
                                        >成都</option>
                                        <option value="福州" ${requestScope.moreCondition.address eq '福州'?"selected=\"selected\"":""} >
                                            福州
                                        </option>
                                        <option value="厦门" ${requestScope.moreCondition.address eq '厦门'?"selected=\"selected\"":""} >
                                            厦门
                                        </option>
                                        <option value="泉州" ${requestScope.moreCondition.address eq '泉州'?"selected=\"selected\"":""} >
                                            泉州
                                        </option>
                                        <option value="漳州" ${requestScope.moreCondition.address eq '漳州'?"selected=\"selected\"":""} >
                                            漳州
                                        </option>
                                        <option value="南平" ${requestScope.moreCondition.address eq '南平'?"selected=\"selected\"":""} >
                                            南平
                                        </option>
                                        <option value="三明" ${requestScope.moreCondition.address eq '三明'?"selected=\"selected\"":""} >
                                            三明
                                        </option>
                                        <option value="龙岩" ${requestScope.moreCondition.address eq '龙岩'?"selected=\"selected\"":""} >
                                            龙岩
                                        </option>
                                        <option value="莆田" ${requestScope.moreCondition.address eq '莆田'?"selected=\"selected\"":""} >
                                            莆田
                                        </option>
                                        <option value="宁德" ${requestScope.moreCondition.address eq '宁德'?"selected=\"selected\"":""} >
                                            宁德
                                        </option>
                                        <option value="武夷山" ${requestScope.moreCondition.address eq '武夷山'?"selected=\"selected\"":""} >
                                            武夷山
                                        </option>
                                        <option value="龙海" ${requestScope.moreCondition.address eq '龙海'?"selected=\"selected\"":""} >
                                            龙海
                                        </option>
                                        <option value="建阳" ${requestScope.moreCondition.address eq '建阳'?"selected=\"selected\"":""} >
                                            建阳
                                        </option>


                                        <option value="其他" ${requestScope.moreCondition.address eq '其他'?"selected=\"selected\"":""} >
                                            其他
                                        </option>

                                    </select>
                                </div>
                                <div class="d4">
                                    <select class="dropdown" id="workexperience" name="workexperience" tableindex="12"
                                            style="margin-left:200px;">
                                        <option value="">工作经验</option>
                                        <option value="无经验" ${requestScope.moreCondition.workexperience eq '无经验'?"selected=\"selected\"":""} >
                                            无经验
                                        </option>
                                        <option value="1-3年" ${requestScope.moreCondition.workexperience eq '1-3年'?"selected=\"selected\"":""} >
                                            1-3年
                                        </option>
                                        <option value="3-5年" ${requestScope.moreCondition.workexperience eq '3-5年'?"selected=\"selected\"":""} >
                                            3-5年
                                        </option>
                                        <option value="5-10年" ${requestScope.moreCondition.workexperience eq '5-10年'?"selected=\"selected\"":""} >
                                            5-10年
                                        </option>
                                        <option value="10年以上" ${requestScope.moreCondition.workexperience eq '10年以上'?"selected=\"selected\"":""} >
                                            10年以上
                                        </option>
                                    </select>
                                </div>
                                <div class="d4">
                                    <select class="dropdown" id="xueli" name="xueli" tableindex="12"
                                            style="margin-left:200px;">
                                        <option value="">学历要求</option>
                                        <option ${requestScope.moreCondition.xueli eq '大专'?"selected=\"selected\"":""} >
                                            大专
                                        </option>
                                        <option ${requestScope.moreCondition.xueli eq '本科'?"selected=\"selected\"":""} >
                                            本科
                                        </option>
                                        <option ${requestScope.moreCondition.xueli eq '硕士'?"selected=\"selected\"":""} >
                                            硕士
                                        </option>
                                        <option ${requestScope.moreCondition.xueli eq '博士'?"selected=\"selected\"":""} >
                                            博士
                                        </option>
                                        <option ${requestScope.moreCondition.xueli eq '不限要求'?"selected=\"selected\"":""} >
                                            不限要求
                                        </option>
                                    </select>
                                </div>
                                <div class="d4">
                                    <select class="dropdown" id="development" name="development" tableindex="12">
                                        <option value="">融资阶段</option>
                                        <option ${requestScope.moreCondition.development eq '未融资'?"selected=\"selected\"":""} >
                                            未融资
                                        </option>
                                        <option ${requestScope.moreCondition.development eq '天使轮'?"selected=\"selected\"":""} >
                                            天使轮
                                        </option>
                                        <option ${requestScope.moreCondition.development eq 'A轮'?"selected=\"selected\"":""} >
                                            A轮
                                        </option>
                                        <option ${requestScope.moreCondition.development eq 'B轮'?"selected=\"selected\"":""} >
                                            B轮
                                        </option>
                                        <option ${requestScope.moreCondition.development eq 'C轮'?"selected=\"selected\"":""} >
                                            C轮
                                        </option>
                                        <option ${requestScope.moreCondition.development eq 'D轮'?"selected=\"selected\"":""} >
                                            D轮
                                        </option>
                                        <option ${requestScope.moreCondition.development eq '上市公司'?"selected=\"selected\"":""} >
                                            上市公司
                                        </option>
                                        <option>不需要融资</option>
                                    </select>
                                </div>
                                <div class="d4">
                                    <select class="dropdown" id="moneyrange" name="moneyrange" tableindex="12">
                                        <option value="">月薪范围</option>
                                        <option value="1000"  ${requestScope.moreCondition.moneyrange eq '1000'?"selected=\"selected\"":""}  >
                                            1000 - 3000
                                        </option>
                                        <option value="3000"  ${requestScope.moreCondition.moneyrange eq '3000'?"selected=\"selected\"":""} >
                                            3000 - 5000
                                        </option>
                                        <option value="5000"  ${requestScope.moreCondition.moneyrange eq '5000'?"selected=\"selected\"":""} >
                                            5000 - 8000
                                        </option>
                                        <option value="8000"  ${requestScope.moreCondition.moneyrange eq '8000'?"selected=\"selected\"":""} >
                                            8000 - 10000
                                        </option>
                                        <option value="10000" ${requestScope.moreCondition.moneyrange eq '10000'?"selected=\"selected\"":""} >
                                            10000 - 15000
                                        </option>
                                        <option value="15000" ${requestScope.moreCondition.moneyrange eq '15000'?"selected=\"selected\"":""}  >
                                            15000以上
                                        </option>

                                    </select>
                                </div>
                                <div class="d4">
                                    <select class="dropdown" id="minpeople" name="minpeople" tableindex="12">
                                        <option value="">公司规模</option>
                                        <option value="10" ${requestScope.moreCondition.minpeople eq '9'?"selected=\"selected\"":""}>
                                            不少于10人
                                        </option>
                                        <option value="50" ${requestScope.moreCondition.minpeople eq '49'?"selected=\"selected\"":""}>
                                            不少于50人
                                        </option>
                                        <option value="150" ${requestScope.moreCondition.minpeople eq '149'?"selected=\"selected\"":""}>
                                            不少于150人
                                        </option>
                                        <option value="500" ${requestScope.moreCondition.minpeople eq '499'?"selected=\"selected\"":""}>
                                            不少于500人
                                        </option>
                                        <option value="1500" ${requestScope.moreCondition.minpeople eq '1499'?"selected=\"selected\"":""}>
                                            不少于1500人
                                        </option>

                                    </select>
                                </div>
                            </div>

                            <div style="width: 80%;margin-left: 10%">
                                <input type="text" class="serchinput" maxlength="50" id="datalist" name="datalist"
                                       value="${requestScope.datalist }"
                                       style="height:40px;line-heitht:35px;width:83%;font-size:15px;border-right:1px solid #D3D3D3;"
                                       placeholder="搜索职位 公司 （多个关键字，建议空格分隔） 例如 java "/>
                                <input type="submit" value="搜索" class="button  subButton"
                                       style="width: 10%;float:left;background-color:#22cade;height:40px;font-size:16px;color:white;margin-left: 0">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!--module:positionsearch end-->

        <div style="height:8px;"/>
    </div>


    <!--module:positionlist begin-->
    <div class="bs-module">
        <div class="positionlist-newtemplate ">
            <div class="clearfix tablecontain">
                <table class="listtable">
                    <!--   <thead>
                       <tr class="tabletitle" >
                        <th class="tableleft" style="color:black">&nbsp;&nbsp;职位名称</th>
                        <th class="tableleft" style="color:black" title="招聘区域">招聘区域</th>
                        <th class="tableleft" style="color:black">工作地点</th>
                        <th class="tableleft" style="color:black" >发布时间</th>
                       </tr>
                      </thead>  -->
                    <tbody>
                    <c:forEach items="${ datalists}" var="data">

                        <tr>
                            <td class="tableleft joblsttitle">
                                <!-- 卡片 start -->
                                <div class="container" style="width: 100%">
                                    <div class="row" style="width: 100%">
                                        <div class="col-md-12 col-sm-12 myCard">
                                            <div class="serviceBox" style="padding-bottom:15px;">

                                                <div class="service-Content" style="overflow: hidden;">
                                                    <div id="leftJob">
                                                        <span class="title">  <a
                                                                href="${pageContext.request.contextPath}/myrecruitment/detail?id=${data.id }"
                                                                style="font-size:17px;"
                                                                target="_blank">${data.jobname }</a>   </span>
                                                        <span class="publiTime">[  ${data.publictime}   发布]</span>
                                                        <br/>
                                                        <span class="money">  ${data.minwage }   -  ${data.maxwage }    &nbsp; &nbsp;&nbsp; &nbsp;</span>
                                                        <span class="required">  ${data.workexperience }    /   ${data.xueli }    &nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                        <button type="button" class="btn  btn-default btn-xs"
                                                                data-toggle="tooltip" data-placement="right"
                                                                title="Hi，对我发布的职位感兴趣吗？用小程序客户端可以直接跟我聊天.'招聘小程序'"
                                                                style="color:#FA6041">联系我
                                                        </button>
                                                        <div class="mybutton" id="${data.id }">
                                                            <!-- Contextual button for informational alert messages -->
                                                            <script type="text/javascript">
                                                                var jobkey = "${data.jobkey}";
                                                                var strs = new Array(); //定义一数组
                                                                strs = jobkey.split(" ");
                                                                var id = "${data.id }";
                                                                for (var i = 0; i < strs.length; i++) {
                                                                    $("#${data.id }").append("<button type='button' class='btn btn-info btn-xs'>" + strs[i] + "</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
                                                                }

                                                            </script>
                                                        </div>
                                                    </div>
                                                    <div id="rightCompany">
                                                        <span class="title"> <a
                                                                href="${pageContext.request.contextPath}/company/companyDetail?id=${data.cid }"
                                                                target="_blank"
                                                                style="font-size:16px;">${data.companyname }</a> </span>
                                                        <br/>
                                                        <span class="required">  ${data.industry }    /   ${data.development }    &nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                        <br/>
                                                        <br/>
                                                        <span class="myaddress"> ${data.address } </span>


                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 卡片  end-->
                            </td>
                        </tr>
                    </c:forEach>

                    <style>
                        #leftJob {
                            width: 60%;
                            float: left;


                        }

                        .publiTime {
                            color: #999999;
                            font-size: 13px;
                        }

                        .money {
                            color: #FA6041;
                            font-size: 17px;
                            margin-top: 10px;
                        }

                        .secondline {
                            margin-top: 10px;
                        }

                        .required {
                            color: #999999;
                            font-size: 14px;
                            padding-top: 12px;
                            margin-top: 10px;
                        }


                        .myCard {

                            background-color: white;
                        }

                        .mybutton {
                            margin-top: 10px;

                        }

                        #rightCompany {
                            width: 30%;
                            float: right;


                        }

                        .myaddress {
                            color: #999999;
                            font-size: 14px;
                            padding-top: 12px;
                            margin-top: 30px;
                        }
                    </style>


                    </tbody>
                </table>

                <!-- 分页列表began -->
                <div class="container" style="text-align:center;width: 80% ">
                    <div>
                        <ul id="page"></ul>
                    </div>
                </div>

                <script type="text/javascript">
                    $(function () {
                        $("#page").bootstrapPaginator({
                            bootstrapMajorVersion: 3,  //对应的bootstrap版本
                            currentPage: ${requestScope.pageAble.currentPage}, //当前页数
                            numberOfPages: ${requestScope.pageAble.numberOfPages}, //每次显示页数
                            totalPages:${requestScope.pageAble.totalPages}, //总页数
                            shouldShowPage: true,//是否显示该按钮
                            useBootstrapTooltip: true,
                            //点击事件
                            onPageClicked: function (event, originalEvent, type, page) {
                                //Ajax提交
                                //address,workexperience,xueli,type,development，moneyrange，minpeople，datenumber，datalist
                                var address = $("#address").val();
                                var xueli = $("#xueli").val();
                                var workexperience = $("#workexperience").val();
                                var type = $("#type").val();
                                var development = $("#development").val();
                                var moneyrange = $("#moneyrange").val();
                                var minpeople = $("#minpeople").val();
                                var datalist = $("#datalist").val();


                                window.location.href = '${pageContext.request.contextPath}/myrecruitment/joblist?page1=' + page + "&address=" + address + "&xueli=" + xueli + "&workexperience=" + workexperience + "&development=" + development + "&moneyrange=" + moneyrange + "&minpeople=" + minpeople + "&datalist=" + datalist;
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
                    #page li {
                        cursor: pointer;
                    }
                </style>
                <!-- 分页列表end -->
            </div>

        </div>
    </div>
    <!--module:positionlist end-->
    <!--module:deliverystoredb begin-->
    <div class="bs-module">
        <div class="deliverystoredb-default ">
        </div>
    </div>
    <!--module:deliverystoredb end-->
</div>
</div>


<!-- 静态包含 -->
<%@include file="../common/footer.jsp" %>

</body>
</html>
