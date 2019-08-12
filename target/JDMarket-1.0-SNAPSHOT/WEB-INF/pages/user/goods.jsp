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
    <div class="fr huiyuan_main">
        <div class="hy_tt">
            <a href="<%=basePath%>orders_findStateByOrder?id=${items.orderState}"
               class="sel">全部订单<span>(${fn:length(orders)})</span><i></i></a> |
            <a href="<%=basePath%>orders_findStateByOrder?id=${items.orderState}">待付款<span>(${waitPay})</span><i></i></a>
            |
            <a href="<%=basePath%>orders_findStateByOrder?id=${items.orderState}">待发货<span>(${waitSend})</span><i></i></a>
            |
            <a href="<%=basePath%>orders_findStateByOrder?id=${items.orderState}">待收货<span>(${waitAccept})</span><i></i></a>
            |
            <a href="<%=basePath%>orders_findStateByOrder?id=${items.orderState}">交易完成<span>(${finish})</span><i></i></a>
            |
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order&state=wpj">待评价<span>(0)</span><i></i></a>
        </div>
        <div class="mat15">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_ordertt1">
                <tr>
                    <td>商品信息</td>
                    <td width="100">退款/退货</td>
                    <td width="121">实付款(元)</td>
                    <td width="101">状态</td>
                    <td width="101">操作</td>
                </tr>
            </table>
        </div>
        <c:forEach items="${ordersOfSell}" var="item">
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
                            <a href="<%=basePath%>/goods_queryGoodsById?id=${item.goods.id}" class="fl mar5 dingdan_img"
                               target="_blank"><img
                                    src="<%=basePath%>/upload/${item.imgUrl}"/></a>
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
                            <a class="tag_org" href="<%=basePath%>/orders_deliver?orderNum=${item.orderNum}">发货</a>
                            </p>
                        </c:if>
                        <c:if test="${item.orderState==2}">
                            <p class="tag_org">已发货</p>
                        </c:if>
                        <c:if test="${item.orderState==3}">
                            <p class="tag_org">已完成</p>
                        </c:if>
                    </td>
                </tr>
            </table>
        </c:forEach>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
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
</body>
</html>