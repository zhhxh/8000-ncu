<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/jquery.min.js?v=2.1.4"></script> --%>
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
   <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap-paginator.js" type="text/javascript"></script> --%>

    <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/boostrap/js/page/bootstrap-paginator.js" type="text/javascript"></script>

    <style>
        #page li{
            cursor:pointer;
        }
    </style>
  <!-- 整合bootstrap框架 end -->

   <!-- 引入弹窗插件 start -->
  	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css" />

    <!-- 引入弹窗插件 start -->
  <title>招聘信息列表</title>
    <%--地图--%>
    <script type="text/javascript"s src="http://api.map.baidu.com/api?v=2.0&ak=FXcjHySD37i5jomfuwLqxoinxMWWnabd"></script>
 </head>
<body>




   <!-- 动态包含头部导航 -->
  <jsp:include page="../common/header.jsp" flush="true" />

   <div class="nav">
    <!--module:menu begin-->
    <div class="bs-module">
     <div class="menu-simple ">
      <ul id="portalmenu" style="">

       <li><a target="_self" href="${pageContext.request.contextPath}/system/index" >首页</a> </li>
       <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>职位搜索</a> </li>
       <!-- <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=社招" ${requestScope.moreCondition.type eq '社招' ? 'class="current"':'' }>社会招聘</a> </li>  -->
       <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>实习专区</a> </li>
       <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList" class="">最新资讯</a> </li>
       <li><a target="_self" href="${pageContext.request.contextPath}/system/showOurCompany">求职技巧</a> </li>
       <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/detail" class="current">招聘详情</a> </li>
      </ul>
     </div>
    </div>
    <!--module:menu end-->
   </div>



   <div class="contain zpcontain clearfix" style="margin-bottom: 0px;">

   <div class="zhiweixiangqing fr" style="width:100%;color:black;">
    <!--module:positiondetail begin-->
    <div class="bs-module">
     <div class="positiondetail-simple ">



      <div class="xiangqingtitle">
       <span>${myrecruitment.jobname } </span>
      </div>
      <div class="xiangqingcontain">
       <div class="xiangqingline"></div>
       <ul class="xiangqinglist clearfix">
        <li class="ntitle td-HasRecruitCategories">招聘类别：</li>
        <li class="nvalue" style="width:300px;"> ${myrecruitment.type } </li>
        <li class="ntitle td-HasKind">工作性质：</li>
        <li class="nvalue"> ${myrecruitment.worknature } </li>
       </ul>
       <ul class="xiangqinglist clearfix">
            <li class="ntitle td-HasSalaries">薪资范围：</li>
	        <li class="nvalue" style="width:300px;">  ${myrecruitment.minwage } -  ${myrecruitment.maxwage } </li>
	        <li class="ntitle td-HasHeadCount" >招聘人数：</li>
	        <li class="nvalue"> ${myrecruitment.number } </li>
       </ul>

       <ul class="xiangqinglist clearfix">
            <li class="ntitle td-HasSalaries">工作经验：</li>
	        <li class="nvalue" style="width:300px;"> ${myrecruitment.workexperience } </li>
	        <li class="ntitle td-HasHeadCount" >学历要求：</li>
	        <li class="nvalue"> ${myrecruitment.xueli } </li>
       </ul>

       <ul class="xiangqinglist clearfix">
            <li class="ntitle td-HasSalaries">公司名称：</li>
	        <li class="nvalue" style="width:300px;"> ${myrecruitment.companyname } </li>
	        <li class="ntitle td-HasHeadCount" >招聘类型：</li>
	        <li class="nvalue"> ${myrecruitment.type } </li>
       </ul>

        <ul class="xiangqinglist clearfix">
            <li class="ntitle td-HasSalaries">发布时间：</li>

	        <li class="nvalue" style="width:300px;" id="publictime1"> </li>
	        <script type="text/javascript">
		    			//处理当前时间，转化成良好的格式
						  var datetime = new Date("${myrecruitment.publictime }"+"  GMT+0800");
		    			 var year = datetime.getFullYear();
		    			 var month = datetime.getMonth() + 1;
		    			 var date = datetime.getDate();
		    			 var hours = datetime.getHours()
		    			 var minutes = datetime.getMinutes();
		    			 var seconds = datetime.getSeconds()
		    			 var publictime = year+"-"+month+"-"+date+" " + hours+":"+minutes+":"+seconds;
		    			 var jiezi = document.getElementById("publictime1");  //传递的参数是标签里面的id的值
		    			  jiezi.innerHTML = publictime;
		    </script>
	        <li class="ntitle td-HasSalaries">工作性质：</li>
	        <li class="nvalue"> ${myrecruitment.worknature } </li>
       </ul>

       <ul class="xiangqinglist clearfix">
        <div class="xiangqingtext">
        <%--  <p>工作地点: ${myrecruitment.address }</p>  --%>

         <p>职业诱惑:</p>
         <p> ${myrecruitment.attract } </p>  <br />
         <p>工作职责:</p>
         <pre>${myrecruitment.jobduty } </pre>  <br />

         <p>任职要求：</p>
         <pre>${myrecruitment.jobrequired } </pre>  <br />

         <p>工作地址：</p>
         <p>${myrecruitment.address } </p>  <br />
        </div>
        <div class="xiangqingfooter clearfix">
         <div class="footerbtn fl">
         <a id="apply" ${requestScope.hasApplay?'':'onclick="applay1()"' } style="cursor:pointer;${requestScope.hasApplay?'background-color:#BFBFBF':'background-color:#00B38A'}">${requestScope.hasApplay?'您已经申请':'现在申请' }</a>

      		<script type="text/javascript">
      		    var mid = "${myrecruitment.id}";
	      		var btnFn = function(){
					window.location.href = '${pageContext.request.contextPath}/myrecruitment/detail?id='+mid;
	      		};

      			function applay1(){

      				var cid = "${myrecruitment.cid}";

      				$.ajax({
    					type: "POST",
    					url: '${pageContext.request.contextPath}/applay/saveApplay',
    			    	data: {cid:cid,mid:mid},
    					dataType:'json',
    					cache: false,
    					success: function(data){
    						if("-1" == data.code){
    							alert(data.data);
    							window.location.href = '${pageContext.request.contextPath}/user/memberResume';
    						}else if("1" == data.code){
    							/* easyDialog.open({
    					      		  container : {
    					      		    header : '投递反馈',
    					      		    content : '感谢你的投递，后续有消息将会通知你，请耐心等待',
    					      		    yesFn : btnFn,
    					      		    noFn : false
    					      		  }
    					      	}); */
    					      	alert("感谢你的投递，后续有消息将会通知你，请耐心等待");
    							//表示注册成功，调到登录页面
    							window.location.href = '${pageContext.request.contextPath}/myrecruitment/detail?id='+mid;
    						}
    					}
    				});
      			}
      		</script>
         </div>

        </div>
        <div class="fenxiang clearfix">
         <a href="#this" id="collect">收藏</a>
         <div style="padding-top: 10px">
          <div class="shareto" style="float: left; margin-left: 20px; margin-bottom: 20px">
           分享到：
          </div>
          <div style="float: left" class="jiathis_style">
           <a class="jiathis_button_email"></a>
           <a class="jiathis_button_tqq"></a>
           <a class="jiathis_button_qzone"></a>
           <a class="jiathis_button_xiaoyou"></a>
           <a class="jiathis_button_tsina"></a>
           <a class="jiathis_button_renren"></a>
          </div>
         </div>


        </div>
       </ul>
      </div>

     </div>
    </div>
    <!--module:positiondetail end-->
   </div>
  </div>
   <%--地图--%>
   <div style=" background-color: #f9f9f9; padding-left: 40px; "align="center"  >

       <div id="allmap" style="width:80%; height: 400px;  " align="center"></div>
   </div>
   <script>


     function getLoc()
     {
       var address="${myrecruitment.address}";
       //  alert(address+"three");
       var map = new BMap.Map("allmap");

       var point_2 = new BMap.Point(116.709684,39.89778);
       map.centerAndZoom(point_2, 16);
       map.enableScrollWheelZoom();
       // 创建地址解析器实例
       var myGeo = new BMap.Geocoder();
       // 将地址解析结果显示在地图上,并调整地图视野
       // alert(address);
       myGeo.getPoint(address, function (point) {
         if (point) {
           map.centerAndZoom(point, 16);
           //在point位置添加标注
           var myIcon = new BMap.Icon("${pageContext.request.contextPath}/static/window/images/loc_1.png", new BMap.Size(30, 30), {
             anchor: new BMap.Size(10, 10)
           });
           var address1= address;
           var marker = new BMap.Marker(point, {icon: myIcon}); //添加标注
           map.addOverlay(marker);  //将标注添加到地
           // alert('您的目的地：' + point.lat+','+point.lng);
           var licontent = "<b>地址："+address1+"</b><br>";
           var opts = {
             width: 30,
             height: 20,

           };
           var latDes = point.lat;
           var lngDes = point.lng;
           var infoWindow = new BMap.InfoWindow(licontent, opts);
           marker.openInfoWindow(infoWindow);
           marker.addEventListener('click', function () {


             //定位
             var geolocation = new BMap.Geolocation();
             geolocation.getCurrentPosition(function(r) {
               if (this.getStatus() == BMAP_STATUS_SUCCESS) {
                 //  var mk = new BMap.Marker(r.point);
                 //  map.addOverlay(mk);
                 //map.panTo(r.point);//地图中心点移到当前位置
                 var latCurrent = r.point.lat;
                 var lngCurrent = r.point.lng;
                 // alert('我的位置：' + latCurrent + ',' + lngCurrent);


                 //  根据维度纬度显示城市
                 var point_1 = new BMap.Point(lngCurrent, latCurrent);
                 var geoc = new BMap.Geocoder();
                 geoc.getLocation(point_1, function (rs) {
                   var addComp = rs.addressComponents;
                   var localCity= addComp.city;
                   //   alert('您所在城市：' + addComp.city);

                   //路线
                   //location.href="http://api.map.baidu.com/direction?origin="+latCurrent+","+lngCurrent+"&destination="+latDes+","+lngDes+"&mode=driving&region="+localCity+"&output=html";
                 });
               }else {
                 alert('failed' + this.getStatus());
               }
             }, {enableHighAccuracy: true})



           });


         } else {
           alert("您选择地址没有解析到结果!");

         }
       }, "中国");



     }

     window.onload = function(address)
     {
       getLoc();
     }


   </script>
   <!-- 静态包含 -->
  <%@include file="../common/footer.jsp"%>
  <!-- 弹窗插件 -->
   <script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>

 </body>
</html>
