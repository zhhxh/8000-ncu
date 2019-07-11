<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath()+"/static/basePage/";
%>
<html>
<head> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
  <title>我的简历</title> 
  <!-- 可能会重复引入，引入了index的样式 start -->
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/frontmodule.css" /> 
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/basePage/css/5_themes_default_style.css?v=0.0.0.9" front="css" /> 
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
  
 <!-- 可能会重复引入，引入了index的样式 end -->
  

  <!--引用静态文件:requirejs--> 
  <script type="text/javascript" src="<%=path %>js/require.js"></script> 
  <!--引用静态文件:skin_default--> 
  <link href="<%=path %>css/common.css" rel="stylesheet" type="text/css" />
  <link href="<%=path %>css/templateform.css" rel="stylesheet" type="text/css" />
  <link href="<%=path %>css/controls.css" rel="stylesheet" type="text/css" />
  <link href="<%=path %>css/default.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="<%=path %>js/base_new.js"></script>
  <script type="text/javascript" src="<%=path %>js/widgetnew.js?v=3"></script>
  <script type="text/javascript" src="<%=path %>js/common.js"></script>
  <script type="text/javascript" src="<%=path %>js/bsdialog.js"></script>
  <script type="text/javascript" src="<%=path %>js/common.js"></script>
  <script type="text/javascript" src="<%=path %>js/controls.js"></script>
  <script type="text/javascript" src="<%=path %>js/underscore.js"></script>
  <script type="text/javascript" src="<%=path %>js/school-select-v2.js?v=6"></script>
  <link href="<%=path %>css/school-select-v2.css" rel="stylesheet" type="text/css" /> 
  <!--引用静态文件:skin_new_css--> 
  <link href="<%=path %>css/main.css" rel="stylesheet" type="text/css" /> 
  <!--引用静态文件:new_dialog_js--> 
  <script type="text/javascript" src="<%=path %>js/dialog_js.js"></script> 
  <!--产品头部CSS和脚本--> 
  <script src="<%=path %>js/WdatePicker.js"></script> 
  
  <!--引用静态文件:front_css--> 
  <link href="<%=path %>css/front.css" rel="stylesheet" type="text/css" />  
 
  <script type="text/javascript" id="user-info-header">
        $(document).ready(function () {
            var isApplyDetail = "False".toLowerCase() == 'true' ? true : false;
            //先获取用户的基本信息，这里的ajax是同步等待
            if (!isApplyDetail) {
                var userInfo = window.userInfo;
                var detailView = $(".dl_rightit .isApplyDetail");
                var loginView = $(".dl_rightit .isLogin");
                var unLoginView = $(".dl_rightit .unLogin");
                detailView.show();
                //头部对外公开的口，可以修改用户名
                window.loginHeaderView = {
                    userNameText: function (text) {
                        var shortText = text && text.length > 20 ? text.substring(0, 20) : text;
                        loginView.find('.userShortName').text(shortText);
                        loginView.find('#topUserEmail').attr('title', text);
                    }
                };
                if (userInfo.isLogin) {
                    loginView.show();
                    loginView.find('.userShortName').text(userInfo.shortName);
                    loginView.find('#topUserEmail').attr('title', userInfo.name);
                }
                else {
                    unLoginView.show();
                }
            }
        })

        var UserPrompt = function (options) {
            this.paramMap = {
                targetSelector: 'targetSelector'
                , promptText: 'promptText'
            }
            this.floater = {
                tag: options[this.paramMap.targetSelector]
                , position: {}
                , size: {}
            };
            this.promptText = '您尚未设置密码，请点这里修改吧！';//options[this.paramMap.promptText] || '';
            this.ui = {
                close: ".user-prompt-closeBtn"
            };
            this.initialize();
        };
        UserPrompt.prototype = {
            initialize: function () {
                var self = this;
                if ($(self.floater.tag).length < 1) return;

                self.getFloater();
                self.makeView();
                self.attachCss()
                self.aliveUi();
                self.bindEvents();
            }
            , render: function () {
                var self = this;
                self.$el.appendTo($('body'));
            }
            , show: function () {
                var self = this;
                if ($(self.floater.tag).length < 1) return;
                //控制所有子页面的show，如果用户第一次登陆才可以show
                //这里没有在子页面去判断是否show是因为单价太高，一共有3个子页面，不好维护
                if (window.userInfo.firstLogin) self.render();
            }
            , hide: function () {
                var self = this;
                $el.remove();
            }
            , getFloater: function () {
                var self = this;
                self.floater.tag = $(self.floater.tag) || $('body');
                self.floater.position = self.floater.tag.position();
                self.floater.size = {
                    'height': self.floater.tag.height()
                    , 'width': self.floater.tag.width()
                }
            }
            , makeView: function () {
                var self = this;
                self.$el = $("<div class='user-prompt-user-firstIn'>" +
                                 "<div class='user-prompt-action-container'>" +
                                    "<span class='user-prompt-closeBtn' title='close'></span>" +
                                 "</div>" +
                                 "<div class='user-prompt-content'>" + self.promptText + "</div>" +
                             "</div>");
            }
            , attachCss: function () {
                var self = this;
                //这里的0.9和4是写死的数，为了调整位置
                self.$el.css({
                    'top': (self.floater.position.top + self.floater.size.height) + 'px' // + 15
                    , 'left': (self.floater.position.left - self.floater.size.width / 4) + 'px'//+ self.floater.size.width / 2
                });
            }
            , aliveUi: function () {
                var self = this;
                var aliveUi = {};
                $.each(self.ui, function (key, value) {
                    aliveUi[key] = self.$el.find(value) || null;
                });
                self.ui = aliveUi;
            }
            , bindEvents: function () {
                var self = this;
                self.ui.close.bind('click', function () {
                    self.$el.remove()
                })
            }
        };
    </script> 
 </head> 
 <body> 
  <div class="bs_deliver"> 
   <div class="dl_header_border"> 
    <div class="dl_header clearfix"> 
     <div class="dl_logo"> 
      <img id="logoImg" class="header-logo-img" src="images/104003_medias_20141215_20141215logo.jpg?v=635542641034400000" style="width: 300px;height:80px;display: none;" /> 
     </div> 
     <div class="dl_rightit"> 
      <div class="isApplyDetail" style="display:none"> 
       <div class="isLogin" style="display:none"> 
        <span id="topUserEmail" class="pad3" title=""><span class="userShortName"></span>，欢迎您！</span> 
        <span class="pad3"><a href="index.html">招聘首页</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="isUserCenter" style="display:none"> <span class="pad3"><a href="member_apply.html">个人中心</a></span> <em class="dl_header_line dl_padtb05">|</em> </span> 
        <span class="pad3"><a href="/Portal/Account/Logout">退出</a></span> 
       </div> 
       <div class="unLogin" style="display:none"> 
        <span class="pad3"><a href="index.html">招聘首页</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="pad3"><a href="/Portal/Account/Login">登录</a></span> 
        <em class="dl_header_line dl_padtb05">|</em> 
        <span class="pad3"><a href="/Portal/Account/Register">注册</a></span> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div> 
   <div class="dl_content dl_gray_bg"> 
    <!----> 
    <!--申请职位 s--> 
    <!--申请职位 e--> 
    <!--我的简历 s--> 
    <!--简历内容 s--> 
    <script type="text/javascript">

        $(document).ready(function () {

            var promptview = new UserPrompt({
                targetSelector: 'a.accountsettings'
                , promptText: '在账户设置中，可以改用户名和密码啦！'
            });
            promptview.show();
        })
    </script> 
    <div class="dl_bigwrap dl_heightagain clearfix dl_grey_bc"> 
     <div class="leftmenu"> 
      <div class="dl_greyline_bg"> 
       <span class="dl_menutit">个人中心</span> 
      </div> 
      <ul class="dl_menulist clearfix"> 
       <ul class="dl_menulist clearfix"> 
        <li> <a href="member_apply.html" class="apply">我的申请</a> </li> 
        <li class="selected profilechoose"> <span class="dl_menuchose">我的简历</span> </li> 
        <li> <a href="member_collect.html" class="shoucang">已收藏职位</a> </li> 
        <!--<li 
         >
        
       <a href="/Portal/Account/EditPwd" class="changepwd">修改密码</a>
        
    </li--> 
        <li> <a href="member_info.html" class="accountSettings">账户设置</a> </li> 
       </ul> 
      </ul> 
     </div> 
     <div class="rightcontent dl_height1 dl_new_error_wrap"> 
      <h3 class="dl_bigtit"><span class="dl_postit">我的简历</span></h3> 
      <div class="dl_importprofile"> 
       <a class="import dl_import" href="javascript:void(0)">导入简历</a> 
       <a id="previewBtn" class="look" target="preview" href="/Portal/Resume/PreviewResume?applyform=e725c9e8-01eb-42ca-8321-eee7569f5301" style="">预览简历</a> 
       <span id="previewBtnDisable" class="look" style="color:#666;display:none;">预览简历</span> 
      </div> 
      <style type="text/css">
    *html .dl_myleftform .form_container {
        width: 490px;
        overflow: hidden;
    }

        *html .dl_myleftform .form_container .form_part .columntwo ul {
            width: 360px;
            overflow: hidden;
        }

        *html .dl_myleftform .form_container ul li {
            width: 360px;
            overflow: hidden;
        }
            /* .dl_myleftform .form_container li label{width: 100px}*/
            *html .dl_myleftform .form_container ul li span.preview_text {
                width: 220px;
                overflow: hidden;
            }

    .form_container li textarea {
        border: 1px solid #c1d5df;
        float: left;
        height: 100px;
        margin-right: 5px;
        padding: 3px;
        width: 300px;
    }
</style> 
      <div class="dl_basicinfo"> 
       <div class="dl_greyline_bg">
        <span class="dl_menutit ">个人信息</span>
       </div> 
       <div class="dl_basicborder mainContainer "> 
        <form method="post" id="cd7c7714-b39a-43a0-9c7e-f7382f04f5cd" name="cd7c7714-b39a-43a0-9c7e-f7382f04f5cd" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
         <div class="clearfix"> 
          <div id="resumeitems" name="singleedit" class="dl_myleftform" style="display:none;;"> 
           <input type="hidden" name="oId" id="Hidden1" value="a4fc2e74-0cd1-4163-a4a1-57112d95fcfc" /> 
           <input type="hidden" name="jId" id="Hidden4" value="-1" /> 
           <input type="hidden" name="mId" id="Hidden5" value="0" /> 
           <input name="_objectDataID" type="hidden" value="NDc0NjFhMzktMTg2My00YzM3LTlmOTgtY2ZkN2UyOTFlNmQ0JGE0ZmMyZTc0LTBjZDEtNDE2My1hNGExLTU3MTEyZDk1ZmNmYw==" />
           <input name="_metaObjID" type="hidden" value="NDc0NjFhMzktMTg2My00YzM3LTlmOTgtY2ZkN2UyOTFlNmQ0" />
           <input name="_viewName" type="hidden" value="UGVyc29uUHJvZmlsZVZpZXc=" />
           <input name="_version" type="hidden" value="MjAxMzA3MDQwNDQ4NDUzNzIx" />
           <input name="_formIndex" type="hidden" value="1" />
           <div class="form_container" id="RecruitmentPortal.PersonProfile"> 
            <h2 class="form_title"> <strong>个人信息</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label class="current label_required">姓名：</label> <input class="{required:true,messages:&quot;请填写姓名&quot;} mul_input" name="RecruitmentPortalPersonProfile_Name" id="4c037148-140a-4c2b-b87a-b97609215d7011" value="zhange" /> <span class="desc"></span> </li> 
               <li><label class="current label_required">邮箱：</label> <input class="{required:true,messages:&quot;请填写邮箱&quot;} mul_input" name="RecruitmentPortalPersonProfile_email" id="67a5c587-4f90-4ae7-819f-eb3dba9ea39911" value="416148489@qq.com" /> <span class="desc"></span> </li> 
               <li><label class="current label_required">手机号：</label> <input class="{required:true,messages:'请填写手机号'} mul_input " name="RecruitmentPortalPersonProfile_Mobile" id="acb9b67f-9643-41fb-a7fe-5ff8d742ccdf11" value="13851435593" /> </li> 
               <li><label>出生日期：</label> <input class="mul_input Wdate" name="RecruitmentPortalPersonProfile_Birthday" id="436ab7a4-67a1-4819-a238-d5d34eb0717611" value="2003/12/15" /> <span class="desc"></span> </li> 
               <li><label>性别：</label> 
                <div class="radio_list"> 
                 <input type="radio" name="RecruitmentPortalPersonProfile_gender" value="0" checked="checked" /> 
                 <label class="radio_label">男</label> 
                 <input type="radio" name="RecruitmentPortalPersonProfile_gender" value="1" /> 
                 <label class="radio_label">女</label> 
                </div> </li> 
               <li><label>现居住地：</label> <input type="text" readonly="true" displayname="现居住地" constname="Areas" value="" class="Ajson ConstDictSingleSelect" id="RecruitmentPortalPersonProfile_ResidenceState_Id" /> <input type="hidden" name="RecruitmentPortalPersonProfile_ResidenceState" id="RecruitmentPortalPersonProfile_ResidenceState" class=" ResidenceState" /> <span class="desc">例：浙江省杭州市</span> </li> 
               <li><label>户口所在地：</label> <input type="text" readonly="true" displayname="户口所在地" constname="Areas" value="" class="Ajson ConstDictSingleSelect" id="RecruitmentPortalPersonProfile_RPR_Id" /> <input type="hidden" value="" name="RecruitmentPortalPersonProfile_RPR" id="RecruitmentPortalPersonProfile_RPR" class="ResidenceState" /> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columntwo"> 
              <ul> 
               <li><label>最高学历：</label> <select name="RecruitmentPortalPersonProfile_EducationLevel" id="RecruitmentPortalPersonProfile_EducationLevel" class="mul_select"> <option value="">请选择</option> <option value="3">高中及以下</option> <option value="4">中技（中专/技校/职高）</option> <option value="5">大专</option> <option value="1">本科</option> <option value="2">硕士研究生</option> <option value="6">MBA</option> <option value="7">博士研究生</option> </select> </li> 
               <li><label>学习形式：</label> <select name="RecruitmentPortalPersonProfile_EducationStudyMode" id="RecruitmentPortalPersonProfile_EducationStudyMode" class="mul_select"> <option value="">请选择</option> <option value="1">全国普通高等院校全日制</option> <option value="2">成人高等教育</option> <option value="3">专升本 </option> <option value="4">自学考试 </option> <option value="5">其它</option> </select> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>民族：</label> <select name="RecruitmentPortalPersonProfile_Nation" id="RecruitmentPortalPersonProfile_Nation" class="mul_select"> <option value="">请选择</option> <option value="1">汉族</option> <option value="2">回族</option> <option value="3">畲族</option> <option value="4">塔塔尔族</option> <option value="5">阿昌族</option> <option value="6">哈萨克族</option> <option value="7">土家族</option> <option value="8">景颇族</option> <option value="9">哈尼族</option> <option value="10">土族</option> <option value="11">白族</option> <option value="12">维吾尔族</option> <option value="13">保安族</option> <option value="14">赫哲族</option> <option value="15">乌孜别克族</option> <option value="16">基诺族</option> <option value="17">布依族</option> <option value="18">拉祜族</option> <option value="19">锡伯族</option> <option value="20">黎族</option> <option value="21">东乡族</option> <option value="22">蒙古族</option> <option value="23">仫佬族</option> <option value="24">达斡尔族</option> <option value="25">藏族</option> <option value="26">毛南族</option> <option value="27">裕固族</option> <option value="28">俄罗斯族</option> <option value="29">德昂族</option> <option value="30">僳僳族</option> <option value="31">瑶族</option> <option value="32">朝鲜族</option> <option value="33">布朗族</option> <option value="34">满族</option> <option value="35">彝族</option> <option value="36">门巴族</option> <option value="37">侗族</option> <option value="38">苗族</option> <option value="39">佤族</option> <option value="40">羌族</option> <option value="41">独龙族</option> <option value="42">怒族</option> <option value="43">珞巴族</option> <option value="44">普米族</option> <option value="45">傣族</option> <option value="46">纳西族</option> <option value="47">高山族</option> <option value="48">壮族</option> <option value="49">额伦春族</option> <option value="50">塔吉克族</option> <option value="51">京族</option> <option value="52">仡佬族</option> <option value="53">鄂温克族</option> <option value="54">撒拉族</option> <option value="55">柯尔克孜族</option> <option value="56">水族</option> <option value="57">其它</option> </select> </li> 
               <li><label>证件照：</label> <input type="hidden" name="RecruitmentPortalPersonProfile_IDPhoto" id="c71310e0-0bef-4173-9826-21a572d4943d11" value="" /> <span><a class="uploadfile" id="c71310e0-0bef-4173-9826-21a572d4943d11_btn">上传</a></span> <span class="desc uploaddesc">推荐1寸照片尺寸，70x100象素。支持jpg，jpeg, gif，bmp或png格式，大小不超过512k</span>
                <ul id="c71310e0-0bef-4173-9826-21a572d4943d11_info" class="uploadfilescontainer" style="margin-left:70px;"> 
                </ul> </li> 
               <li><label>自我评价：</label> <textarea class="textarea mul_textarea" name="RecruitmentPortalPersonProfile_evaluation" id="628bbf58-340a-42d3-bb4d-9e892582841211"></textarea> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
          <div name="singleview" class="dl_myleftform" style=""> 
           <div class="form_container" id="RecruitmentPortal.PersonProfile"> 
            <h2 class="form_title"> <strong>个人信息</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>姓名：</label> <span class="preview_text">zhange</span> </li> 
               <li><label>邮箱：</label> <span class="preview_text">416148489@qq.com</span> </li> 
               <li><label>手机号：</label> <span class="preview_text">13851435593</span> </li> 
               <li><label>出生日期：</label> <span class="preview_text"> 2003年12月15日 </span> </li> 
               <li><label>性别：</label> <span name="RecruitmentPortalPersonProfile_gender_span" class="preview_text"> 男</span> </li> 
               <li><label>现居住地：</label> <span class="preview_text"></span> </li> 
               <li><label>户口所在地：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columntwo"> 
              <ul> 
               <li><label>最高学历：</label> </li> 
               <li><label>学习形式：</label> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>民族：</label> </li> 
               <li><label>证件照：</label> <a href="about.html"></a> </li> 
               <li><label>自我评价：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
          <div class="dl_myrightfile"> 
           <div style="width: 118px; margin-left: 12px"> 
            <a name="btnSingleSave" href="#this" class="dl_btn_grey3" style="display:none;"> <span>保存</span> </a> 
            <a name="btnSingleCancel" href="#this" class="dl_btn_grey3" style="display:none;float: right;"> <span>取消</span> </a> 
            <a name="btnSingleEdit" href="javascript:void(0)" class="dl_mglft10" style="float: right; padding-bottom: 10px;">编辑</a> 
           </div> 
           <img id="idPhoto" style="width: 120px; height: 140px; padding-top: 10px; display: none;" src="images/upfile.jpg" /> 
           <br /> 
           <a class="blue" id="idPhotoUploadBtn" href="javascript:void(0)" style="display:none;">上传照片</a> 
           <ul id="idPhotoerrinfo" class="warninfo" style="color: #f17f7f; font-size: 12px;"> 
           </ul> 
           <ul id="idPhotowarninfo" class="warninfo" style="display:none;"> 
           </ul> 
          </div> 
         </div> 
        </form> 
        <input type="hidden" class="viewName" value="201307040448453721" /> 
       </div> 
      </div> 
      <style type="text/css">
    *html .dl_myleftform .form_container {
        width: 490px;
        overflow: hidden;
    }

        *html .dl_myleftform .form_container .form_part .columntwo ul {
            width: 360px;
            overflow: hidden;
        }

        *html .dl_myleftform .form_container ul li {
            width: 360px;
            overflow: hidden;
        }
            /* .dl_myleftform .form_container li label{width: 100px}*/
            *html .dl_myleftform .form_container ul li span.preview_text {
                width: 220px;
                overflow: hidden;
            }

    .form_container li textarea {
        border: 1px solid #c1d5df;
        float: left;
        height: 100px;
        margin-right: 5px;
        padding: 3px;
        width: 300px;
    }
</style> 
      <div class="dl_basicinfo"> 
       <div class="dl_greyline_bg">
        <span class="dl_menutit ">求职意向</span>
       </div> 
       <div class="dl_basicborder mainContainer "> 
        <form method="post" id="fdfa1ef1-0a89-4bf9-8500-674c5e233e3f" name="fdfa1ef1-0a89-4bf9-8500-674c5e233e3f" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
         <div class="clearfix"> 
          <div id="resumeitems" name="singleedit" class="dl_myleftform" style="display:none;;"> 
           <input type="hidden" name="oId" id="Hidden1" value="f09d29a6-3c52-4237-bcd5-ecaddf83c9de" /> 
           <input type="hidden" name="jId" id="Hidden4" value="-1" /> 
           <input type="hidden" name="mId" id="Hidden5" value="1" /> 
           <input name="_objectDataID" type="hidden" value="OGJjNjNiM2UtZDYzZC00MTZiLThjMWYtOTkwNzIyODJlZTNmJGYwOWQyOWE2LTNjNTItNDIzNy1iY2Q1LWVjYWRkZjgzYzlkZQ==" />
           <input name="_metaObjID" type="hidden" value="OGJjNjNiM2UtZDYzZC00MTZiLThjMWYtOTkwNzIyODJlZTNm" />
           <input name="_viewName" type="hidden" value="T2JqZWN0aXZlVmlldw==" />
           <input name="_version" type="hidden" value="MjAxMzA3MDQwNDQ4NDU2MDkx" />
           <input name="_formIndex" type="hidden" value="11" />
           <div class="form_container" id="RecruitmentPortal.Objective"> 
            <h2 class="form_title"> <strong>求职意向</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>现从事职业：</label> <input type="text" readonly="true" displayname="现从事职业" constname="JobCategory" value="" class="Ajson ConstDictSingleSelect" id="RecruitmentPortalObjective_CurrJobCategory_Id" /> <input type="hidden" value="" name="RecruitmentPortalObjective_CurrJobCategory" id="RecruitmentPortalObjective_CurrJobCategory" class="ResidenceState" /> </li> 
               <li><label>求职状态：</label> <select name="RecruitmentPortalObjective_WorkState" id="RecruitmentPortalObjective_WorkState" class="mul_select"> <option value="">请选择</option> <option value="1">正在主动找工作</option> <option value="2">可以考虑更好的工作机会</option> <option value="3">目前不想找工作</option> </select> </li> 
               <li><label>期望从事职业：</label> <input type="text" readonly="true" displayname="期望从事职业" constname="JobCategory" value="美术&middot;设计&middot;创意类" class="Ajson ConstDictSingleSelect" id="RecruitmentPortalObjective_ExpectJobCategory_Id" /> <input type="hidden" value="158" name="RecruitmentPortalObjective_ExpectJobCategory" id="RecruitmentPortalObjective_ExpectJobCategory" class="ResidenceState" /> </li> 
               <li><label>现月薪(税前)：</label> <select name="RecruitmentPortalObjective_CurrSalary" id="RecruitmentPortalObjective_CurrSalary" class="mul_select"> <option value="">请选择</option> <option value="1">1000以下</option> <option value="2">1000～2000</option> <option value="3">2001～4000</option> <option value="4">4001～6000</option> <option value="5">6001～8000</option> <option value="6">8001～10000</option> <option value="7">10001～15000</option> <option value="8">15001～25000</option> <option value="9">25000以上</option> <option value="10">面议</option> </select> </li> 
               <li><label>期望月薪(税前)：</label> <select name="RecruitmentPortalObjective_ExpectSalary" id="RecruitmentPortalObjective_ExpectSalary" class="mul_select"> <option value="">请选择</option> <option value="1">1000以下</option> <option value="2">1000～2000</option> <option value="3">2001～4000</option> <option value="4">4001～6000</option> <option value="5">6001～8000</option> <option value="6">8001～10000</option> <option value="7">10001～15000</option> <option value="8">15001～25000</option> <option value="9">25000以上</option> <option value="10">面议</option> </select> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
          <div name="singleview" class="dl_myleftform" style=""> 
           <div class="form_container" id="RecruitmentPortal.Objective"> 
            <h2 class="form_title"> <strong>求职意向</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>现从事职业：</label> <span class="preview_text"></span> </li> 
               <li><label>求职状态：</label> </li> 
               <li><label>期望从事职业：</label> <span class="preview_text">美术&middot;设计&middot;创意类</span> </li> 
               <li><label>现月薪(税前)：</label> </li> 
               <li><label>期望月薪(税前)：</label> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
          <div class="dl_myrightfile"> 
           <div style="width: 118px; margin-left: 12px"> 
            <a name="btnSingleSave" href="#this" class="dl_btn_grey3" style="display:none;"> <span>保存</span> </a> 
            <a name="btnSingleCancel" href="#this" class="dl_btn_grey3" style="display:none;float: right;"> <span>取消</span> </a> 
            <a name="btnSingleEdit" href="javascript:void(0)" class="dl_mglft10" style="float: right; padding-bottom: 10px;">编辑</a> 
           </div> 
          </div> 
         </div> 
        </form> 
        <input type="hidden" class="viewName" value="201307040448456091" /> 
       </div> 
      </div> 
      <div class="dl_educationwrap mainContainer" style="padding: 0px 20px;"> 
       <div class="dl_greyline_bg"> 
        <span class="dl_menutit">教育背景</span> 
       </div> 
       <div class="dl_basicborder" style="display: none;"> 
        <form method="post" id="emptyFrom_7" name="emptyFrom_7" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem" style="display: none;"> 
         <div class="eduhistory_drmmbnew pos_realitive"> 
          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 660px;">
           <a name="delItem" href="javascript:void(0)">删除</a> 
           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a>
          </div> 
          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
           <input type="hidden" name="oId" id="oId" value="" /> 
           <input type="hidden" name="jId" id="jId" value="-1" /> 
           <input type="hidden" name="mId" id="mId" value="7" /> 
           <div class="form_container" id="RecruitmentPortal.Education"> 
            <h2 class="form_title"> <strong>教育背景</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>学校名称：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li> <label> 时间：</label> <span class="preview_text start_date"> </span> <span class="preview_text end_date"> </span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>学历：</label> </li> 
               <li><label>学位：</label> </li> 
               <li><label>专业名称：</label> <span class="preview_text"></span> </li> 
               <li><label>专业描述：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="dl_borderdashed"></div> 
        </form> 
       </div> 
       <div class="dl_basicborder"> 
        <form method="post" id="10655b54-ca89-4bd0-a9a9-b65600e0174a" name="10655b54-ca89-4bd0-a9a9-b65600e0174a" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
         <div class="eduhistory_drmmbnew pos_realitive"> 
          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 150px;"> 
           <a name="delItem" href="javascript:void(0)">删除</a> 
           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a> 
          </div> 
          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
           <input type="hidden" name="oId" id="Hidden7" value="39cc3186-545a-4cc9-8b9e-74c80a398ad8" /> 
           <input type="hidden" name="jId" id="Hidden8" value="-1" /> 
           <input type="hidden" name="mId" id="Hidden9" value="7" /> 
           <div class="form_container" id="RecruitmentPortal.Education"> 
            <h2 class="form_title"> <strong>教育背景</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>学校名称：</label> <span class="preview_text">中国人民大学</span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li> <label> 时间：</label> <span class="preview_text start_date"> 1973年07月至</span> <span class="preview_text end_date"> 今 </span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>学历：</label> <span class="preview_text">硕士研究生</span> </li> 
               <li><label>学位：</label> <span class="preview_text">MBA</span> </li> 
               <li><label>专业名称：</label> <span class="preview_text">qqqq</span> </li> 
               <li><label>专业描述：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="dl_borderdashed"></div> 
        </form> 
       </div> 
       <div class="dl_basicborder"> 
        <form method="post" id="fa8a475a-1e60-4402-bc67-15bd75bcde7f" name="fa8a475a-1e60-4402-bc67-15bd75bcde7f" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
         <div class="eduhistory_drmmbnew pos_realitive"> 
          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 150px;"> 
           <a name="delItem" href="javascript:void(0)">删除</a> 
           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a> 
          </div> 
          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
           <input type="hidden" name="oId" id="Hidden7" value="fa3b9143-da17-4a66-9c22-69b6702cc1d0" /> 
           <input type="hidden" name="jId" id="Hidden8" value="-1" /> 
           <input type="hidden" name="mId" id="Hidden9" value="7" /> 
           <div class="form_container" id="RecruitmentPortal.Education"> 
            <h2 class="form_title"> <strong>教育背景</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>学校名称：</label> <span class="preview_text">北京化工大学</span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li> <label> 时间：</label> <span class="preview_text start_date"> 1972年05月至</span> <span class="preview_text end_date"> 今 </span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>学历：</label> <span class="preview_text">硕士研究生</span> </li> 
               <li><label>学位：</label> <span class="preview_text">学士</span> </li> 
               <li><label>专业名称：</label> <span class="preview_text">qqq</span> </li> 
               <li><label>专业描述：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="dl_borderdashed"></div> 
        </form> 
       </div> 
       <input type="hidden" class="viewName" value="201307040448456411" /> 
       <div class="dl_mgtop10"> 
        <a name="addItem" href="#this" class="dl_add_ico blue">继续添加</a> 
       </div> 
      </div> 
      <div class="dl_educationwrap mainContainer" style="padding: 0px 20px;"> 
       <div class="dl_greyline_bg"> 
        <span class="dl_menutit">工作经验</span> 
       </div> 
       <div class="dl_basicborder" style="display: none;"> 
        <form method="post" id="emptyFrom_6" name="emptyFrom_6" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem" style="display: none;"> 
         <div class="eduhistory_drmmbnew pos_realitive"> 
          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 660px;">
           <a name="delItem" href="javascript:void(0)">删除</a> 
           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a>
          </div> 
          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
           <input type="hidden" name="oId" id="oId" value="" /> 
           <input type="hidden" name="jId" id="jId" value="-1" /> 
           <input type="hidden" name="mId" id="mId" value="6" /> 
           <div class="form_container" id="RecruitmentPortal.Experience"> 
            <h2 class="form_title"> <strong>工作经验</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>单位名称：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li> <label> 工作时间：</label> <span class="preview_text start_date"> </span> <span class="preview_text end_date"> </span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>职位名称：</label> <span class="preview_text"></span> </li> 
               <li><label>工作地点：</label> <span class="preview_text"></span> </li> 
               <li><label>工作职责：</label> <span class="preview_text"></span> </li> 
               <li><label>部门：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="dl_borderdashed"></div> 
        </form> 
       </div> 
       <div class="dl_basicborder"> 
        <form method="post" id="1015a315-3343-4c51-9d11-3c90e10bc8b8" name="1015a315-3343-4c51-9d11-3c90e10bc8b8" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem"> 
         <div class="eduhistory_drmmbnew pos_realitive"> 
          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 150px;"> 
           <a name="delItem" href="javascript:void(0)">删除</a> 
           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a> 
          </div> 
          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
           <input type="hidden" name="oId" id="Hidden7" value="30d193ad-9915-4786-8d84-8191f9bc6c89" /> 
           <input type="hidden" name="jId" id="Hidden8" value="-1" /> 
           <input type="hidden" name="mId" id="Hidden9" value="6" /> 
           <div class="form_container" id="RecruitmentPortal.Experience"> 
            <h2 class="form_title"> <strong>工作经验</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>单位名称：</label> <span class="preview_text">qqq</span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li> <label> 工作时间：</label> <span class="preview_text start_date"> 1972年03月至</span> <span class="preview_text end_date"> 今 </span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>职位名称：</label> <span class="preview_text">wqwq</span> </li> 
               <li><label>工作地点：</label> <span class="preview_text"></span> </li> 
               <li><label>工作职责：</label> <span class="preview_text">wqqqqqq</span> </li> 
               <li><label>部门：</label> <span class="preview_text"></span> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="dl_borderdashed"></div> 
        </form> 
       </div> 
       <input type="hidden" class="viewName" value="201307040448456801" /> 
       <div class="dl_mgtop10"> 
        <a name="addItem" href="#this" class="dl_add_ico blue">继续添加</a> 
       </div> 
      </div> 
      <div class="dl_educationwrap mainContainer" style="padding: 0px 20px;"> 
       <div class="dl_greyline_bg"> 
        <span class="dl_menutit">语言能力</span> 
       </div> 
       <div class="dl_basicborder" style="display: none;"> 
        <form method="post" id="emptyFrom_4" name="emptyFrom_4" enctype="multipart/form-data" action="/Portal/Resume/ResumeItem" style="display: none;"> 
         <div class="eduhistory_drmmbnew pos_realitive"> 
          <div class="dl_delupd blue deletelink_edrmmb pos_absolute dl_right0" style="width: 660px;">
           <a name="delItem" href="javascript:void(0)">删除</a> 
           <a name="editItem" href="javascript:void(0)" class="dl_mglft10">编辑</a>
          </div> 
          <div id="resumeitems" class="eduinfo rightcontent_edrmmb"> 
           <input type="hidden" name="oId" id="oId" value="" /> 
           <input type="hidden" name="jId" id="jId" value="-1" /> 
           <input type="hidden" name="mId" id="mId" value="4" /> 
           <input name="_metaObjID" type="hidden" value="NTkwNGU4NWQtNTllNi00ZmY0LWI3MmMtNzYyMjZlYzc3ZjBm" />
           <input name="_viewName" type="hidden" value="TGFuZ1ZpZXc=" />
           <input name="_version" type="hidden" value="MjAxMzA3MDQwNDQ4NDU3MTIx" />
           <input name="_formIndex" type="hidden" value="41011" />
           <div class="form_container" id="RecruitmentPortal.Lang"> 
            <h2 class="form_title"> <strong>语言能力</strong> <span class="tab"></span> </h2> 
            <div class="form_part"> 
             <div class="form_part_container columnone"> 
              <ul> 
               <li><label>语言类型：</label> <select name="RecruitmentPortalLang_LanguageType" id="RecruitmentPortalLang_LanguageType" class="dropdownlist mul_select"> <option value="">请选择</option> <option value="0" title="英语">英语</option> <option value="1" title="日语">日语</option> <option value="2" title="韩语">韩语</option> <option value="3" title="法语">法语</option> <option value="4" title="德语">德语</option> <option value="5" title="西班牙语">西班牙语</option> <option value="6" title="意大利语">意大利语</option> <option value="7" title="阿拉伯语">阿拉伯语</option> <option value="8" title="俄语">俄语</option> <option value="9" title="其他">其他</option> </select> </li> 
               <li><label>掌握程度：</label> <select name="RecruitmentPortalLang_LanguageLevel" id="RecruitmentPortalLang_LanguageLevel" class="dropdownlist mul_select"> <option value="">请选择</option> <option value="1" title="入门">入门</option> <option value="2" title="熟练">熟练</option> <option value="3" title="精通">精通</option> <option value="4" title="母语">母语</option> </select> </li> 
              </ul> 
             </div> 
             <div class="clear"></div> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="dl_borderdashed"></div> 
        </form> 
       </div> 
       <input type="hidden" class="viewName" value="201307040448457121" /> 
       <div class="dl_mgtop10"> 
        <a name="addItem" href="#this" class="dl_add_ico blue">继续添加</a> 
       </div> 
      </div> 
     </div> 
    </div> 
    <!--简历内容 e--> 
   </div> 
   <div class="dl_footer"> 
    <p>&copy;2015&nbsp;北京大生知行科技有限公司51talk&nbsp;&nbsp;京ICP备05051632号 京公网安备110108002767号 &nbsp;&nbsp;帮助热线：4006506886</p> 
   </div> 
  </div>  
  
  <!--引用静态文件:dataInitFunc,HangYe,AreaJson,NewAreaJson--> 
  <script type="text/javascript"> function setAJson(data){ window.Ajson=data; } function setNewAJson(data){ window.NewAjson=data; } function setMJson(data){ window.Mjson=data; } </script> 
  <script type="text/javascript" src="http://const.tms.beisen.com/ConstData.svc/Const/hangye?callback=setMJson"></script>
  <script type="text/javascript" src="http://const.tms.beisen.com/ConstData.svc/Const/Areas?callback=setAJson"></script>
  <script type="text/javascript" src="http://const.tms.beisen.com/Api/Defination/AreaFormat?callback=setNewAJson"></script> 
  <script language="javascript" type="text/javascript">

        function SetCss() {
            var win = window.location.href;
            if (win.indexOf("Apply") != -1) {
                $("#myapply a").addClass("current");
            }
            else if (win.indexOf("ResumeItem") != -1) {
                $("#myresume a").addClass("current");
            }
            else if (win.indexOf("EditPwd") != -1) {
                $("#changepwd a").addClass("current");
            }
        }
        SetCss();

        $(function () {

            setInterval(function () {
                try {
                    DrawImage($("#logoImg"), '350', '80');
                } catch (e) {
                }
            }, 100);
        });

        function DrawImage(ImgD, FitWidth, FitHeight) {
            var image = new Image();

            image.src = $(ImgD).attr("src");

            if (image.width > 0 && image.height > 0) {
                if (image.width / image.height >= FitWidth / FitHeight) {
                    if (image.width > FitWidth) {
                        $(ImgD).css("width", FitWidth);
                        $(ImgD).css("height", (image.height * FitWidth) / image.width);
                    } else {
                        $(ImgD).css("width", image.width);
                        $(ImgD).css("height", image.height);
                    }
                } else {
                    if (image.height > FitHeight) {
                        $(ImgD).css("height", FitHeight);
                        $(ImgD).css("width", (image.width * FitHeight) / image.height);
                    } else {
                        $(ImgD).css("width", image.width);
                        $(ImgD).css("height", image.height);
                    }
                }
                $(ImgD).show();
            }
        }
    </script>  
 </body>
</html>