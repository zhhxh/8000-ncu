<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="../../common/admin/header.jsp" %>
</head>
<body>	
      <div class="row" style="margin-top:20px;">
            <div class="col-sm-1">

               
            </div>
            <div class="col-sm-8">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>系统信息</h5>
                    </div>
                    <div class="ibox-content no-padding">
                        <div class="panel-body">
                            <div class="panel-group" id="version">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v41">系统用户名：</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v41" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                           
                                            <ul>
                                                <li>${requestScope.jiankong.userName}</li>
                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v40">本地ip地址</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v40" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
                                                <li>${requestScope.jiankong.ip}</li>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v32">本地主机名称：</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v32" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
                                                <li>${requestScope.jiankong.getHostName}</li>
                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v31">JVM可以使用的总内存:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v31" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
                                                <li>${requestScope.jiankong.totalMemory}</li>
                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#version" href="#v301">JVM可以使用的剩余内存:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v301" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                           <ul>
                                                <li>${requestScope.jiankong.freeMemory}</li>
                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v30">JVM可以使用的处理器个数:  </a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v30" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
                                                <li>${requestScope.jiankong.availableProcessors}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v22">Java的运行环境版本：</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v22" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
                                                <li>${requestScope.jiankong.javaVersion}</li>
                                              

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v21">内存总量:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v21" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
                                                   <li>${requestScope.jiankong.total}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v20">当前内存使用量:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v20" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
												                                               
												   <li>${requestScope.jiankong.used}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               
                               <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v19">当前内存剩余量:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v19" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
												                                               
												   <li>${requestScope.jiankong.free}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v18">交换区总量:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v18" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
												                                               
												   <li>${requestScope.jiankong.jiaohuanquTotal}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v17">交换区总量:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v17" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>
												                                               
												   <li>${requestScope.jiankong.jianhuanquUsed}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#version" href="#v16">当前交换区剩余量:</a><code class="pull-right">${requestScope.datetiem}</code>
                                            </h5>
                                    </div>
                                    <div id="v16" class="panel-collapse collapse in">
                                        <div class="panel-body">
                                            <ul>                                           
												   <li>${requestScope.jiankong.jianhuanquFree}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               

                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
	 <%@include file="../../common/admin/footer.jsp" %>
</body>
</html>