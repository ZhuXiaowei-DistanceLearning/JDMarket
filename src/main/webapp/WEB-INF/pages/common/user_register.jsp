<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户注册 - 吉大商城</title>
    <meta name="viewport" content="width=1200" />
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
        <a href="http://www.phpshe.com/demo/phpshe/" title=""><img src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170509110941s.jpg" alt="" /></a>
    </div>
</div><div class="login_bg1">
    <div style="width:1000px; margin:0 auto; position:relative">
        <div class="login_r" style="height:410px; width:300px; position:absolute; right:0; top:-50px;">
            <div class="zctt_qh">
               <h3>用户注册</h3>
                <div class="clear"></div>
            </div>
            <form method="post" id="register_form" action="<%=basePath%>/user_register">
                <div class="zc_input1">
                    用&nbsp;&nbsp;户 名：<input type="text" name="username" class="login_input1" placeholder="5-15位字符（字母/数字/汉字）" />
                </div>
                <div class="zc_input1 mat10">
                    <input type="password" style="display:none;width:0;height:0;" disabled />
                    登录密码：<input type="password" name="password" class="login_input1" placeholder="请输入6-20位密码"  autocomplete="new-password" />
                </div>
                <!--<div class="zc_input1 mat10">
                    确认密码：<input type="password" name="user_pw1" class="login_input1" placeholder="请再次输入登录密码" />
                </div>-->
                <div class="zc_input1 mat10 js_phone">
                    手机号码：<input type="text" name="phone" class="login_input1" placeholder="真实手机号码" />
                </div>
                <div class="zc_input1 mat10 js_phone">
                    QQ：<input type="text" name="qq" class="login_input1" placeholder="真实QQ号码" />
                </div>
                <div class="mat20">
                    <input type="submit" class="loginbtn1" value="点击注册" />
                </div>
            </form>
            <div class="login_other mat20" style="text-align:right">
                已有注册账号？请直接 <a href="<%=basePath%>/page_common_user_login" title="登录"><span class="corg">登录</span></p>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $(":button").click(function(){
            if ($(":input[name='user_name']").val() == '') {
                pe_tip('请填写用户名');
                return false;
            }
            if ($(":input[name='user_pw']").val() == '') {
                pe_tip('请填写登录密码');
                return false;
            }
            /*if ($(":input[name='user_pw1']").val() == '') {
             pe_tip('请填写确认密码');
             return false;
             }
             if ($(":input[name='user_pw']").val() != $(":input[name='user_pw1']").val()) {
             pe_tip('登录密码与确认密码不一致');
             return false;
             }*/
            if ($(":input[name='reg_type']").val() == 'email' && $(":input[name='user_email']").val() == '') {
                pe_tip('请填写电子邮箱');
                return false;
            }
            if ($(":input[name='reg_type']").val() == 'phone' && $(":input[name='user_phone']").val() == '') {
                pe_tip('请填写手机号码');
                return false;
            }
            $(this).val('提交中...');
        })
    })
</script>
<style type="text/css">
    body{background:#fff;}
</style>
</body>
</html>