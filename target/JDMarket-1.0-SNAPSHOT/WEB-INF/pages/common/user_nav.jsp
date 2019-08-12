<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<body>
<div class="huiyuan_left">
    <a href="<%=basePath%>/user_home"><h3 class="hy_tb6"><s></s>个人中心</h3></a>
    <h3 class="hy_tb2"><s></s>交易管理</h3>
    <ul>
        <li><a href="<%=basePath%>/orders_myOrders" >我的订单</a></li>
        <li><a href="<%=basePath%>/user_queryBySellProduct" >我的卖出</a></li>
        <li><a href="<%=basePath%>/goods_mySell" >我的闲置</a></li>
        <li><a href="<%=basePath%>/user_myComment" >我的评价</a></li>
        <%--<li><a href="user.php?mod=collect" >我的收藏</a></li>--%>
        <%--<li><a href="user.php?mod=refund" >退款/退货</a></li>--%>
    </ul>
    <div class="xuxian"></div>
    <h3 class="hy_tb4"><s></s>财务中心</h3>
    <ul>
        <%--<li><a href="user.php?mod=quan" >我的优惠券</a></li>--%>
        <%--<li><a href="user.php?mod=moneylog" >资金明细</a></li>--%>
        <%--<li><a href="user.php?mod=pointlog" >积分明细</a></li>--%>
        <li><a href="<%=basePath%>/purse_getMoney" >充值/提现</a></li>
    </ul>
    <div class="xuxian"></div>
    <h3 class="hy_tb3"><s></s>用户设置</h3>
    <ul>
        <li><a href="<%=basePath%>/user_basic" >个人信息</a></li>
        <%--<li><a href="user.php?mod=setting&act=pw" >修改密码</a></li>--%>
        <%--<li><a href="user.php?mod=userbank" >收款账户</a></li>--%>
        <li><a href="<%=basePath%>/userAddr_findAll?page=1&rows=10" >收货地址</a></li>
    </ul>
    <%--<div class="xuxian"></div>--%>
    <%--<h3 class="hy_tb5"><s></s>分销中心</h3>--%>
    <%--<ul>--%>
        <%--<li><a href="user.php?mod=tg" >邀请好友</a></li>--%>
        <%--<li style="padding-bottom:20px"><a href="user.php?mod=tg&act=list" >我的收益</a></li>--%>
    <%--</ul>--%>
</div>
</body>
