<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/css/dialog.css">
    <%--添加的外部css和js--%>
    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/font-awesome.min.css">

    <!--linear icon css-->
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">

    <!--chartist.min.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/chartist/css/chartist.min.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/bootstrap.min.css">

    <!--style.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <%@include file="../../common/admin/header.jsp" %>
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">

                    <div class="ibox-content">
                        <div class="main-content-head">
                            <h2>hello xuan!</h2>
                            <p>以下是关于该系统的数据管理</p>
                        </div>

                        <div class="profile-content">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="profile-state">
                                        <div class="icon-box">
										<span class="icon-bg icon-bg-1">
											<img src="${pageContext.request.contextPath}/static/admin/images/user-icon.png" alt="user-icon">
										</span>
                                            <h2>所有用户</h2>
                                        </div><!--/.icon-box-->
                                        <h3>32669</h3>
                                        <p>324 新用户</p>
                                    </div><!--/.profile-state-->
                                </div><!--/.col-->
                                <div class="col-sm-3">
                                    <div class="profile-state">
                                        <div class="icon-box">
										<span class="icon-bg icon-bg-2">
											<img src="${pageContext.request.contextPath}/static/admin/images/add-cart.png" alt="add-cart">
										</span>
                                            <h2>所有企业</h2>
                                        </div><!--/.icon-box-->
                                        <h3>15500</h3>
                                        <p>10 新企业</p>
                                    </div><!--/.profile-state-->
                                </div><!--/.col-->
                                <div class="col-sm-3">
                                    <div class="profile-state">
                                        <div class="icon-box">
										<span class="icon-bg icon-bg-3">
											<img src="${pageContext.request.contextPath}/static/admin/images/money-icon.png" alt="money-icon">
										</span>
                                            <h2>所有招聘信息</h2>
                                        </div><!--/.icon-box-->
                                        <h3>43,900</h3>
                                        <p>340 新招聘信息</p>
                                    </div><!--/.profile-state-->
                                </div><!--/.col-->
                                <div class="col-sm-3">
                                    <div class="profile-state">
                                        <div class="icon-box">
										<span class="icon-bg icon-bg-4">
											<img src="${pageContext.request.contextPath}/static/admin/images/plane-icon.png" alt="deliver-icon">
										</span>
                                            <h2>所有最新资讯</h2>
                                        </div><!--/.icon-box-->
                                        <h3>2600</h3>
                                        <p>120 新资讯</p>
                                    </div><!--/.profile-state-->
                                </div><!--/.col-->
                            </div><!--/.row-->

                        </div><!--/.profile-content-->

                        <%--第一行--%>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="box">
                                    <div class="box-head">
                                        <h2>数据</h2>
                                        <div class="statistics-data">
                                            <div class="stat-income">
                                                <p><span class="income-dot"></span>企业数量</p>
                                                <p><span class="income-dot outcome-dot"></span>用户数量</p>
                                            </div><!--/.stat-income-->
                                        </div><!--/.statistics-data-->
                                    </div><!--/.box-head-->
                                    <div class="item">
                                        <div id="statistics_data" class="ct-chart"></div>
                                    </div><!--/.item-->
                                </div><!--/.box-->
                            </div><!--/.col-->
                            <div class="col-md-6 col-sm-6">
                                <div class="box">
                                    <div class="box-head">
                                        <h2>企业遍布范围</h2>
                                    </div><!--/.box-head-->
                                    <div class="item">
                                        <div class="map" id="bubbles" style="position:relative;height: 170px;">

                                        </div>
                                        <div class="statistics-data">
                                            <div class="map-area">
                                                <ul>
                                                    <li>
                                                        <span class="map-dot ps-dot2"></span>北美
                                                    </li>
                                                    <li>
                                                        <span class="map-dot ps-dot3"></span>南美
                                                    </li>
                                                    <li>
                                                        <span class="map-dot ps-dot4"></span>亚洲
                                                    </li>
                                                    <li>
                                                        <span class="map-dot ps-dot1"></span>非洲
                                                    </li>
                                                </ul>
                                            </div><!--/.map-area-->
                                        </div><!--/.statistics-data-->
                                    </div><!--/.item-->
                                </div><!--/.box-->
                            </div><!--/.col-->

                        </div><!--/.row-->

                        <%--第二行--%>
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="box">
                                    <div class="box-head">
                                        <h2>最热门的岗位</h2>
                                    </div><!--/.box-head-->
                                    <div class="item">
                                        <div class="item-responsive ">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th style="text-align: center;">ID#</th>
                                                    <th style="text-align: center;">岗位名称</th>
                                                    <th style="text-align: center;">公司</th>
                                                    <th style="text-align: center;">岗位薪资</th>
                                                    <th style="text-align: center;">招聘人数</th>
                                                    <th style="text-align: center;">岗位状态</th>
                                                </tr>
                                                </thead><!--/thead-->
                                                <tbody>
                                                <tr>
                                                    <td><a href="#">1</a></td>
                                                    <td>java工程师</td>
                                                    <td>阿里巴巴</td>
                                                    <td>¥25050</td>
                                                    <td>185</td>
                                                    <td>
                                                        <span class="item-status delivered">未满</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">2</a></td>
                                                    <td>ui设计</td>
                                                    <td>网易</td>
                                                    <td>¥15050</td>
                                                    <td>50</td>
                                                    <td><span class="item-status cancel">已满</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">3</a></td>
                                                    <td>产品经理</td>
                                                    <td>腾讯</td>
                                                    <td>$22050</td>
                                                    <td>85</td>
                                                    <td><span class="item-status delivered">未满</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">4</a></td>
                                                    <td>软件测试</td>
                                                    <td>京东</td>
                                                    <td>$12050</td>
                                                    <td>45</td>
                                                    <td><span class="item-status delivered">未满</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">5</a></td>
                                                    <td>算法工程师</td>
                                                    <td>字节跳动</td>
                                                    <td>$35050</td>
                                                    <td>18</td>
                                                    <td><span class="item-status delivered">未满</span></td>
                                                </tr>
                                                </tbody><!--/tbody-->
                                            </table><!--/.table-->
                                        </div><!--/.table-responsive-->
                                    </div><!--/.item-->
                                </div><!--/.box-->
                            </div><!--/.col-->
                            <div class="col-sm-4">
                                <div class="box">
                                    <div class="box-head">
                                        <h2>薪资分布</h2>
                                    </div><!--/.box-head-->
                                    <div class="item">
                                        <div id="product_status" class="ct-chart"></div>
                                        <div class="statistics-data">
                                            <div class="stat-income pl0">
                                                <p><span class="income-dot ps-dot2"></span>10000</p>
                                                <p class="ml10"><span class="income-dot ps-dot3"></span>15000</p>
                                                <p class="ml10"><span class="income-dot ps-dot4"></span>5000</p>
                                                <p><span class="income-dot ps-dot1"></span>30000</p>
                                            </div><!--/.stat-income-->
                                        </div><!--/.statistics-data-->
                                    </div><!--/.item-->
                                </div><!--/.box-->
                            </div><!--/.col-->

                        </div><!--/.row-->

                        <%--第三行--%>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="box">
                                    <div class="box-head">
                                        <h2>年用户访问量</h2>
                                        <div class="year-info">
                                            <div class="year-info-content">
                                                <div class="year-color year-color-1"></div>
                                                <h4>2016</h4>
                                            </div><!--/.year-info-content-->
                                            <div class="year-info-content">
                                                <div class="year-color year-color-2"></div>
                                                <h4>2017</h4>
                                            </div><!--/.year-info-content-->
                                            <div class="year-info-content">
                                                <div class="year-color year-color-3"></div>
                                                <h4>2018</h4>
                                            </div><!--/.year-info-content-->
                                        </div><!--/.yaer-info-->
                                    </div><!--/.box-head-->
                                    <div id="yarly_expence" class="ct-chart"></div>
                                </div><!--/.box-->

                            </div><!--/.col-->

                        </div><!--/.row-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END WRAPPER -->

<%--新增页面需要的js--%>
    <!--jquery-1.12.4.min.js-->
    <script  src="${pageContext.request.contextPath}/static/admin/js/jquery.min.js"></script>

    <!--chartist.min.js-->
    <script src="${pageContext.request.contextPath}/static/admin/chartist/js/chartist.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin//chartist/js/chartist-tooltip-plugin.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin/chartist/js/chartist-custom.js"></script>

    <!--bootstrap.min.js-->
    <script src="${pageContext.request.contextPath}/static/admin/js/bootstrap.min.js"></script>

    <!--jquery.slimscroll.min.js-->
    <script src="${pageContext.request.contextPath}/static/admin/js/jquery.slimscroll.min.js"></script>

    <!--feather.min.js-->
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>

    <!-- DataMaps Plugin Js -->
    <script src="${pageContext.request.contextPath}/static/admin/js/d3.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin/js/topojson.js"></script>
    <script src="${pageContext.request.contextPath}/static/admin/js/datamaps.world.min.js"></script>

    <!--fontawesome-all.min.js-->
    <script src="${pageContext.request.contextPath}/static/admin/js/fontawesome-all.min.js"></script>

    <!--Custom JS-->
    <script src="${pageContext.request.contextPath}/static/admin/js/custom.js"></script>
</body>
</html>
