<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow-x: hidden">
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
  
  <title>首页</title> 
 </head> 
<body> 

 
  <!-- 动态包含头部导航 -->
  <jsp:include page="../common/header.jsp" flush="true" />




  <div class="jobserch">

	  <form name="searchForm" id="searchForm" action="${pageContext.request.contextPath}/myrecruitment/joblist" method="get">
		  <div class="serchjob">
			  <div class="listtitle" style="float: left;width: 25%">
				  <img src="${pageContext.request.contextPath}/static/window/images/logo.png" alt="index_logo" style="width: 100%">
			  </div>
			  <div style="float: right;width: 74%;height: 88px"> <input type="text" class="serchinput" maxlength="50" id="datalist" name="datalist" style="height:55px;line-heitht:35px;font-size:16px;font-weight: initial" placeholder="&nbsp;&nbsp;搜索职位 公司 （多个关键字，建议空格分隔） 例如 java "/>
				  <span class="serchbtn">
	           			  <input type="submit" value="搜索" class="button  subButton" style="width:90px;float:left;background-color:#22cade;height:55px;font-size:16px;color:white;margin-top:10px;">
	           		</span>
				  <div style="float: right;width: 200px">
					  <span style="font-size:12px;color:#22cade;margin-right:5px;margin-top: 30px">扫码下载APP</span>
					  <img src="${pageContext.request.contextPath}/static/window/images/code.jpg" alt="index_code" style="height: 80px;margin-top: 6px;margin-left: 3px">
				  </div>
			  </div>
		  </div>
	  </form>
	  <div class="serchjob">
		  <div class="listtitle"></div>
		  <div>
			  <span style="font-size:15px;color:black;margin-left: 30%;">热门搜索：</span> <span  style="font-size:15px;color:#22cade">java&nbsp;&nbsp; UI设计师&nbsp;&nbsp; PHP&nbsp;&nbsp; 销售经理&nbsp;&nbsp; 产品经理  &nbsp;&nbsp;C++ &nbsp;&nbsp;内容运营</span>
		  </div>
	  </div>

  </div>



  <!-- 静态包含 -->
  <%-- <%@include file="../common/nav.jsp"%> --%>
  <!-- 导航栏信息 start -->
  <div class="nav"> 
	   <!--module:menu begin--> 
	   <div class="bs-module"> 
	    <div class="menu-simple "> 
	     <ul id="portalmenu" style="">
	      
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/index"  class="current">首页</a> </li>
	     <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all" ${requestScope.all eq 'all' ? 'class="current"':'' }>职位搜索</a> </li>
             <!-- <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=社招" ${requestScope.moreCondition.type eq '社招' ? 'class="current"':'' }>社会招聘</a> </li>  -->
             <li><a target="_self" href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招" ${requestScope.moreCondition.type eq '校招' ? 'class="current"':'' }>实习专区</a> </li>
	      <li><a target="_self" href="${pageContext.request.contextPath}/articles/user/articlesList" class="">最新资讯</a> </li>
	      <li><a target="_self" href="${pageContext.request.contextPath}/skill/showOurCompany" class="">求职技巧</a> </li>
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/contact" class="">联系我们</a> </li>
	     </ul> 
	    </div> 
	   </div> 
	   <!--module:menu end--> 
   </div>


  <div id="myCarousel" class="carousel slide">
	  <!-- 轮播（Carousel）指标 -->
	  <ol class="carousel-indicators">
		  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		  <li data-target="#myCarousel" data-slide-to="1"></li>
		  <li data-target="#myCarousel" data-slide-to="2"></li>
	  </ol>
	  <!-- 轮播（Carousel）项目 -->
	  <div class="carousel-inner">
		  <div class="item active">
			  <img src="${pageContext.request.contextPath}/static/window/images/roll_1.jpg" alt="First slide">
		  </div>
		  <div class="item">
			  <img src="${pageContext.request.contextPath}/static/window/images/roll_2.jpg" alt="Second slide">
		  </div>
		  <div class="item">
			  <img src="${pageContext.request.contextPath}/static/window/images/roll_3.jpg" alt="Third slide">
		  </div>
	  </div>
	  <!-- 轮播（Carousel）导航 -->
	  <a class="carousel-control left" href="#myCarousel"
		 data-slide="prev"></a>
	  <a class="carousel-control right" href="#myCarousel"
		 data-slide="next"></a>
  </div>
  <!-- 导航栏信息 end -->
  <%-- <div class="nav"> 
	   <!--module:menu begin--> 
	   <div class="bs-module"> 
	    <div class="menu-simple "> 
	     <ul id="portalmenu"> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/index" class="current">首页</a> </li> 
	      <li><a target="_self" href="jobs.html" class="">全部职位</a> </li> 
	      <li><a target="_self" href="social.html" class="">社会招聘</a> </li> 
	      <li><a target="_self" href="jobs.html" class="">校园招聘</a> </li> 
	      <li><a target="_self" href="jobs.html" class="">实习生招聘</a> </li> 
	      <li><a target="_self" href="${pageContext.request.contextPath}/system/showOurCompany">公司介绍</a> </li> 
	      <li><a target="_self" href="contact.html" class="">联系我们</a> </li> 
	     </ul> 
	    </div> 
	   </div> 
	   <!--module:menu end--> 
   </div>  --%>
  
  <%-- 图片
  <div class="pictureturn" style="background-color:#FFFFFF;"> 
   <!--module:imageslider begin--> 
   <div class="bs-module"> 
    <div class="imageslider-default "> 
     <div class="flexslider"> 
      <ul class="slides"> 
       <li> <img style="width:70%;" src="${pageContext.request.contextPath}/static/basePage/images/104003_medias_2015923_201592317513947.jpg" /> </li> 
      </ul> 
     </div> 
     <script type="text/javascript">
     	
	    $(document).ready(function(){
	        $('.flexslider').flexslider({ animation: "fade", directionNav: false, slideshowSpeed: 5000 });
	    });
</script> 
    </div> 
   </div> 
   <!--module:imageslider end--> 
  </div>
  --%>
  
  <div class="contain clearfix" style=""> 
   <div class="clearfix eheight"> 
    <!--module:positionsearch begin--> 
    <div class="bs-module"> 
     <div class="positionsearch-smallfresh ">
      <a name="jlt"></a> 
      <div class="zhiweisousuo bodertop"> 
       <div class="parttitleline"></div> 
       <div class="parttitle"> 
        <span class="serchico"></span> 
        <div class="wordtitle" style="color:black;">
         求职技巧
        </div> 
       </div>
      <a href="${pageContext.request.contextPath}/skill/showOurCompany" class="morelinks">更多&gt;&gt;</a>
      <div class="dongtailinks">
          <ul>
              <c:forEach items="${returnskill }" var="article">
                  <li><a href="${pageContext.request.contextPath}/skill/detail?id=${article.articleid}"  target="_blank">${article.articletitle}</a></li>
              </c:forEach>

          </ul>
              <div class="serchcontain">
       </div> 
      </div> 
      <script type="text/javascript">
    function GetParam(key) {
        return (document.location.search.match(new RegExp("(?:^\\?|&)" + key + "=(.*?)(?=&|$)")) || ['', null])[1];
    }

    function myHTMLEnCode(str) {
        var s = "";
        if (str.length == 0) return "";
        s = str.replace(/&/g, "&");
        s = s.replace(/</g, "<");
        s = s.replace(/>/g, ">");
        s = s.replace(/ /g, "&nbsp;");
        s = s.replace(/\'/g, "&#39;");
        
        s = s.replace(/\n/g, "<br>");
        return s;
    }

    function myHTMLDeCode(str) {
        var s = "";
        if (str.length == 0) return "";
        s = str.replace(/&/g, "&");
        s = s.replace(/</g, "<");
        s = s.replace(/>/g, ">");
        s = s.replace(/&nbsp;/g, " ");
        s = s.replace(/&#39;/g, "\'");
        s = s.replace(/"/g, "\"");
        s = s.replace(/<br>/g, "\n");
        return s;
    }

    var defaultText = "搜索职位 公司 ";

    $(document).ready(function () {
        $("input[name='keyword']").click(function () {
            $(this).val("");
        });

        var keyWord = GetParam("k");

        if (keyWord != null) {
            keyWord = decodeURIComponent(keyWord);
            keyWord = myHTMLDeCode(keyWord);

            $("input[name='k']").val(keyWord);
        }

        $("#searchlink").click(function () {
            var r = GetParam("r");
            r = (r == null ? -1 : r);
            var p = GetParam("p");
            p = (p == null ? "" : p);
            var c = GetParam("c");
            c = (c == null ? "" : c);
            var d = GetParam("d");
            d = (d == null ? "" : d);
            var k = $("input[name='k']").val();

            if (k == defaultText)
                k = "";

            k = myHTMLEnCode(k);
            k = encodeURIComponent($.trim(k));
            location.href = "/search" + "?r=" + r + "&p=" + p + "&c=" + c + "&d=" + d + "&k=" + k + '#jlt';
        });

        var keyStr = $("#k").val();
        if (!keyStr || keyStr == "") {
            $("#k").css("color", "#d2cece");
            $("#k").val(defaultText);
        }

        $("#k").focus(function () {
            var v = $(this).val();
            if (v == defaultText) {
                $(this).val("");
                $(this).css("color", "");
            }
        });

        $("#k").blur(function () {
            var v = $(this).val();
            if (!v || v == "") {
                $(this).val(defaultText);
                $(this).css("color", "#d2cece");
            }
        });

    });
</script> 
     </div> 
    </div> 
    <!--module:positionsearch end--> 
    <div class="zhaopindongtai bodertop"> 
     <!--module:newslist begin--> 
     <div class="bs-module"> 
      <div class="newslist-newsimple "> 
       <div class="parttitleline"></div> 
       <div class="parttitle">
        <span class="dongtaiico"></span>
        <div class="wordtitle" style="color:black;">
         求职资讯
        </div>
       </div> 
       <a href="${pageContext.request.contextPath}/articles/user/articlesList" class="morelinks">更多&gt;&gt;</a> 
       <div class="dongtailinks"> 
        <ul>
        <c:forEach items="${returnArticles }" var="article">
         	<li><a href="${pageContext.request.contextPath}/articles/detail?id=${article.articleid}"  target="_blank">${article.articletitle}</a></li>
        </c:forEach>
        
        </ul> 
       </div> 
      </div> 
     </div> 
     <!--module:newslist end--> 
    </div> 
   </div> 
   <!--module:jobstab begin--> 
   <div class="bs-module" > 
    <div class="jobstab-default"> 
     <div class="zhiweiliebiao" style="width:100%;"> 
      <div class="listnav"> 
       <ul> 
        <li><a href="javascript:void(0)" class="listchooseon" id="hotjob">最新职位</a></li> 
        <li><a href="javascript:void(0)" id="longjob">校园招聘</a></li> 
        <!-- <li><a href="javascript:void(0)" id="company">热门公司</a></li>  -->
       </ul> 
       

      </div> 
      <div class="listlinks">
          <ul id="ulhotjob">


              <c:forEach items="${latestjob}" var="lastest">


              <li style="list-style: none">
                  <!-- 卡片 start -->
                  <div  class="container">
                      <div  class="row" >




                                  <div class="col-md-4 col-sm-6 myCard">
                              <div class="serviceBox">
                                  <!-- <div class="service-icon">
                                      <i class="fa fa-mobile"></i>
                                  </div> -->
                                  <div class="service-Content">
                                      <div>
                                          <span class="title"><a href="${pageContext.request.contextPath}/myrecruitment/detail?id=${lastest.id }" style="font-size:17px;" target="_blank">${lastest.jobname }</a></span>
                                          <span class="publiTime">[${lastest.publictime } 发布] </span>
                                          <span class="money">${lastest.minwage }-${lastest.maxwage }</span>
                                      </div>
                                      <div class="secondline">
                                          <span class="required">${lastest.workexperience } / ${lastest.xueli } / ${lastest.type } &nbsp;&nbsp;&nbsp;&nbsp;</span>
                                          <button type="button" class="btn  btn-default btn-xs" data-toggle="tooltip" data-placement="right" title="Hi，对我发布的职位感兴趣吗？用小程序客户端可以直接跟我聊天.'招聘小程序'" style="color:#FA6041">联系我</button>
                                          <script type="text/javascript">
                                              $(function () {
                                                  $('[data-toggle="tooltip"]').tooltip()
                                              })

                                          </script>
                                      </div>
                                      <div class="thirdline" id="${lastest.id }">
                                          <!-- Contextual button for informational alert messages -->
                                          <script type="text/javascript">
                                              var jobkey = "${lastest.jobkey}";
                                              var strs= new Array(); //定义一数组
                                              strs = jobkey.split(" ");

                                              var id = "${lastest.id }";
                                              for ( var i = 0; i <strs.length; i++){
                                                  $("#${lastest.id }").append("<button type='button' class='btn btn-info btn-xs'>"+strs[i]+"</button>");
                                              }

                                          </script>
                                              <%-- <button type="button" class="btn btn-info btn-xs">${lastest.jobkey}</button>
                                              <button type="button" class="btn btn-info btn-xs">高级</button>
                                              <button type="button" class="btn btn-info btn-xs">JAVA</button> --%>
                                      </div>
                                      <div class="description thirdline">
                                              ${lastest.attract }

                                      </div>
                                      <hr/>
                                      <div class="fourline" >
                                          <span class="title"><a href="${pageContext.request.contextPath}/company/companyDetail?id=${lastest.cid }" target="_blank" style="font-size:16px;">${lastest.companyname }</a></span>
                                      </div>
                                      <div class="secondline">
                                          <span class="required">${lastest.industry } /${lastest.development }  / ${lastest.address }&nbsp;&nbsp;&nbsp;&nbsp;</span>

                                      </div>
                                  </div>
                              </div>
                      </div>
                      </div>
                  </div>

                  <!-- 卡片  end-->

                  </c:forEach>


              </li>


              <li style="text-align:center;width:100%;list-style: none">
                  <!-- Indicates a successful or positive action -->
                  <a href="${pageContext.request.contextPath}/myrecruitment/joblist"><button type="button" class="btn btn-success" style="background-color: #22cade;border: #22cade">查看更多</button></a>

              </li>


          </ul>

		  <ul id="ullongjob">
			  <c:forEach items="${schoolJob }" var="school">
				  <li>
					  <!-- 卡片 -->
					  <div class="container">
						  <div class="row" >
							  <div class="col-md-4 myCard">
								  <div class="serviceBox">
									  <!-- <div class="service-icon">
                                          <i class="fa fa-mobile"></i>
                                      </div> -->
									  <div class="service-Content">
										  <div>
											  <span class="title"><a href="${pageContext.request.contextPath}/myrecruitment/detail?id=${school.id }" style="font-size:17px;" target="_blank">${school.jobname }</a></span>
											  <span class="publiTime">[${school.publictime }发布]</span>
											  <span class="money">${school.minwage }-${school.maxwage }</span>
										  </div>
										  <div class="secondline">
											  <span class="required">${school.workexperience }/ ${school.xueli} / ${school.type } &nbsp;&nbsp;&nbsp;&nbsp;</span>
											  <button type="button" class="btn  btn-default btn-xs" data-toggle="tooltip" data-placement="right" title="Hi，对我发布的职位感兴趣吗？用小程序客户端可以直接跟我聊天.'招聘小程序'" style="color:#FA6041">联系我</button>
											  <script type="text/javascript">
                                                  $(function () {
                                                      $('[data-toggle="tooltip"]').tooltip()
                                                  })

											  </script>
										  </div>
										  <div class="thirdline">
											  <!-- Contextual button for informational alert messages -->
											  <button type="button" class="btn btn-info btn-xs">${school.jobkey }</button>

										  </div>
										  <div class="description thirdline">
												  ${school.attact }
										  </div>
										  <hr/>
										  <div class="fourline" >
											  <span class="title"><a href="${pageContext.request.contextPath}/company/companyDetail?id=${school.cid }" target="_blank" style="font-size:16px;">${school.companyname }</a></span>
										  </div>
										  <div class="secondline">
											  <span class="required"> ${school.industry }/ ${school.development }  /${school.address }&nbsp;&nbsp;&nbsp;&nbsp;</span>

										  </div>
									  </div>
								  </div>
							  </div>
						  </div>
					  </div>

				  </li>

			  </c:forEach>

			  <li style="text-align:center;width:100%;">
				  <!-- Indicates a successful or positive action -->
				  <a href="${pageContext.request.contextPath}/myrecruitment/joblist?type=校招"><button type="button" class="btn btn-success" >查看更多</button></a>
			  </li>

		  </ul>

		  <style>
				.publiTime{
					color:#999999;
					font-size:13px;
				}
				.money{
					color:#FA6041;
					font-size:17px;
					float:right;
				}
				.secondline{
					margin-top:10px;
				}
				.required{
					color:#999999;
					font-size:14px;
					padding-top:12px;
				}
				.thirdline{
					margin-top:10px;
				}
				.thirdline button{
					margin-right:20px;
				}
				.fourline{
					margin-top:-10px;
				}
				#ulhotjob li{
					margin-top:15px;
				}
				#ulhotjob li{
       			width:409px;
	       		}
	       		#ullongjob li{
					margin-top:15px;
				}
				#ullongjob li{
       			width:409px;
	       		}
	       		#ulcompany li{
					margin-top:15px;
				}
				#ulcompany li{
       			width:409px;
	       		}
	       		.myCard{
	       			
	       			background-color:white;
	       		} 	
	       		.mybutton{
	       			margin-top:10px;
	       			margin-bottom:20px;
	       			text-align:center;
	       			width:100%;
	       			margin-left:30%;
	       		}
		</style>
     
     
       <ul id="ulcompany"> 
       <c:forEach items="${companyLists }" var="company">
	       	 <li>	
	       	 	<!-- 卡片 -->
					<div class="container">
						<div class="row" >
							<div class="col-md-4 col-sm-6 myCard">
								<div class="serviceBox">
									<!-- <div class="service-icon">
										<i class="fa fa-mobile"></i>
									</div> -->
									<div class="service-Content">
										<div style="text-align: center;">
										<img src="http://localhost:8080/pic/${company.logo }" style="width:50px;height:50px;border-radius: 10px;">
										</div>
										<div class="description companyName" style="color:#00B38A;font-size:18px;text-align: center;">
											<a href="${pageContext.request.contextPath}/company/companyDetail?id=${company.id }" target="_blank" style="font-size:16px;">${company.companyname }</a>
										</div>
										<div class="companyMessage">
											<span class="required">${company.industry } / ${company.development } &nbsp;&nbsp;&nbsp;&nbsp;</span>
										</div>
										<div class="description companyBase">
											${company.jianjie } 
										</div>
										
										<div class="description companyBase">
											${company.product } 
										</div>
										<div style="border:1px dashed #E0E0E0;margin-top:10px;"></div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				
	       	 </li> 
       	 </c:forEach>
       
       
       	 
    	  <style>
			.companyName{
				
				
				
			}
			
			.companyBase{
				margin-top:10px;
				text-align: center;
			}
			.companyMessage{
				margin-top:10px;
				text-align: center;
			}
		</style>
									
       	 
       	 <li style="text-align:center;width:100%;">	
       	 	<!-- Indicates a successful or positive action -->
			<a href="${pageContext.request.contextPath}/myrecruitment/joblist?xiaozheng=all"><button type="button" class="btn btn-success" >查看更多</button></a>
       	 
       	 </li>
       	 
       </ul>







      </div>
     </div> 
     <script type="text/javascript">
    $(function() {
        loadData();

        function loadData() {
            $(".listlinks ul").each(function() {
                $(this).hide();
            })
            if ($(".listchooseon").attr("id") == "hotjob") {
                $("#ulhotjob").show();
            } else if ($(".listchooseon").attr("id") == "longjob") {
                $("#ullongjob").show();
            } else {

                var chooseId = $(".listchooseon").attr("id");
                chooseId = "#ul" + chooseId;
                $(chooseId).show();

            }
        }

        $(".listnav ul li a").hover(function() {
            $(this).parents("ul").find("a").removeClass("listchooseon");
            $(this).addClass("listchooseon");
            $(".listlinks ul").each(function() {
                $(this).hide();
            })
            if ($(this).attr("id") == "hotjob") {
                $("#ulhotjob").show();
            } else if ($(this).attr("id") == "longjob") {
                $("#ullongjob").show();
            } else {

                var chooseId = $(".listchooseon").attr("id");
                chooseId = "#ul" + chooseId;
                $(chooseId).show();
            }

        });

        $(".listmorelinks").click(function() {
            if ($(".listchooseon").attr("id") == "hotjob") {
                window.location.href = "allJob?o=" + 2;
            } else if ($(".listchooseon").attr("id") == "longjob") {
                window.location.href = "allJob?o=" + 1;
            } else {

                var chooseId = $(".listchooseon").attr("id");
                if (chooseId.indexOf("first") != -1) {
                    chooseId = chooseId.substr(5, chooseId.length - 5);
                    window.location.href = "allJob?p=" + "1^" + chooseId;
                } else if (chooseId.indexOf("Third") != -1) {
                    chooseId = chooseId.substr(5, chooseId.length - 5);
                    window.location.href = "allJob?p=" + "3^" + chooseId;
                }

            }
        });

        

        
    });
</script> 
    </div> 
   </div> 
   <!--module:jobstab end--> 
   
   
   
  
  </div> 
	
  <!-- 静态包含 -->
  <%@include file="../common/footer.jsp"%>
  

 </body>
</html>