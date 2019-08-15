<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>仅用于学习-登录</title>
	<link rel="icon" type="image/png" href="<%=basePath%>/js/assets/i/favicon.png">
	<link rel="apple-touch-icon-precomposed" href="<%=basePath%>/js/assets/i/app-icon72x72@2x.png">
	<script src="<%=basePath%>/js/echarts.min.js"></script>
	<link rel="stylesheet" href="<%=basePath%>/js/assets/css/amazeui.min.css"/>
	<link rel="stylesheet" href="<%=basePath%>/js/assets/css/amazeui.datatables.min.css"/>
	<link rel="stylesheet" href="<%=basePath%>/js/assets/css/app.css">
	<script src="<%=basePath%>/js/assets/js/jquery.min.js"></script>

</head>

<body class="theme-white">
<script src="assets/js/theme.js"></script>
<div class="am-g tpl-g">
	<!-- 风格切换 -->
	<div class="tpl-skiner">
		<div class="tpl-skiner-toggle am-icon-cog">
		</div>
		<div class="tpl-skiner-content">
			<div class="tpl-skiner-content-title">
				选择主题
			</div>
			<div class="tpl-skiner-content-bar">
				<span class="skiner-color skiner-white" data-color="theme-white"></span>
				<span class="skiner-color skiner-black" data-color="theme-black"></span>
			</div>
		</div>
	</div>

	<div class="tpl-login">
		<div class="tpl-login-content">
			<div style="background: url(<%=basePath%>/upload/logo.png) center no-repeat;height: 165px;margin: 0 auto;margin-bottom: 20px;">
			</div>
			<form class="am-form tpl-form-line-form" method="post" action="<%=basePath%>/admin_login">
				<div class="am-form-group">
					<input type="text" class="tpl-form-input" id="user-name" placeholder="请输入账号" name="phone">
				</div>

				<div class="am-form-group">
					<input type="password" class="tpl-form-input" id="user-name" placeholder="请输入密码" name="password">
				</div>
				<div class="am-form-group tpl-login-remember-me">
					<%--<input id="remember-me" type="checkbox">--%>
					<%--<label for="remember-me">
						记住密码
					</label>--%>
				</div>
				<div class="am-form-group">
					<input type="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn"
							></input>

				</div>
			</form>
		</div>
	</div>
</div>
<script src="<%=basePath%>/js/assets/js/amazeui.min.js"></script>
<script src="<%=basePath%>/js/assets/js/app.js"></script>

</body>

</html>
