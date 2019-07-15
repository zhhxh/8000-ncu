<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript"s src="http://api.map.baidu.com/api?v=2.0&ak=FXcjHySD37i5jomfuwLqxoinxMWWnabd"></script>
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script><!--调用jQuery-->
</head>
<body>

<div class="header">
	<div style="float:left; padding-left:100px;width: 200px;height: 20px; margin-top:15px;">
		<img src="${pageContext.request.contextPath}/static/window/images/loc_1.png" style="height: 15px; width: 15px;"/>
		<input type="button" value="定位中.."  id="loc" style="width: auto; padding-left: 3px;  background-color: white; color: #3f4954; font-size: medium"/>
	</div>
   <div class="headercontain">
    <div class="logo">

    </div>
    <!--module:login begin-->
    <div class="bs-module">
     <div class="login-link ">
      <div class="login-hearder">



       <c:choose>
		   <c:when test="${sessionScope.user.username!=null}">
		            <ul class="header-login" style="">
				        <li class="LogoutUrl"><span class="userName" style="float:none;color:black">${sessionScope.user.username }，欢迎您！</span></li>
						<li class="PortalIndex"><div style="margin-top: -3px"><a href="${pageContext.request.contextPath}/user/userInfo"><span style="float:none;color:#5BC0DE;">个人中心</span></a></div></li>
				        <li class="LogoutUrl"><span onclick="layout()" style="color:black;">退出</span></li>
				        <li><a class="loginlink" href="${pageContext.request.contextPath}/companyUser/index"> <span style="color:#5BC0DE;">进入企业版</span> </a></li>
				    </ul>
		   </c:when>
		   <c:otherwise>
		    		<ul class="header-unLogin" style="">
				        <li><a class="loginlink" href="${pageContext.request.contextPath}/system/login"> <span>用户登录</span> </a></li>
				        <li><a class="loginlink" href="${pageContext.request.contextPath}/companyUser/index"> <span>进入企业版</span> </a></li>
				     </ul>
		   </c:otherwise>
		</c:choose>


      </div>

     </div>
    </div>
    <!--module:login end-->
   </div>
  </div>
  <script type="text/javascript">
  	function layout(){
  		//alert("退出");
  		$.ajax({
			type: "POST",
			url: '${pageContext.request.contextPath}/user/layout',
			dataType:'json',
			cache: false,
			success: function(data){
				if("-1" == data.code){
					easyDialog.open({
						container : {
							content : data.msg
						},
						autoClose : 1500
					});
				}else if("1" == data.code){
					//表示退出session成功，调到登录页面
					window.location.href = '${pageContext.request.contextPath}/system/index';
				}
			}
		});
  	}
    // 百度地图API功能
    var map = new BMap.Map("bdMapBox");
    var nowCity = new BMap.LocalCity();
    // var total= document.getElementById("atCity2").innerHTML();
    nowCity.get(bdGetPosition);

    function bdGetPosition(result) {
      var cityName = result.name; //当前的城市名
      /*自定义代码*/
      $("#loc").attr("value", cityName);
      // alert(cityName);

    }

  </script>
</body>
</html>
