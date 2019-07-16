<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" />
 <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" />
 <%--  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/my_themes_default_style2.css?v=0.0.0.9" front="css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_flexslider.css?v=0.0.0.9" front="css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuicore.css?v=0.0.0.9" front="css" />

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuiselectmenu.css?v=0.0.0.9" front="css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_jqueryuitheme.css?v=0.0.0.9" front="css" />--%>

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
 <%-- <link href="${pageContext.request.contextPath}/static/boostrap/css/page/bootstrap.min.css" rel="stylesheet">--%>
 <link href="${pageContext.request.contextPath}/static/boostrap/css/font-awesome.min.css" rel="stylesheet">

 <!--公共样式-->
 <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/basePage/css/demo.css">--%>


 <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js"></script> --%>
 <%-- <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap-paginator.js" type="text/javascript"></script> --%>

 <script src="${pageContext.request.contextPath}/static/boostrap/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="${pageContext.request.contextPath}/static/boostrap/js/page/bootstrap-paginator.js" type="text/javascript"></script>


 <!-- 整合bootstrap框架 end -->

 <!-- 引入弹窗插件 start -->
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css" />
 <!-- 引入弹窗插件 start -->

 <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=FXcjHySD37i5jomfuwLqxoinxMWWnabd"></script>
 <script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
 <link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
 <style type="text/css">/*去除百度地图版权*/
 body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
 .anchorBL {
  display: none;
 }
 .BMap_cpyCtrl

 {

  display:none;

 }
 #page li{
  cursor:pointer;
 }
 pre{
  display:block;padding:9.5px;margin:0 0 10px;font-size:13px;line-height:1.42857143;color:#333;word-break:break-all;word-wrap:break-word;background-color:#f5f5f5;border:1px solid #ccc;border-radius:4px;
  font-size:inherit;color:inherit;white-space:pre-wrap;background-color:transparent;
  overflow:auto
 }


 </style>
 <title>招聘信息列表</title>
</head>
<body>




<!-- 动态包含头部导航 -->
<jsp:include page="../common/header.jsp" flush="true" />

<div class="nav">
 <!--module:menu begin-->
 <div class="bs-module">
  <div class="menu-simple ">
   <ul id="portalmenu" style="padding-bottom: 0px ">

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
  <div style="width: 72%; margin-left: 14%;border: solid 10px #e0e5e8;  border-radius: 3px; padding-top: 10px; padding-bottom: 20px; height: auto">
   <div class="bs-module " style="width: 70%; margin-left: 15% ">
    <div class="positiondetail-simple ">



     <div class="xiangqingtitle">
      <span>${myrecruitment.jobname } </span>
     </div>
     <div class="xiangqingcontain">

      <div class="xiangqingline"></div>
      <ul class="xiangqinglist clearfix">
       <li class="ntitle td-HasRecruitCategories">招聘类别：</li>
       <li class="nvalue" style="width:34%;"> ${myrecruitment.type } </li>
       <li class="ntitle td-HasKind">工作性质：</li>
       <li class="nvalue"> ${myrecruitment.worknature } </li>
      </ul>
      <ul class="xiangqinglist clearfix">
       <li class="ntitle td-HasSalaries">薪资范围：</li>
       <li class="nvalue" style="width:34%;">  ${myrecruitment.minwage } -  ${myrecruitment.maxwage } </li>
       <li class="ntitle td-HasHeadCount" >招聘人数：</li>
       <li class="nvalue"> ${myrecruitment.number } </li>
      </ul>

      <ul class="xiangqinglist clearfix">
       <li class="ntitle td-HasSalaries">工作经验：</li>
       <li class="nvalue" style="width:34%;"> ${myrecruitment.workexperience } </li>
       <li class="ntitle td-HasHeadCount" >学历要求：</li>
       <li class="nvalue"> ${myrecruitment.xueli } </li>
      </ul>


      <ul class="xiangqinglist clearfix">
       <li class="ntitle td-HasSalaries">发布时间：</li>

       <li class="nvalue" style="width:34%;" id="publictime1"> </li>
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
       <li class="ntitle td-HasSalaries">公司名称：</li>
       <li class="nvalue" style="width:34%;"> ${myrecruitment.companyname } </li>
      </ul>

     </div>
    </div>

    <div class="xiangqingtext">
     <p>工作地址：${myrecruitment.address } <input type="button" onclick="getLoction()" style=" width:6%;height:25px; float: right; background: #ccc; border-radius: 3px;" value="刷新" ></p>
     <br />
     <%--  <p>工作地点: ${myrecruitment.address }</p>  --%>
     <div style=" background-color: #f9f9f9;  margin-bottom: 30px" align="center" >
      <!--<div id="allmap" style="width:100%; height:300px; border: solid 1px #ccc; margin-bottom: 20px; overflow: hidden;" align="center"></div>-->
      <div id="allmap" style=" width:100%; height:300px;overflow: hidden;" ></div>

     </div>
     <p>职业诱惑:</p>
     <pre> ${myrecruitment.attract } </pre>  <br />
     <p>工作职责:</p>
     <pre>${myrecruitment.jobduty } </pre>  <br />
     <p>任职要求：</p>
     <pre>${myrecruitment.jobrequired } </pre>  <br />


    </div>
    <div class="xiangqingfooter clearfix">
     <div class="footerbtn fl" >
      <a id="apply"  ${requestScope.hasApplay?'':'onclick="applay1()"' } style="cursor:pointer;${requestScope.hasApplay?'background-color:#BFBFBF':'background-color:#22cade;'}">${requestScope.hasApplay?'您已经申请':'现在申请' }</a>

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
     <div style="padding-top: 10px">
      <div class="shareto" style="float: left; margin-left: 10px; margin-bottom: 20px">

       <!-- <img src="${pageContext.request.contextPath}/static/window/images/weibo.png"  style="width: 15px; height: 15px;"/>
              <img src="${pageContext.request.contextPath}/static/window/images/wechat.png"  style="width: 15px; height: 15px;"/>
              <img src="${pageContext.request.contextPath}/static/window/images/qq.png"  style="width: 15px; height: 15px;"/>-->
       <div style="width:340px;margin:0; padding:0 0 0 0px;overflow:hidden">
        <!-- Baidu Button BEGIN -->
        <div style="float: left; height: 30px; line-height: 30px;">
         分享到：
        </div>
        <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare" style="margin:0px 0 0 -4px">
         <a class="bds_tsina" ></a>
         <a class="bds_tqq"></a>
         <a class="bds_qzone"></a>
         <a class="bds_douban"></a>
         <span class="bds_more" style="height:40px;"></span>
         <a class="shareCount" style="height:auto;"></a>
        </div>
        <script type="text/javascript" id="bdshare_js" data="type=tools" ></script>
        <script type="text/javascript" id="bdshell_js"></script>
        <script type="text/javascript">
         document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + new Date().getHours
         ();
        </script>
       </div>
      </div>
      <div style="" class="jiathis_style">
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
   <!-- <div style=" background-color: #f9f9f9;  "align="center"  >

        <div id="allmap" style="width:70%; height: 400px; border: black; border: solid 1px #5e5e5e; padding-bottom: 20px;" align="center"></div>
    </div>-->

  </div>
  <!--module:positiondetail end-->
 </div>
</div>
<!-- 静态包含 -->
<%@include file="../common/footer.jsp"%>
<!-- 弹窗插件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>



<script>

 function getLoction()
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
    var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
            address +
            '</div>';
    map.centerAndZoom(point, 16);
    var latDes = point.lat;
    var lngDes = point.lng;
    var marker = new BMap.Marker(point);
    //创建搜索信息窗口对象
    var searchInfoWindow = null;
    searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
     title  : "地址",      //标题
     width  : 290,             //宽度
     height : 105,              //高度
     panel  : "panel",         //检索结果面板
     enableAutoPan : true,     //自动平移
     searchTypes   :[
      BMAPLIB_TAB_SEARCH,   //周边检索
      BMAPLIB_TAB_TO_HERE,  //到这里去
      BMAPLIB_TAB_FROM_HERE //从这里出发
     ]
    });

    map.addOverlay(marker);  //将标注添加到地

    // marker.enableDragging(); //marker可拖拽
    marker.addEventListener("click", function(e){
     searchInfoWindow.open(marker);
    });



   } else {
    alert("您选择地址没有解析到结果!");

   }
  }, "中国");



 }
 window.onload = function(address)
 {
  getLoction();
 }


</script>


</body>



</html>
