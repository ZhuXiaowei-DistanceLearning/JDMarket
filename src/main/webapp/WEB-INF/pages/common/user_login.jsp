<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录 - 吉大商城</title>
    <meta name="viewport" content="width=1200"/>
    <link type="text/css" rel="stylesheet" href="./css/user/style.css"/>
    <script type="text/javascript" src="./js/plugin/layer/layer.js"></script>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/global.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
</head>
<body>
<div class="quick_menu">
    <div class="width980" style="width:1000px;">
        <span class="fl">欢迎来到PHPSHE B2C商城系统演示站！</span>
        <div class="fr top_r">
            <a href="<%=basePath%>/page_common_user_login" title="登录">登录</a>
            <a href="<%=basePath%>/page_common_user_register" title="注册">免费注册</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="width980" style="width:1000px;">
    <div class="login_logo">
        <a href="http://www.phpshe.com/demo/phpshe/" title=""><img
                src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170509110941s.jpg" alt=""/></a>
    </div>
</div>
<div class="login_bg">
    <div style="width:1000px; margin:0 auto">
        <div class="login_r">
            <div class="zctt">用户登录</div>
            <form method="post" id="form" action="<%=basePath%>/user_login">
                <div class="zc_input1">
                    登录帐号：<input type="text" name="phone" class="login_input1" placeholder="手机号"/>
                </div>
                <div class="zc_input1 mat20">
                    登录密码：<input type="text" name="password" class="login_input1" placeholder="登录密码"
                                onfocus="this.type='password'"/>
                </div>
                <div class="mat25">
                    <input type="submit" class="loginbtn1" value="立即登录"/>
                </div>
            </form>
            <div class="login_other mat20">
                <a href="<%=basePath%>/user_register" class="mar10">免费注册</a> |
                <%--<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=do&act=getpw" class="mal10">忘记密码</a>--%>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $(window).keydown(function (event) {
            if (event.keyCode == 13) $(":button").click();
        });
        $(":button").click(function () {
            if ($(":input[name='user_name']").val() == '') {
                pe_tip('请填写帐号');
                return false;
            }
            if ($(":input[name='user_pw']").val() == '') {
                pe_tip('请填写密码');
                return false;
            }
            $(this).val('登录中...');
        })
    })
</script>
<script type="text/javascript">
    pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
</script>
<style type="text/css">
    body {
        background: #fff;
    }
</style>
</body>
</html>