<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <base href="<%=basePath%>"><!-- jsp文件头和头部 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title> 登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/css/dialog.css">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/boostrap/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/matrix-login.css"/>
</head>

<body style="background: url(${pageContext.request.contextPath}/static/login/backgroundadm.png)">
<div id="windows1">
    <div id="loginbox">
        <form id="loginForm" method="post" action="${pageContext.request.contextPath}/sysadmin/login">
            <div class="control-group normal_text">
                <img src="${pageContext.request.contextPath}/static/login/logo.png" style="height: 40px" alt="Logo"/>
            </div>
            <div class="control-group">
                <div class="controls">
                    <div class="main_input_box">
                        <span class="glyphicon glyphicon-user"></span>
                        <input type="text" class="form-control uname" placeholder="用户名" name="username" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <div class="main_input_box">
                        <span class="glyphicon glyphicon-lock"></span>
                        <input type="password" class="form-control pword m-b" placeholder="密码" name="password" />
                    </div>
                </div>
            </div>
            <div class="form-actions-adm">
                <button type="submit" class="btn btn-info button btn-block">登录</button>
            </div>
        </form>

    </div>
</div>
<%@include file="../../common/admin/footer.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/js/dialog.js"></script>
</body>
</html>