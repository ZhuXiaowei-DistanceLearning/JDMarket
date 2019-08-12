<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/12
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="com.zxw.pojo.User" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    User user = (User) request.getSession().getAttribute("cur_user");
%>
<c:set var="user" value="<%=user%>"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>吉首大学二手商城</title>
    <meta name="viewport" content="width=1200"/>
    <link type="text/css" rel="stylesheet" href="./css/index/style.css"/>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/global.js"></script>
    <script type="text/javascript" src="./js/arttpl.js"></script>
    <script type="text/javascript" src="./js/plugin/layer/layer.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
    <link type="text/css" rel="stylesheet" href="./js/plugin/jqzoom/style.css"/>
    <script type="text/javascript" src="./js/plugin/jqzoom/jquery.jqzoom.js"></script>
    <link type="text/css" rel="stylesheet" href="./js/plugin/duotu/duotu.css"/>
    <script type="text/javascript" src="./js/plugin/duotu/duotu.js"></script>
    <script type="text/javascript" src="./js/plugin/ckplayer/ckplayer.js"></script>
    <script type="text/javascript" src="./js/jquery.scrollLoading.js"></script>
</head>
<body>
<jsp:include page="../common/index_header.jsp"></jsp:include>
<jsp:include page="../common/goods_nav.jsp"></jsp:include>
<div class="content">
    <form method="post" id="form" action="<%=basePath%>/orders_pay">
        <div class="order_cg">
            <i class="tjcg_dui"></i>
            <div class="tjcg_tt">订单已提交，请尽快付款！</div>
            <!--<div class="mat8 c888">（请您在48小时内完成支付，否则订单会被自动取消）</div>-->
            <div class="mat30">订单编号：<span class="c888 mal5">${orders.orderNum}</span></div>
            <div class="mat10">支付方式：<span class="c888 mal5">${orders.orderPaymentName}支付</span></div>
            <div class="dd_yingfu">应付金额：<span>${orders.orderPrice}</span> 元</div>
        </div>
        <div class="dd_box" style="padding-bottom:40px;">
            <div class="liucheng">选择支付方式</div>
            <div class="fkfs">
                <ul>
                    <li class="js_radio">
                        <label for="order_payment_balance">
                            <input type="radio" name="order_payment" value="balance" id="order_payment_balance"
                                   style="display:none"/>
                            <img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/balance/logo.png"
                                 class="fl"/>
                            <span class="fr mat5 mal10">余额：<span class="corg">${purse.balance}元</span></span>
                            <div class="clear"></div>
                            <i></i>
                        </label>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="zf_box" id="paypw_html">
                <div class="zf_text">请输入支付密码：</div>
                <div class="zfmm" id="zfmm">
                    <input type="password" name="payPassword" id="payPassword"/>
                    <%--<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=setting&act=paypw" target="_blank" class="cblue mal10">重置密码</a>--%>
                </div>
            </div>
            <input type="hidden" name="goodsId" value="${orders.goodsId}"/>
            <input type="hidden" name="id" value="${orders.id}"/>
            <input type="hidden" name="orderPrice" value="${orders.orderPrice}"/>
            <input type="button" value="去付款" id="pay" class="ddtj_btn" style="float:none; margin:90px 0 50px 45px;"/>
        </div>
    </form>
</div>
<script type="text/html" id="paypw_form">
    <div>
        <input type="text" name="paypw" value="" id="paypw"/>
        <a href="javascript:;" onclick="paypw_btn();">确认支付</a>
        <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=setting&act=paypw"/>重置支付密码</a>
    </div>
</script>
<script type="text/javascript">
    $(function () {
        pe_select_radio('order_payment', "balance", function () {
            if ($(":input[name='order_payment']:checked").val() == 'balance') {
                $("#paypw_html").show();
            }
            else {
                $("#paypw_html").hide();
            }
        });
    })
    //支付密码确认按钮
    function paypw_btn() {
        var user_paypw = $('#paypw').val();
        if (user_paypw == '') {
            pe_tip('请输入支付密码');
            return false;
        }
        $(":input[name='user_paypw']").val(user_paypw)
        //layer.closeAll();
        pay_btn();
    }
</script>
<div class="clear"></div>
<div class="width980">
</div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/index_footer.jsp"></jsp:include>
<script type="text/javascript">
    $(function () {
        $("img.js_imgload").scrollLoading();
        $(".fenlei_li").hover(
            function () {
                $(".fenlei_li").find(".fenlei_h3 a").removeClass("sel");
                $(".fenlei_li").removeClass("fenlei_li_sel");
                $(this).find(".fenlei_h3 a").addClass("sel");
                $(this).addClass("fenlei_li_sel");
                $(".fenlei_li").find(".js_right").hide();
                var _top = $(this).index() * 35;
                $(this).find(".js_right").css("top", "-" + _top + "px").show();
            },
            function () {
                $(".fenlei_li").find(".fenlei_h3 a").removeClass("sel");
                $(".fenlei_li").removeClass("fenlei_li_sel");
                $(".fenlei_li").find(".js_right").hide();
            }
        )
        var hoverTimer;
        $("#menu_nav").hover(function () {
            clearTimeout(hoverTimer);
            $("#menu_html").add(".fenlei_li_more").show();
        }, function () {
            clearTimeout(hoverTimer);
            hoverTimer = setTimeout(function () {
                $("#menu_html").hide();
                $(".fenlei_li_more").hide();
            }, 100);
        })
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
<script type="text/javascript">
    $(function () {
        $("#pay").click(function () {
            let pwd = $("#payPassword").val();
            if (pwd == "") {
                $("#pwdInfo").empty();
                $("#zfmm").after("<p id='pwdInfo' style='margin-left: 10px;color: red;display: inline-block'>不能为空</p>")
            } else {
                $("#pwdInfo").empty();
                $.ajax({
                    url: "<%=basePath%>/orders_checkPay",
                    method: 'post',
                    data: {"payPassword": pwd},
                    success: function (data) {
                        alert(data)
                    },
                    error: function (data) {
                        if (data.responseText == "success") {
                            $("#form").submit();
                        } else if (data.responseText == "error") {
                            alert("支付密码错误")
                        }
                    }
                })
            }
        })
    })
</script>
</body>
</html>
