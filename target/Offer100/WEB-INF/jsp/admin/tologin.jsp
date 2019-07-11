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
</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ HELLO! ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>招聘 后台管理系统</strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 介绍一</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 介绍二</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 介绍三</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 介绍四</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 介绍五</li>
                    </ul>
                  
                </div>
            </div>
            <div class="col-sm-5">
                <form  method="post" action="${pageContext.request.contextPath}/sysadmin/login">
                    <h3 class="no-margins" style="color:black;">登录：</h3>
                    <p class="m-t-md" style="color:black;">登录到后台管理系统</p>
                    <input type="text" class="form-control uname" placeholder="用户名" name="username" />
                    <input type="password" class="form-control pword m-b" placeholder="密码" name="password" />
                    <p style="color:black;">${error }</p>
                    <input type="submit" value="登录" class="btn btn-success btn-block">
               
                  <!--   <button class="btn btn-success btn-block" onclick="login();">登录</button> -->
                </form>
            </div>
        </div>
        <script type="text/javascript">
        	
        
        
        
        </script>
        <div class="signup-footer">
            <div class="pull-left" style="color:black;">
                 
            </div>
        </div>
    </div>
     <%@include file="../../common/admin/footer.jsp" %>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/js/dialog.js"></script>
</body>
</html>