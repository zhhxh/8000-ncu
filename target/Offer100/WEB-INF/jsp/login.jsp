<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>登陆</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/css/camera.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/bootstrap-responsive.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/matrix-login.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/font-awesome.css"/>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background: #fff;
            font: 12px/150% "Lucida Sans Unicode", "Lucida Grande", sans-serif;
        }

        a {
            color: #09c;
        }

        a:hover {
            color: #000;
            text-decoration: none;
        }

        .f_l {
            float: left;
        }

        .f_r {
            float: right;
        }

        .header {
            background: #f5f5f5;
            height: 60px;
            border-bottom: 1px solid #e5e5e5;
            width: 100%;
        }

        .header_box {
            width: 960px;
            margin: 0 auto;
            overflow: hidden;
            line-height: 60px;
        }

        .header_box .logo {
            font-size: 24px;
            font-weight: 400;
            color: #333;
            height: 30px;
            line-height: 30px;
            float: left;
            border-right: 2px solid #c9c9c9;
            margin-top: 15px;
            padding-right: 20px;
        }

        .header_box .sub_tit {
            font-size: 22px;
            font-weight: 400;
            font-family: '宋体';
            color: #666;
            height: 30px;
            line-height: 30px;
            overflow: hidden;
            margin-top: 15px;
            float: left;
            padding-left: 20px;
        }

        .header_box .f_r {
            font-size: 12px;
            margin: 5px -10px 0 0;
        }

        .header_box .f_r a {
            margin-right: 10px;
        }

        .wrapper {
            width: 960px;
            margin: 2% auto 0;
            padding-bottom: 100px;
        }

        .wrapper h3 {
            font-size: 14px;
            font-weight: 700;
            color: #333;
            height: 30px;
            line-height: 30px;
            font-family: "Microsoft yahei", Arial;
            margin-bottom: 5px;
        }

        .code_box {
            width: 960px;
            overflow: hidden;
            border-bottom: 1px solid #e1e1e1;
            padding-bottom: 20px;
            margin-bottom: 40px;
        }

        .code_box pre {
            width: 340px;
            background: #f5f5f5;
            padding: 10px 20px;
            font-family: "Consolas", "Courier New", Courier, mono;
            font-size: 13px;
            line-height: 18px;
            border: 1px solid #eee;
            float: left;
            color: #333;
        }

        .code_box .run {
            border: 1px solid;
            border-radius: 2px;
            cursor: pointer;
            font-family: "Microsoft yahei", Arial;
            font-size: 12px;
            width: 50px;
            height: 22px;
            line-height: 22px;
            display: block;
            text-align: center;
            border-color: #c3c3c3;
            background: #ececec;
            color: #333;
            background: -webkit-gradient(linear, center bottom, center top, from(#ececec), to(#f4f4f4));
            background: -moz-linear-gradient(90deg, #ececec, #f4f4f4);
            text-decoration: none;
        }

        .con_right {
            width: 558px;
            float: left;
            padding-left: 20px;
        }

        .con_right p {
            font-size: 13px;
            color: #515151;
            margin-bottom: 10px;
            line-height: 24px;
        }

        .param_tb {
            width: 960px;
            border-collapse: collapse;
            border-bottom: 1px solid #e1e1e1;
            border-left: 1px solid #e1e1e1;
            font-size: 13px;
            color: #333;
        }

        .param_tb tr td {
            line-height: 20px;
            padding: 5px 0;
            text-align: center;
            border-right: 1px solid #e1e1e1;
            border-bottom: 1px solid #e1e1e1;
        }

        .param_tb tr .t_l {
            text-align: left;
            padding: 5px 10px;
        }

        .param_tb .even td {
            background: #f5f5f5;
        }

        .param_tb th {
            background: #f5f5f5;
            line-height: 40px;
            border-right: 1px solid #e1e1e1;
            font-family: "Microsoft yahei", Arial;
            font-size: 14px;
            font-weight: 700;
            border-top: 2px solid #4D90F0;
        }

        .param_tb p {
            line-height: 20px;
            padding: 5px 0;
        }

        .html_code {
            margin-top: 50px;
        }

        .html_code p {
            font-size: 13px;
            margin-bottom: 10px;
        }

        .html_code pre {
            width: 918px;
            background: #f5f5f5;
            padding: 10px 20px;
            font-family: "Consolas", "Courier New", Courier, mono;
            font-size: 13px;
            line-height: 18px;
            border: 1px solid #eee;
            color: #333;
            margin-bottom: 20px;
        }

        #imgBox {
            border: 1px solid #d3d3d3;
            padding: 5px;
            background: #fff;
            width: 600px;
            height: 375px;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/login/js/jquery-1.5.1.min.js"></script>
    <!-- 软键盘控件start -->
    <link href="${pageContext.request.contextPath}/static/login/keypad/css/framework/form.css" rel="stylesheet"
          type="text/css"/>
    <!-- 软键盘控件end -->
    <style type="text/css">
        /*
       body{
        -webkit-transform: rotate(-3deg);
        -moz-transform: rotate(-3deg);
        -o-transform: rotate(-3deg);
        padding-top:20px;
        }
        */
        .cavs {
            z-index: 1;
            position: fixed;
            width: 95%;
            margin-left: 20px;
            margin-right: 20px;
        }
    </style>
    <script>
        //window.setTimeout(showfh,3000);
        var timer;

        function showfh() {
            fhi = 1;
            //关闭提示晃动屏幕，注释掉这句话即可
            timer = setInterval(xzfh2, 10);
        };
        var current = 0;

        function xzfh() {
            current = (current) % 360;
            document.body.style.transform = 'rotate(' + current + 'deg)';
            current++;
            if (current > 360) {
                current = 0;
            }
        };
        var fhi = 1;
        var current2 = 1;

        function xzfh2() {
            if (fhi > 50) {
                document.body.style.transform = 'rotate(0deg)';
                clearInterval(timer);
                return;
            }
            current = (current2) % 360;
            document.body.style.transform = 'rotate(' + current + 'deg)';
            current++;
            if (current2 == 1) {
                current2 = -1;
            } else {
                current2 = 1;
            }
            fhi++;
        };
    </script>
</head>
<body>

<!--小键盘承载器-->
<canvas class="cavs"></canvas>
<div style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
    <!-- 登录 -->
    <div id="windows1">
        <div id="loginbox">
            <form action="" method="post" name="loginForm" id="loginForm">
                <div class="control-group normal_text">
                    <h3>
                        <img src="${pageContext.request.contextPath}/static/login/logo.png" alt="Logo"/>
                    </h3>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_lg">
							<i><img height="37" src="${pageContext.request.contextPath}/static/login/user.png"/></i>
							</span><input type="text" name="loginname" id="loginname" value="" placeholder="请输入用户名"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_ly">
							<i><img height="37" src="${pageContext.request.contextPath}/static/login/suo.png"/></i>
							</span><input type="password" name="password" id="password" placeholder="请输入密码"
                                          class="keypad" keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>
                <div style="float:right;padding-right:10%;">
                    <div style="float: left;margin-top:3px;margin-right:2px;">
                        <font color="white">记住密码</font>
                    </div>
                    <div style="float: left;">
                        <input name="form-field-checkbox" id="saveid" type="checkbox"
                               onclick="savePaw();" style="padding-top:0px;"/>
                    </div>
                </div>
                <div class="form-actions">
                    <div style="width:86%;padding-left:8%;">


                        <c:if test="${pd.isZhuce == 'yes' }">
                            <span class="pull-right" style="padding-right:3%;"><a href="javascript:changepage(1);"
                                                                                  class="btn btn-success">注册</a></span>
                        </c:if>
                        <span class="pull-right"><a onclick="severCheck();" class="flip-link btn btn-info"
                                                    id="to-recover">登录</a></span>
                    </div>
                </div>
            </form>
            <div class="controls">
                <div class="main_input_box">
                    <font color="white"><span id="nameerr"></span></font>
                </div>
            </div>
        </div>
    </div>
    <!-- 注册 -->
    <div id="windows2" style="display: none;">
        <div id="loginbox">
            <form action="" method="post" name="loginForm" id="loginForm">
                <div class="control-group normal_text">
                    <h3>
                        <img src="${pageContext.request.contextPath}/static/login/logo.png" alt="Logo"/>
                    </h3>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_lg">
							<i>邮箱</i>
							</span><input type="text" name="USERNAME" id="USERNAME" value="" placeholder="请输入用户名"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_ly">
							<i>密码</i>
							</span><input type="password" name="PASSWORD" id="PASSWORD" placeholder="请输入密码"
                                          class="keypad" keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_ly">
							<i>重输</i>
							</span><input type="password" name="chkpwd" id="chkpwd" placeholder="请重新输入密码" class="keypad"
                                          keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <div style="width:86%;padding-left:8%;">
                        <span class="pull-right" style="padding-right:3%;"><a href="javascript:changepage(2);"
                                                                              class="btn btn-success">取消</a></span>
                        <span class="pull-right"><a onclick="register();" class="flip-link btn btn-info"
                                                    id="to-recover">提交</a></span>
                    </div>
                </div>
            </form>
            <div class="controls">
                <div class="main_input_box">
                    <font color="white"><span id="nameerr"></span></font>
                </div>
            </div>
        </div>
    </div>

</div>
<div id="templatemo_banner_slide" class="container_wapper">
    <div class="camera_wrap camera_emboss" id="camera_slide">
        <!-- 背景图片 -->
        <div data-src="${pageContext.request.contextPath}/static/login/images/banner_slide_01.jpg"></div>
        <div data-src="${pageContext.request.contextPath}/static/login/images/banner_slide_02.jpg"></div>
        <div data-src="${pageContext.request.contextPath}/static/login/images/banner_slide_03.jpg"></div>
        <div data-src="${pageContext.request.contextPath}/static/login/images/banner_slide_04.jpg"></div>
        <div data-src="${pageContext.request.contextPath}/static/login/images/banner_slide_05.jpg"></div>
    </div>
    <!-- #camera_wrap_3 -->
</div>

<script type="text/javascript">
    //服务器校验
    function severCheck() {
        if (check()) {
            var loginname = $("#loginname").val();
            var password = $("#password").val();
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/user/toLogin',
                data: {username: loginname, password: password},
                dataType: 'json',
                cache: false,
                success: function (data) {
                    if ("-1" == data.code) {
                        easyDialog.open({
                            container: {
                                content: data.msg
                            },
                            autoClose: 1500
                        });
                    } else if ("1" == data.code) {
                        //表示登录成功，调到登录页面
                        window.location.href = '${pageContext.request.contextPath}/system/index';
                    }
                }
            });
        }
    }

    $(document).ready(function () {
        changeCode1();
        $("#codeImg").bind("click", changeCode1);
        $("#zcodeImg").bind("click", changeCode2);
    });

    $(document).keyup(function (event) {
        if (event.keyCode == 13) {
            $("#to-recover").trigger("click");
        }
    });

    function genTimestamp() {
        var time = new Date();
        return time.getTime();
    }

    function changeCode1() {
        $("#codeImg").attr("src", "code.do?t=" + genTimestamp());
    }

    function changeCode2() {
        $("#zcodeImg").attr("src", "code.do?t=" + genTimestamp());
    }

    //客户端校验
    function check() {
        if ($("#loginname").val() == "") {
            $("#loginname").tips({
                side: 2,
                msg: '用户名不得为空',
                bg: '#AE81FF',
                time: 3
            });
            showfh();
            $("#loginname").focus();
            return false;
        } else {
            $("#loginname").val(jQuery.trim($('#loginname').val()));
        }
        if ($("#password").val() == "") {
            $("#password").tips({
                side: 2,
                msg: '密码不得为空',
                bg: '#AE81FF',
                time: 3
            });
            showfh();
            $("#password").focus();
            return false;
        }

        $("#loginbox").tips({
            side: 1,
            msg: '正在登录 , 请稍后 ...',
            bg: '#68B500',
            time: 1
        });
        return true;
    }

    function savePaw() {
        if (!$("#saveid").attr("checked")) {
            $.cookie('loginname', '', {
                expires: -1
            });
            $.cookie('password', '', {
                expires: -1
            });
            $("#loginname").val('');
            $("#password").val('');
        }
    }

    function saveCookie() {
        if ($("#saveid").attr("checked")) {
            $.cookie('loginname', $("#loginname").val(), {
                expires: 7
            });
            $.cookie('password', $("#password").val(), {
                expires: 7
            });
        }
    }

    jQuery(function () {
        var loginname = $.cookie('loginname');
        var password = $.cookie('password');
        if (typeof (loginname) != "undefined"
            && typeof (password) != "undefined") {
            $("#loginname").val(loginname);
            $("#password").val(password);
            $("#saveid").attr("checked", true);
            $("#code").focus();
        }
    });

    //登录注册页面切换
    function changepage(value) {
        if (value == 1) {
            $("#windows1").hide();
            $("#windows2").show();
            changeCode2();
        } else {
            $("#windows2").hide();
            $("#windows1").show();
            changeCode1();
        }
    }

    //注册
    function rcheck() {

        if (!ismail($("#USERNAME").val())) {
            $("#USERNAME").tips({
                side: 3,
                msg: '邮箱格式不正确',
                bg: '#AE81FF',
                time: 3
            });
            $("#USERNAME").focus();
            return false;
        }


        if ($("#USERNAME").val() == "") {
            $("#USERNAME").tips({
                side: 3,
                msg: '输入用户名',
                bg: '#AE81FF',
                time: 2
            });
            $("#USERNAME").focus();
            $("#USERNAME").val('');
            return false;
        } else {
            $("#USERNAME").val(jQuery.trim($('#USERNAME').val()));
        }

        if ($("#PASSWORD").val() == "") {
            $("#PASSWORD").tips({
                side: 3,
                msg: '输入密码',
                bg: '#AE81FF',
                time: 2
            });
            $("#PASSWORD").focus();
            return false;
        }
        if ($("#PASSWORD").val() != $("#chkpwd").val()) {
            $("#chkpwd").tips({
                side: 3,
                msg: '两次密码不相同',
                bg: '#AE81FF',
                time: 3
            });
            $("#chkpwd").focus();
            return false;
        }

        return true;
    }

    //提交注册
    function register() {
        if (rcheck()) {
            $.ajax({
                type: "POST",
                url: '${pageContext.request.contextPath}/user/register',
                data: {username: $("#USERNAME").val(), password: $("#PASSWORD").val()},
                dataType: 'json',
                cache: false,
                success: function (data) {
                    if ("-1" == data.code) {
                        easyDialog.open({
                            container: {
                                content: data.msg
                            },
                            autoClose: 1500
                        });
                    } else if ("1" == data.code) {
                        //表示注册成功，调到登录页面
                        window.location.href = '${pageContext.request.contextPath}/system/login';
                    }
                }
            });
        }
    }

    //邮箱格式校验
    function ismail(mail) {
        return (new RegExp(/^(?:[a-zA-Z0-9]+[_\-\+\.]?)*[a-zA-Z0-9]+@(?:([a-zA-Z0-9]+[_\-]?)*[a-zA-Z0-9]+\.)+([a-zA-Z]{2,})+$/).test(mail));
    }

    //js  日期格式
</script>
<script src="${pageContext.request.contextPath}/static/login/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.7.2.js"></script>
<script src="${pageContext.request.contextPath}/static/login/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/static/login/js/jquery.mobile.customized.min.js"></script>
<script src="${pageContext.request.contextPath}/static/login/js/camera.min.js"></script>
<script src="${pageContext.request.contextPath}/static/login/js/templatemo_script.js"></script>
<script src="${pageContext.request.contextPath}/static/login/js/ban.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jQuery.md5.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tips.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.cookie.js"></script>

<!-- 软键盘控件start -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/login/keypad/js/form/keypad.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/login/keypad/js/framework.js"></script>
<!-- 软键盘控件end -->
<!-- 弹窗插件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
</body>
</html>