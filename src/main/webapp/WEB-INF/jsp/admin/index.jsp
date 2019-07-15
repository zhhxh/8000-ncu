<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>主页</title>
    
    <%@include file="../../common/admin/header.jsp" %>
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" class="img-circle" src="${pageContext.request.contextPath}/static/window/images/touxiang.jpg" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">祝大杰</strong></span>
                                <span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                       <!--        <li><a class="J_menuItem" href="form_avatar.html">修改头像</a>
                                </li>
                                <li><a class="J_menuItem" href="profile.html">个人资料</a>
                                </li>
                                <li><a class="J_menuItem" href="contacts.html">联系我们</a>
                                </li>
                                <li><a class="J_menuItem" href="mailbox.html">信箱</a>
                                </li> -->
                                <li class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/sysadmin/loyout">安全退出</a>
                                </li>
                            </ul>
                        </div>
                    
                    </li>
                    <li>
                     
                     <li>
                         <a class="J_menuItem" href="${pageContext.request.contextPath}/sysadmin/basePage"> <i class="fa fa-home"></i>主页</a>
                     </li>
                     <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/sysadmin/companylist" data-index="0"><i class="fa fa-columns"></i> <span class="nav-label">企业管理</span></a>
                    </li>
                      <li>
                         <a class="J_menuItem" href="${pageContext.request.contextPath}/sysadmin/userlist"> <i class="fa fa-home"></i>用户管理</a>
                     </li>
                     <li>
                         <a class="J_menuItem" href="${pageContext.request.contextPath}/skill/digitManage"> <i class="fa fa-home"></i>数据管理</a>
                     </li>
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/articles/articlesList"> <i class="fa fa-home"></i>资讯管理</a>
                    </li>
                    <li>
                        <a class="J_menuItem" href="${pageContext.request.contextPath}/articles/articlesList"> <i class="fa fa-home"></i>求职技巧文章管理</a>

                        <a class="J_menuItem" href="${pageContext.request.contextPath}/articles/articlesList"> <i class="fa fa-home"></i>资讯推送</a>

                    </li>
                    </li>
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                            <div class="form-group">
                                <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                            </div>
                        </form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i> <span class="label label-warning">16</span>
                            </a>
                           
                        </li>
                      
                 
                    </ul>
                </nav>
            </div>
            <div class="row content-tabs">
                <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
                </button>
                <nav class="page-tabs J_menuTabs">
                    <div class="page-tabs-content">
                        <a href="javascript:;" class="active J_menuTab" data-id="${pageContext.request.contextPath}/sysadmin/basePage">首页</a>
                    </div>
                </nav>
                
                <div class="btn-group roll-nav roll-right">
                    <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                    </button>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a>定位当前选项卡</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                        </li>
                        <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                        </li>
                    </ul>
                </div>
                <a href="#" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i>本系统</a>
      
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="${pageContext.request.contextPath}/sysadmin/basePage" frameborder="0" data-id="${pageContext.request.contextPath}/sysadmin/basePage" seamless></iframe>
            </div>
            <div class="footer">
                <div class="pull-right">&copy; 2017-2019 <a href="http://soft.ncu.edu.cn/" target="_blank">南昌大学软件学院</a>
                </div>
            </div>s
        </div>
        <!--右侧部分结束-->
        <!--右侧边栏开始-->
        <div id="right-sidebar">
            <div class="sidebar-container">

                <ul class="nav nav-tabs navs-3">

                    <li class="active">
                        <a data-toggle="tab" href="#tab-1">
                            <i class="fa fa-gear"></i> 主题
                        </a>
                    </li>
                 
                 
                </ul>

               

            </div>
        </div>
        <!--右侧边栏结束-->
       
    </div>

    <%@include file="../../common/admin/footer.jsp" %>
</body>
</html>