<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 19:34
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
    <form method="post" id="form">
        <div class="dd_box">
            <div class="liucheng">收货地址</div>
            <c:if test="${useraddrList!=null}">
            <div class="order_addbox" style="padding:0 0 0 45px">
                <div class="dddz_l" id="useraddr_html">
                    <c:forEach items="${useraddrList}" var="item">
                        <div class="addr_list js_radio" id="${item.addressId}"
                             onclick="useraddr_select('${item.addressId}')">
                            <i></i><span class="cred">寄送至　</span>${item.addressProvince} ${item.addressCity}
                                ${item.addressArea} ${item.addressText}（${item.userName} 收） <span
                                class="c999">${item.userPhone}</span>
                        </div>
                    </c:forEach>
                </div>
                </c:if>
                <c:if test="${useraddrList==null}" var="item">
                    <div class="xzdz_btn"><a href="http://www.phpshe.com/demo/phpshe/index.php?mod=useraddr&act=add"
                                             onclick="return pe_dialog(this, '新增地址', 630, 380)">+ 新增收货地址</a></div>
                    <div class="clear"></div>
                </c:if>
            </div>
            <div class="xuxian mat20"></div>
            <div class="liucheng">支付方式</div>
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
                    <li class="js_radio">
                        <label for="order_payment_alipay">
                            <input type="radio" name="order_payment" value="alipay" id="order_payment_alipay"
                                   style="display:none"/>
                            <img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/alipay/logo.png"
                                 class="fl"/>
                            <div class="clear"></div>
                            <i></i>
                        </label>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <!--<div class="xuxian mat20"></div>
            <div class="liucheng">订单备注</div>
            <div class="mat20" style="margin-left:45px;">
                <input type="text" name="order_text" class="inputall input350" placeholder="填写您的其他要求" />
            </div>-->
            <div class="xuxian mat20"></div>
            <div class="liucheng">商品清单</div>
            <div style="margin:20px 45px 0 45px;">
                <div class="gouwuche">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="gwc_tb">
                        <tr>
                            <th width="100">商品图片</th>
                            <th>商品信息</th>
                            <th width="150"></th>
                            <th width="80">单价</th>
                            <th width="120">数量</th>
                            <th width="80">小计</th>
                        </tr>
                        <tr class="js_cart" id="7">
                            <td class="hotimg1"><img
                                    src="<%=basePath%>/upload/${goodsExtend.images[0].imgUrl}"/>
                            </td>
                            <td style="text-align:left;padding-left:0">
                                <a href="http://www.phpshe.com/demo/phpshe/product/2" target="_blank"
                                   class="cblue">${goodsExtend.goods.name}</a>
                            </td>
                            <td style="text-align:left;">
                                <div class="c888">${goodsExtend.goods.describle}</div>
                            </td>
                            <td class="num">¥ ${goodsExtend.goods.price}</td>
                            <td>1</td>
                            <td>
                                <span class="num corg">¥ ${goodsExtend.goods.price}</span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="fukuan">
                    <div class="fl" style="padding:5px 10px; width:600px;">
                        <div class="mat10">
                            订单留言：<input type="text" name="order_text" placeholder="请填写您的其他要求" class="ds_input"
                                        style="width:320px"/>
                        </div>
                        <div class="mat20">
                            <span class="fl">店铺优惠：</span>
                            <div class="fl">
                                <select name="order_quan_id" class="yhq_select">
                                    <option value="0" quan_money="0.0">不使用优惠券</option>

                                </select>
                            </div>
                            <!--<a href="javascript:quan_duihuan_open();" class="mal10 cblue" style="text-decoration:underline">我要兑换</a>-->
                            <div class="clear"></div>
                        </div>
                        <!--<div class="mat15">账户积分：<span class="c888">10积分，可抵：0.1元，本次使用：<input type="text" name="order_point_use" class="ds_input"> 积分</span></div>-->
                        <div class="mat15">本次使用：<input type="text" name="order_point_use" class="ds_input"> 积分</span>
                            <span class="c999 mal10">（积分余额：10个，可抵：0.1元）</span></div>
                    </div>
                    <div class="fk_tb">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>商品金额：</td>
                                <td width="80" class="num font14 cfen">¥ <span id="order_product_money">${goodsExtend.goods.price}</span></td>
                            </tr>
                            <tr>
                                <td>运费：</td>
                                <td class="num font14">¥ <span id="order_wl_money">0.0</span></td>
                            </tr>
                            <tr>
                                <td>店铺优惠：</td>
                                <td class="num font14">- ¥ <span id="order_quan_money">0.0</span></td>
                            </tr>
                            <tr>
                                <td>积分抵扣：</td>
                                <td class="num font14">- ¥ <span id="order_point_money">0.0</span></td>
                            </tr>
                            <tr>
                                <td>应付金额：</td>
                                <td class="num font18 cfen strong">¥ <span id="order_money">${goodsExtend.goods.price}</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="ddtj_btn_box" style="background:none;">
                    <input type="hidden" name="address_id"/>
                    <input type="hidden" name="pesubmit"/>
                    <input type="button" class="ddtj_btn ddtj_btn1" id="order_btn" value="提交订单"/>
                    <a href="http://www.phpshe.com/demo/phpshe/cart" class="fhgw fr">< 返回购物车</a>
                </div>
            </div>
        </div>
    </form>
    <script type="text/html" id="quan_duihuan_html">
        <form method="post" id="quan_form" style="text-align:center;margin-top:50px">
            <input type="text" name="quan_key" value="" placeholder="请输入10位优惠券码" class="inputall input200"/>
            <input type="hidden" name="pesubmit"/>
            <p class="mat30"><input type="button" value="兑 换" class="tjbtn" onclick="quan_duihuan()"/></p>
        </form>
    </script>
</div>
<script type="text/javascript">
    $(function () {
        cart_check();
        useraddr_list(0);
        //支付方式
        pe_select_radio('order_payment', $(":input[name='order_payment']:eq(0)").val());
        //选择优惠券
        $(":input[name='order_quan_id']").live("change", function () {
            $("#order_quan_money").html($(this).find("option:selected").attr("quan_money"));
            order_money();
        })
        if ($(":input[name='order_quan_id'] option").length > 1) {
            $(":input[name='order_quan_id'] option:eq(1)").attr("selected", "selected");
            $(":input[name='order_quan_id']").change();
        }
        //使用积分
        $(":input[name='order_point_use']").keyup(function () {
            var point = pe_num($(this).val(), 'floor');
            var point_money = '0.0';
            if (point > 10) {
                point = 10;
            }
            $(this).val(point);
            if (100 > 0) {
                point_money = pe_num(point / 100, 'floor', 1, true);
            }
            $("#order_point_money").html(point_money);
            order_money();
        })
        $("#order_btn").click(function () {
            pe_submit("http://www.phpshe.com/demo/phpshe/index.php?mod=order&act=add&id=30", function (json) {
                if (json.result) pe_open(json.url, 1000);
            })
        })
    })
    //购物车初始化
    function cart_check() {
        if ($(".js_cart").length == 0) {
            $(".wgw_box").show();
            $(".content").hide();
        }
        else {
            $(".wgw_box").hide();
            $(".content").show();
        }
    }
    //获取收货地址
    function useraddr_list(id) {
        pe_getinfo("http://www.phpshe.com/demo/phpshe/index.php?mod=useraddr&id=" + id, function (json) {
            if (json.result) {
                $(":input[name='address_id']").val(json.info.address_id);
                pe_jshtml('useraddr_html', json);
                $("#useraddr_html .js_radio[val='" + json.info.address_id + "']").addClass("sel");
            }
        });
    }
    //选择收货地址
    function useraddr_select(id){
        $("#useraddr_html div").removeClass("sel");
        $("#"+id).addClass("sel")
    }
    //订单金额
    function order_money() {
        var product_money = pe_num($("#order_product_money").html(), 'round', 1);
        var wl_money = pe_num($("#order_wl_money").html(), 'round', 1);
        var quan_money = pe_num($("#order_quan_money").html(), 'round', 1);
        var point_money = pe_num($("#order_point_money").html(), 'round', 1);
        var order_money = product_money + wl_money - quan_money - point_money;
        order_money = order_money >= 0 ? order_money : 0;
        $("#order_money").html(pe_num(order_money, 'round', 1, true));
    }
</script>
<div class="clear"></div>
<div class="width980">
</div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/index_footer.jsp"></jsp:include>
<script type="text/javascript" src="./js/jquery.scrollLoading.js"></script>
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
</script>
<script type="text/javascript">
    $("#useraddr_html div:first").addClass("sel");

</script>
</body>
</html>
