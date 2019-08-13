<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<body>
<div class="quick_menu">
    <div class="width980">
        <span class="fl">欢迎使用吉大商城</span>
        <div class="fr top_r">
            <c:set var="user" value="${sessionScope.cur_user}"></c:set>
            <c:if test="${user!=null}">
                您好：<a href="<%=basePath%>/user_home" style="color:#DF002F;padding:0;border:0">${user.username}</a>
                <a href="<%=basePath%>/user_logout" title="退出" style="padding-left:0;color:#999">[退出]</a>
            </c:if>
            <c:if test="${user==null}">
                <a href="<%=basePath%>/page_common_user_login"
                   title="登录">登录</a>
                <a href="<%=basePath%>/page_common_user_register"
                   title="注册">免费注册</a>
            </c:if>
            <a href="<%=basePath%>/orders_myOrders" title="我的订单" class="scj">我的订单</a>
            <a href="<%=basePath%>/user_home" title="个人中心" style="border-right:0;">个人中心</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="width980">
</div>
<div style="background:#fff; padding-bottom:20px;">
    <div class="width980">
        <div class="header">
            <div class="fl logo">
                <a href="<%=basePath%>/goods_homeGoods" title=""><img
                        src="<%=basePath%>/upload/logo.png" alt=""/></a>
            </div>
            <div class="head_gwc">
            </div>
            <!--<p class="top_tel fr">15839823500</p>-->
            <div class="sear fr" style="margin: 57px 120px 0 0;">
                <form method="get" action="<%=basePath%>/goods_homeGood">
                    <div class="inputbg fl">
                        <input type="text" name="search" value="" class="fl searinput c666"/></div>
                    <input type="submit" class="fl sear_btn" value="搜 索"/>
                </form>
                <div class="clear"></div>
                <div class="mat5 head_hot">
                  <%--  <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=PHPSHE"
                       title="PHPSHE" target="_blank" class="mar5 c666">PHPSHE</a>
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=B2C商城系统"
                       title="B2C商城系统" target="_blank" class="mar5 c666">B2C商城系统</a>
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=简好网络" title="简好网络"
                       target="_blank" class="mar5 c666">简好网络</a>--%>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div>
</body>
