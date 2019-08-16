<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/13
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
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
    <script type="text/javascript" src="./js/formcheck.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
</head>
<body style="position: relative">
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main">
        <div class="order_view_tt mat10">订单状态</div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view mat10">
            <tr>
                <td align="right" class="c888" width="80">订单编号：</td>
                <td>${orders.orderNum}</td>
            </tr>
            <tr>
                <td align="right" class="c888">当前状态：</td>
                <td>
                    <c:choose>
                        <c:when test="${orders.orderState==0}">
                            <span class="mar20"><span class="corg">等待付款</span></span>
                            <a class="tag_org mal10" href="<%=basePath%>/orders_goPay?id=${orders.id}&goodsId=${goodsExtend.goods.id}"
                               target="_blank">立即付款</a>
                            <a class="tag_gray mal10" href="user.php?mod=order&act=close&id=190812094416485"
                               onclick="return pe_dialog(this, '取消订单', 550, 400)">取消订单</a>
                        </c:when>
                        <c:when test="${orders.orderState==1}">
                            <span class="mar20"><span class="corg">等待发货</span></span>
                        </c:when>
                        <c:when test="${orders.orderState==2}">
                            <span class="mar20"><span class="corg">等待签收</span></span>
                        </c:when>
                        <c:when test="${orders.orderState==3}">
                            <span class="mar20"><span class="corg">已完成</span></span>
                        </c:when>
                        <c:when test="${orders.orderState==4}">
                            <span class="mar20"><span class="corg">买家已取消</span></span>
                        </c:when>
                    </c:choose>

                </td>
            </tr>
        </table>
        <div class="shixian mat20"></div>
        <div class="order_view_tt mat20">收货信息</div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view mat10">
            <tr>
                <td align="right" class="c888" width="80">姓　　名：</td>
                <td>${orders.useraddr.userName}</td>
            </tr>
            <tr>
                <td align="right" class="c888">手机号码：</td>
                <td>${orders.useraddr.userPhone}</td>
            </tr>
            <tr>
                <td align="right" class="c888">收货地址：</td>
                <td>${orders.useraddr.addressProvince}${orders.useraddr.addressCity}${orders.useraddr.addressArea}${orders.useraddr.addressText}</td>
            </tr>
            <tr>
                <td align="right" class="c888">买家留言：${orders.orderInformation}</td>
                <td></td>
            </tr>
            <tr>
                <td align="right" class="c888">快递信息：</td>
                <td>--</td>
            </tr>
        </table>
        <div class="shixian mat20"></div>
        <div class="order_view_tt mat20">订单信息</div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view mat10">
            <tr>
                <td align="right" class="c888" width="80">下单时间：</td>
                <td>${orders.orderDate}</td>
            </tr>
            <tr>
                <td align="right" class="c888">付款时间：</td>
                <td>${orders.orderPtime}</td>
            </tr>
            <tr>
                <td align="right" class="c888">发货时间：</td>
                <td>${orders.orderStime}</td>
            </tr>
            <c:if test="${orders.orderState==4}">
                <tr>
                    <td align="right" class="c888">取消时间：</td>
                    <td>${orders.orderClosetext}</td>
                </tr>
            </c:if>
            <tr>
                <td align="right" class="c888" width="80">付款方式：</td>
                <td>余额支付</td>
            </tr>
        </table>
        <div class="shixian mat20"></div>
        <div class="order_view_tt mat20">商品清单</div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="order_view_list mat20">
            <tr>
                <td class="bgtt1" colspan="3">商品信息</td>
                <td class="bgtt1" width="100">单价</td>
                <td class="bgtt1" width="100">数量</td>
                <td class="bgtt1" width="150">商品优惠</td>
                <td class="bgtt1" width="100">小计</td>
            </tr>
            <tr>
                <td style="border-right:0;width:60px"><a href="http://www.phpshe.com/demo/phpshe/product/4"
                                                         class="dingdan_img"><img
                        src="<%=basePath%>/upload/${goodsExtend.images[0].imgUrl}"></a>
                </td>
                <td style="border-left:0;border-right:0;text-align:left;">
                    <a href="http://www.phpshe.com/demo/phpshe/product/4" target="_blank" class="dd_name">${goodsExtend.goods.name}</a>
                    <p class="c888 mat5">${goodsExtend.goods.describle}</p>
                </td>
                <td style="border-left:0;width:80px">
                </td>
                <td><span class="font13">${goodsExtend.goods.price}</span></td>
                <td><span class="font13">1</span></td>
                <td>-</td>
                <td><span class="font13">${goodsExtend.goods.price}</span></td>
            </tr>
        </table>
        <div class="dingdan_jiesuan" style="margin-bottom: 40px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>商品金额：</td>
                    <td width="100">¥ ${goodsExtend.goods.price}</td>
                </tr>
                <tr>
                    <td>运　　费：</td>
                    <td>¥ 0.0</td>
                </tr>
                <tr>
                    <td>实付金额：</td>
                    <td class="font16 cred strong">¥ ${goodsExtend.goods.price}</td>
                </tr>
            </table>
            <div class="clear"></div>
        </div>
    </div>
</div>
<style type="text/css">
    .list td, .list th {
        border: 1px solid #e5e5e5;
        padding: 10px 5px
    }
</style>
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
