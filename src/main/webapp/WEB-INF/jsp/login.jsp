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
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/font-awesome.css"/>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/boostrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/dialog/easydialog.css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/login/js/jquery-1.5.1.min.js"></script>

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
<body style="background: url(${pageContext.request.contextPath}/static/login/background.png)">

<!--小键盘承载器-->
<%--<canvas class="cavs"></canvas>--%>
<div style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
    <!-- 登录 -->
    <div id="windows1">
        <div id="loginbox">
            <form action="" method="post" name="loginForm" id="loginForm">
                <div class="control-group normal_text">
                    <img src="${pageContext.request.contextPath}/static/login/logo.png" style="height: 40px" alt="Logo"/>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="glyphicon glyphicon-user"></span>
                            <input type="text" name="loginname" id="loginname" value="" placeholder="请输入用户名"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="glyphicon glyphicon-lock"></span>
							<input type="password" name="password" id="password" placeholder="请输入密码" keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>
                <div style="float:right;padding-right:10%;">
                    <div style="float: left;margin-top:3px;margin-right:2px;">
                        <font color="white" size="3px">记住密码</font>
                    </div>
                    <div style="float: left;">
                        <input name="form-field-checkbox" id="saveid" type="checkbox"
                               onclick="savePaw();" style="padding-top:0px; border: 0px;size: 3%"/>
                    </div>
                </div>
                <div class="form-actions">
                    <div style="width:100%; position: center">
                        <c:if test="${pd.isZhuce == 'yes' }">
                            <button type="button" class="btn btn-info button" style="margin-right: 7%" onclick="changepage(1);">注册</button>
                        </c:if>
                            <button type="button" class="btn btn-info button" onclick="severCheck();">登录</button>
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
                    <img src="${pageContext.request.contextPath}/static/login/logo.png" style="height: 40px" alt="Logo"/>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="glyphicon glyphicon-envelope"></span>
                            <input type="text" name="USERNAME" id="USERNAME" value="" placeholder="请输入用户名"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="glyphicon glyphicon-tag"></span>
                            <input type="password" name="PASSWORD" id="PASSWORD" placeholder="请输入密码"
                                           keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="glyphicon glyphicon-tags"></span>
                            <input type="password" name="chkpwd" id="chkpwd" placeholder="请重新输入密码"
                                          keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>
                <div class="form-actions-res">
                    <button type="button" class="btn btn-info button" style="margin-right: 7%" onclick="changepage(2);">取消</button>
                    <button type="button" class="btn btn-info button" onclick="register();">提交</button>
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

<!-- 弹窗插件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/dialog/easydialog.min.js"></script>
</body>
</html>