<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心 - 吉大商城</title>
    <meta name="viewport" content="width=1200"/>
    <link type="text/css" rel="stylesheet" href="./css/user/style.css"/>
    <script type="text/javascript" src="./js/plugin/layer/layer.js"></script>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/global.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
</head>
<body>
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main" style="position: relative;">
        <%--用户信息--%>
        <div class="u_index_box mat5">
            <div class="u_index_rtt">
                <div class="user_tx"><a href="user.php?mod=setting&act=logo"><img
                        src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/thumb__120x_120_noavatar.jpg"/></a>
                </div>
                <div class="fl mal20 mat10" style="margin-top: 25px">
                    您好：<span class="cred">${user.username}</span><span class="mal20 dj_btn">注册用户</span>
                </div>
                <div class="clear"></div>
            </div>
            <div class="u_index_l">
                <div class="u_info">
                    <div style="margin-left:0px;">
                        <p>手机号码：
                            <span class="c999">${user.phone}</span>

                        </p>
                        <p>
                            上次登录时间：2019-08-08 14:20
                        </p>
                    </div>
                </div>
            </div>
            <%--<div class="u_index_m">
                <c:set var="waitPay" value="1"></c:set>
                <c:set var="waitAccept" value="1"></c:set>
                <c:forEach items="${orderList}" var="item">
                    &lt;%&ndash;0:代付款1:待发货2:待收货3:已完成&ndash;%&gt;
                    <c:if test="${item.orderState==0}">
                        <c:set var="${waitPay}" value="${waitPay}"></c:set>
                    </c:if>
                </c:forEach>
                        ${waitPay}
                <div>待付款：<span class="c999"><a href="user.php?mod=order&state=wpay">1</a> 个</span></div>
                <div>待发货：<span class="c999"><a href="user.php?mod=order&state=wsend">0</a> 个</span></div>
            </div>--%>
            <div class="u_index_r">
                <div class="u_ye_l">
                    <div>账户余额：<a href="user.php?mod=moneylog" class="corg">${purse.balance} 元</a></div>
                    <div>积分余额：<a href="user.php?mod=pointlog" class="c999">10 个</a></div>
                </div>
                <div class="u_ye_r">
                    <a href="user.php?mod=pay">充值</a>
                    <a href="user.php?mod=cashout&act=add" class="btntx">提现</a>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
        <%--最新订单--%>
        <div class="u_jilu_tt" id="">
            <a class="fl" id="aNew">最新订单</a>
            <a class="fl" id="aMy">&nbsp;&nbsp;|&nbsp;&nbsp;我的闲置</a>
            <div class="clear"></div>
        </div>
        <%--订单表头--%>
        <div id="new">
            <c:forEach items="${orderList}" var="item">
                <div class="hy_ordertt">
                    <span class="fl">${item.orderDate}</span>
                    <span class="fl" style="margin-left:30px">订单号：${item.orderNum}</span>
                    <div class="clear"></div>
                </div>
                <%--订单详情信息--%>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
                    <tr>
                        <td style="text-align:left;">
                            <div class="dingdan_list" style="padding-top:0;border-top:0">
                                <a href="http://www.phpshe.com/demo/phpshe/product/2" class="fl mar5 dingdan_img"
                                   target="_blank"><img
                                        src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/thumb_100x100_20180812173116l.jpg"/></a>
                                <div class="fl dingdan_name">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/2" target="_blank"
                                       class="dd_name">${item.goods.name}</a>
                                    <p class="c888 mat5">${item.goods.describle}</p>
                                </div>
                                <div class="fl dingdan_jg">${item.goods.price} <span class="mat5 c888 font12">×1</span>
                                </div>
                                <div class="fr dingdan_tk">
                                </div>
                                <div class="clear"></div>
                            </div>
                        </td>
                        <td width="120">
                            <p class="corg font14 strong">${item.goods.price}</p>
                            <p class="c999">（含运费：0.0）</p>
                            <p class="c999">余额支付</p>
                        </td>
                        <td width="100">
                            <c:if test="${item.orderState==0}">
                                <span class="corg">等待付款</span>
                            </c:if>
                            <c:if test="${item.orderState==1}">
                                <span class="corg">等待发货</span>
                            </c:if>
                            <c:if test="${item.orderState==2}">
                                <span class="corg">已完成</span>
                            </c:if>
                            <p><a href="user.php?mod=order&act=view&id=190808103751791" target="_blank">订单详情</a></p>
                        </td>
                        <td width="100">
                            <a class="tag_org" href="<%=basePath%>/goods_buy?goodsId=${item.goods.id}"
                               target="_blank">立即付款</a>
                            <p class="mat5"><a class="c999"
                                               href="<%=basePath%>/focus_clearCart?goodsId=${item.goods.id}">取消订单</a>
                            </p>
                        </td>
                    </tr>
                </table>
            </c:forEach>
        </div>
        <%--订单表头--%>
        <div id="my" style="display: none">
            <c:forEach items="${mySell}" var="item">
                <div class="hy_ordertt">
                    <span class="fl">${item.orderDate}</span>
                    <span class="fl" style="margin-left:30px">订单号：${item.orderNum}</span>
                    <div class="clear"></div>
                </div>
                <%--订单详情信息--%>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
                    <tr>
                        <td style="text-align:left;">
                            <div class="dingdan_list" style="padding-top:0;border-top:0">
                                <a href="http://www.phpshe.com/demo/phpshe/product/2" class="fl mar5 dingdan_img"
                                   target="_blank"><img
                                        src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/thumb_100x100_20180812173116l.jpg"/></a>
                                <div class="fl dingdan_name">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/2" target="_blank"
                                       class="dd_name">${item.goods.name}</a>
                                    <p class="c888 mat5">${item.goods.describle}</p>
                                </div>
                                <div class="fl dingdan_jg">${item.goods.price} <span class="mat5 c888 font12">×1</span>
                                </div>
                                <div class="fr dingdan_tk">
                                </div>
                                <div class="clear"></div>
                            </div>
                        </td>
                        <td width="120">
                            <p class="corg font14 strong">${item.goods.price}</p>
                            <p class="c999">（含运费：0.0）</p>
                            <p class="c999">余额支付</p>
                        </td>
                        <td width="100">
                            <c:if test="${item.orderState==0}">
                                <span class="corg">待支付</span>
                            </c:if>
                            <c:if test="${item.orderState==1}">
                                <span class="corg">去发货</span>
                            </c:if>
                            <c:if test="${item.orderState==2}">
                                <span class="corg">已完成</span>
                            </c:if>
                            <p><a href="user.php?mod=order&act=view&id=190808103751791" target="_blank">订单详情</a></p>
                        </td>
                        <td width="100">
                            <c:if test="${item.orderState==0}">
                                <p class="tag_org">买家还未付款</p>
                            </c:if>
                            <c:if test="${item.orderState==1}">
                                <a class="tag_org" href="<%=basePath%>/goods_buy?goodsId=${item.goods.id}"
                                   target="_blank">发货</a>
                                <p class="mat5"><a class="c999"
                                                   href="<%=basePath%>/focus_clearCart?goodsId=${item.goods.id}">取消订单</a>
                                </p>
                            </c:if>
                            <c:if test="${item.orderState==2}">
                                <p class="tag_org" target="_blank">已完成</p>
                            </c:if>

                        </td>
                    </tr>
                </table>
            </c:forEach>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
<script type="text/javascript">
    $("#aNew").mousemove(function (t) {
        $("#my").hide();
        $("#new").show();
    });
    $("#aMy").mousemove(function (t) {
        $("#my").show();
        $("#new").hide();
    });
</script>
<script type="text/javascript">
    $(function () {
        //二维码显示
        $("#qrcode_btn").hover(function () {
            $("#qrcode_show").show();
        }, function () {
            $("#qrcode_show").hide();
        })
        //电话显示
        $("#tel_btn").hover(function () {
            $("#tel_show").show();
        }, function () {
            $("#tel_show").hide();
        })
    });
    function right_scrolltop() {
        $("body,html").animate({"scrollTop": 0});
    }
    pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
</script>
</div>
</div>
</body>
</html>