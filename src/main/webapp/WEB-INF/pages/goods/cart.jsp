<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/13
  Time: 14:48
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
<div class="content" style="display:none">
    <div class="dd_box">
        <div class="liucheng" style="margin:10px 0 20px;">我的购物车</div>
        <form method="post" id="form">
            <div class="gouwuche">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="gwc_tb">
                    <tr>
                        <th width="20"></th>
                        <th width="90">商品图片</th>
                        <th>商品信息</th>
                        <th width="150"></th>
                        <th width="80">单价</th>
                        <th width="120">数量</th>
                        <th width="80">小计</th>
                        <th width="80">操作</th>
                    </tr>
                    <tr class="js_cart" cart_id="23">
                        <td style="vertical-align:middle"><input type="checkbox" name="cart_id[]" value="23" /></td>
                        <td class="hotimg1"><img src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/thumb_100x100_20180812173116l.jpg" /></td>
                        <td style="text-align:left;padding-left:0">
                            <a href="http://www.phpshe.com/demo/phpshe/product/2" target="_blank" class="cblue">phpshe测试商品小清新刺绣网纱拼接连衣裙中长款森女系收腰显瘦喇叭袖系带裙</a>
                        </td>
                        <td style="text-align:left;"><div class="c888">女装尺码：L</div></td>
                        <td class="num">¥ 88</td>
                        <td class="shuliang">
                            <span class="img1 mal10" onclick="cart_edit('-', '23');"><i></i></span>
                            <div class="shuliang_box"><input type="text" name="cart_num[]" value="2" product_money="88" readonly /></div>
                            <span class="img2" onclick="cart_edit('+', '23');"><i></i></span>
                            <div class="clear"></div>
                            <p class="cred mat10"></p>
                        </td>
                        <td class="num corg product_allmoney">¥ 176</td>
                        <td><a href="javascript:;" onclick="cart_edit('del', '23')">删除</a></td>
                    </tr>
                </table>
            </div>
            <div class="ddtj_btn_box">
                <div class="fl"><input type="checkbox" name="checkall" onclick="pe_checkall(this, 'cart_id')" /> 全选</div>
                <input type="hidden" name="pe_token" value="b658e4617a7613e7fb0153908515e837" />
                <input type="hidden" name="pesubmit" />
                <input type="button" id="order_btn" onclick="cart_submit()" value="结算" class="ddtj_btn" />
                <span class="fr">已选商品 <span class="font16 corg num" id="order_num">1</span> 件， 合计（不含运费）：<span class="font18 num corg"> ¥ <span id="order_money"></span></span></span>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $(":input[name='cart_id[]']").live("change", function(){
            cart_money();
        })
    })
    cart_money();
    //购物车修改
    function cart_edit(type, cart_id) {
        var js_cart = $(".js_cart[cart_id='"+cart_id+"']");
        var _this = js_cart.find(":input[name='cart_num[]']");
        if (type == 'del') {
            var num = 0;
        }
        else {
            var num = parseInt(_this.val());
            num = type == '+' ? num + 1 : (num >= 1 ? num - 1 : 0);
        }
        if (num == 0) {
            if (confirm('您确认要删除该商品吗?') == false) return;
        }
        pe_getinfo("http://www.phpshe.com/demo/phpshe/index.php?mod=cart&act=edit&id="+cart_id+"&num="+num, function(json){
            if (json.result) {
                if (num == 0) js_cart.remove();
            }
            _this.val(json.num);
            $(".js_cartnum").text(json.cart_num)
            //更新商品小计金额
            var product_allmoney = pe_num(_this.attr("product_money") * json.num, 'round', 1);
            js_cart.find(".product_allmoney").html('¥ '+product_allmoney);
            cart_money();
        })
    }
    //购物车金额
    function cart_money() {
        if ($(".js_cart").length == 0) {
            $(".wgw_box").show();
            $(".content").hide();
        }
        else {
            $(".wgw_box").hide();
            $(".content").show();
        }
        var product_money = 0, product_num = 0, order_money = 0, order_num = 0;
        $(":input[name='cart_id[]']:checked").each(function(){
            var _this = $(this).parents(".js_cart").find(":input[name='cart_num[]']");
            product_money = pe_num(_this.attr("product_money"), 'round', 1);
            product_num = pe_num(_this.val(), 'floor');
            order_money += product_money * product_num;
            order_num += product_num;
        })
        $("#order_money").html(pe_num(order_money, 'round', 1, true));
        $("#order_num").html(order_num);
    }
    //购物车结算
    function cart_submit() {
        if ($(":input[name='cart_id[]']:checked").length == 0) {
            pe_tip('请选择商品');
            return false;
        }
        pe_submit("http://www.phpshe.com/demo/phpshe/index.php?mod=cart", function(json){
            if (json.result) {
                pe_open("http://www.phpshe.com/demo/phpshe/index.php?mod=order&act=add&id="+json.id);
            }
        })
    }
</script>
<div class="clear"></div>
<div class="width980">
</div>
<div class="celan">
    <a href="http://www.phpshe.com/demo/phpshe/cart" style="margin-top:90px;">
        <div class="cl_sl js_cartnum">2</div>
        <div class="ico_gwc"><i></i></div>
        <div class="font14 mat8">购<br />物<br />车</div>
    </a>
    <a href="http://www.phpshe.com/demo/phpshe/android.apk" target="_blank">
        <div class="cl_app">APP</div>
        <div class="ico_app"><i></i></div>
    </a>
    <a href="javascript:;" style="position:relative" id="qrcode_btn">
        <div class="cl_weixin"><i></i></div>
        <div class="cl_ewm" id="qrcode_show"><img src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170503193748z.jpg"></div>
    </a>
    <a href="http://wpa.qq.com/msgrd?v=3&uin=76265959&site=qq&menu=yes" target="_blank">
        <div class="cl_qq"><i></i></div>
    </a>
    <a href="javascript:;" style="position:relative" id="tel_btn">
        <div class="font14">电话</div>
        <div class="cl_tel" id="tel_show">15839823500</div>
    </a>
    <a href="javascript:right_scrolltop();" class="topback"><i></i></a>
</div>
<div class="foot">
    <div class="foot_sm">
        <ul>
            <li>
                <i class="i_1"></i>
                <h3>自营保正品</h3>
                <p>现货自营 正品保证</p>
            </li>
            <li>
                <i class="i_2"></i>
                <h3>全场免运费</h3>
                <p>不限品类 满99免邮</p>
            </li>
            <li>
                <i class="i_3"></i>
                <h3>发货如闪电</h3>
                <p>极速发货 航空直达</p>
            </li>
            <li>
                <i class="i_4"></i>
                <h3>退货有保障</h3>
                <p>开箱验货 30天退换</p>
            </li>
        </ul>
        <div class="clear"></div>
    </div>
    <div class="bottom_link">
        <div class="border_link">
            <div class="item_1 fl">
                <h3>用户指南</h3>
                <ul>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/5" title="购物指南">购物指南</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/6" title="支付方式">支付方式</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/7" title="常见问题">常见问题</a></li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>配送方式</h3>
                <ul>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/8" title="配送时间及运费">配送时间及运费</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/9" title="验货与签收">验货与签收</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/10" title="订单查询">订单查询</a></li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>支付方式</h3>
                <ul>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/17" title="货到付款">货到付款</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/18" title="在线支付">在线支付</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/19" title="邮局汇款">邮局汇款</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/20" title="公司转账">公司转账</a></li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>售后服务</h3>
                <ul>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/11" title="售后政策">售后政策</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/12" title="退货说明">退货说明</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/13" title="取消订单">取消订单</a></li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>关于我们</h3>
                <ul>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/14" title="公司简介">公司简介</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/15" title="联系我们">联系我们</a></li>
                    <li><a href="http://www.phpshe.com/demo/phpshe/article/16" title="诚聘英才">诚聘英才</a></li>
                </ul>
            </div>
            <div class="foot_telnum">
                <p><span>15839823500</span></p>
                <span class="font14 cfen">周一 至 周五　8:30-18:00</span>
                <div class="mat10">
                    <img class="fl" src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170503193748z.jpg">
                    <div class="x_sm_text">扫扫有惊喜</div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="subnav">
        Copyright <span class="num">©</span> 2008-2018 简好网络 All Rights Reserved 豫ICP备17013559号-1 &nbsp;
        Powered by <a href="http://www.phpshe.com" target="_blank" title="PHPSHE商城系统">phpshe1.7</a>
    </div>
</div>
<div style="background:url('http://www.phpshe.com/template/default/index/images/small_phone.png') no-repeat; width:291px;height:483px; position:fixed; right:60px; bottom:10px;z-index:999999" id="phone_html">
    <div style="position:relative">
        <span style="background:url('http://www.phpshe.com/template/default/index/images/phone_close.png') no-repeat; width:14px; height:14px; position:absolute; right:18px; top:10px" onclick='$("#phone_html").remove()'></span>
    </div>
    <iframe name="mobile_iframe" style="width: 265px; height: 400px; border: medium none; margin:33px 0 0 13px" src="http://m.phpshe.com/demo/phpshe/"></iframe>
</div>
<script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/jquery.scrollLoading.js"></script>
<script type="text/javascript">
    $(function(){
        $("img.js_imgload").scrollLoading();
        $(".fenlei_li").hover(
            function(){
                $(".fenlei_li").find(".fenlei_h3 a").removeClass("sel");
                $(".fenlei_li").removeClass("fenlei_li_sel");
                $(this).find(".fenlei_h3 a").addClass("sel");
                $(this).addClass("fenlei_li_sel");
                $(".fenlei_li").find(".js_right").hide();
                var _top = $(this).index() * 35;
                $(this).find(".js_right").css("top", "-"+_top+"px").show();
            },
            function(){
                $(".fenlei_li").find(".fenlei_h3 a").removeClass("sel");
                $(".fenlei_li").removeClass("fenlei_li_sel");
                $(".fenlei_li").find(".js_right").hide();
            }
        )
        var hoverTimer;
        $("#menu_nav").hover(function(){
            clearTimeout(hoverTimer);
            $("#menu_html").add(".fenlei_li_more").show();
        }, function(){
            clearTimeout(hoverTimer);
            hoverTimer = setTimeout(function(){
                $("#menu_html").hide();			$(".fenlei_li_more").hide();
            }, 100);
        })
        //二维码显示
        $("#qrcode_btn").hover(function(){
            $("#qrcode_show").show();
        }, function(){
            $("#qrcode_show").hide();
        })
        //电话显示
        $("#tel_btn").hover(function(){
            $("#tel_show").show();
        }, function(){
            $("#tel_show").hide();
        })
    });
    function right_scrolltop() {
        $("body,html").animate({"scrollTop":0});
    }
    pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
</script>
</body>
</html>
