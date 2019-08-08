<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 15:46
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
        <span class="fl">欢迎来到PHPSHE B2C商城系统演示站！</span>
        <div class="fr top_r">
            您好：<a href="http://www.phpshe.com/demo/phpshe/user.php" style="color:#DF002F;padding:0;border:0">zxcasdqwe</a>
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=do&act=logout" title="退出" style="padding-left:0;color:#999">[退出]</a>

            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order" title="我的订单" class="scj">我的订单</a>
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=sign" title="签到有礼">签到有礼</a>
            <a href="http://www.phpshe.com/demo/phpshe/article/news" title="资讯中心" style="border-right:0;">资讯中心</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div style="background:#E45050; padding-bottom:20px; position:relative">
    <div class="width980">
        <div class="fl logo">
            <a href="http://www.phpshe.com/demo/phpshe/user.php">会员中心</a>
        </div>
        <div class="user_nav">
            <li><h3><a href="http://www.phpshe.com/demo/phpshe/" title="首页">首页</a></h3></li>
            <li><h3><a href="http://www.phpshe.com/demo/phpshe/brand/list" title="品牌专区" >品牌专区</a></h3></li>
            <li><h3><a href="http://www.phpshe.com/demo/phpshe/quan/list" title="领券中心" >领券中心</a></h3></li>
            <li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/zhekou" title="限时折扣" >限时折扣</a></h3></li>
            <li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/pintuan" title="限时拼团" >限时拼团</a></h3></li>
            <li><h3><a href="http://www.phpshe.com/" title="简好网络" >简好网络</a></h3></li>
            <li><h3><a href="http://www.phpshe.com/phpshe" title="购买授权" >购买授权</a></h3></li>
        </div>
        <div class="sear fr">
            <form method="get" action="http://www.phpshe.com/demo/phpshe/index.php">
                <input type="hidden" name="mod" value="product" />
                <input type="hidden" name="act" value="list" />
                <div class="inputbg fl"><input type="text" name="keyword" value="" class="fl searinput c666" /></div>
                <input type="submit" class="fl sear_btn" onclick="this.form.submit();return false;" value="搜 索" />
            </form>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
</body>
