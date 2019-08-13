<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/13
  Time: 16:41
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
    <div class="now mat10"><a href='<%=basePath%>/goods_homeGoods'>首页</a> >
        ${catelogGoods[0].goods.catelog.name}
    </div>
    <div class="">
        <div class="list_sx">
            <%--<div class="pinpai_fl mal10">
                <span class="list_sx_l">分类：</span>
                <div class="list_sx_r">
                    <a href="http://www.phpshe.com/demo/phpshe/product/list-3" title="全部">全部</a>

                    <a href="http://www.phpshe.com/demo/phpshe/product/list-4" title="连衣裙" class="sel">连衣裙</a>

                    <a href="http://www.phpshe.com/demo/phpshe/product/list-5" title="衬衫">衬衫</a>

                    <a href="http://www.phpshe.com/demo/phpshe/product/list-6" title="裤子">裤子</a>

                    <a href="http://www.phpshe.com/demo/phpshe/product/list-7" title="半身裙">半身裙</a>
                </div>
                <div class="clear"></div>
            </div>--%>
            <div class="shixian mat15 mab15"></div>
            <div class="pinpai_fl mal10">
                <span class="list_sx_l">排序：</span>
                <div class="list_sx_r">
                    <ul>
                        <li class="prolist_px">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=${catelogGoods[0].goods.catelog.id}&soryBy=price"><span
                                    class="fl">价格</span></a>
                        </li>
                        <li class="prolist_px"><a
                                href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=${catelogGoods[0].goods.catelog.id}&soryBy=startTime">时间</a>
                        </li>
                    </ul>
                </div>
                <!--<span class="fr mat8 mar10 c888">已找到 <strong>4</strong> 个商品</span>-->
                <div class="clear"></div>
            </div>
        </div>
        <div class="prolist_html">
            <c:forEach items="#{catelogGoods}" var="item">
                <div class="prolist" style="margin-right: 15px">
                    <a href="<%=basePath%>/goods_queryGoodsById?id=${item.goods.id}"
                       target="_blank">
                        <div class="pro_bq">
                            <img src="<%=basePath%>upload/${item.images[0].imgUrl}" width="250" height="250"
                                 class="js_imgload"/>
                        </div>
                        <p class="prolist_name"><c:out value="${item.goods.name}"></c:out></p>
                        <p class="mat8">
                         <span class="money1 fl"><span class="num font18 mar3">¥</span><c:out
                                 value="${item.goods.price}"></c:out></span>
                            </span>
                            <span class="font12 fr c999">${item.goods.startTime}</span>
                        </p>
                        <div class="clear"></div>
                    </a>
                </div>
            </c:forEach>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
        <div class="fenye mat15"></div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<div class="width980">
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
<script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/jquery.scrollLoading.js"></script>
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
</body>
</html>
