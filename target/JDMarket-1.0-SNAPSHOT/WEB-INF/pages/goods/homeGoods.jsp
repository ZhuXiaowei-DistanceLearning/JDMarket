<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <link rel="shortcut icon" type="image/ico" href="./js/favicon.ico">
    <link type="text/css" rel="stylesheet" href="./css/index/style.css"/>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/global.js"></script>
    <script type="text/javascript" src="./js/arttpl.js"></script>
    <script type="text/javascript" src="./js/plugin/layer/layer.js"></script>
    <script type="text/javascript" src="./js/index/jquery.banner.js"></script>
</head>

<body>
<%--<%@include file="../common/index_header.jsp"%>--%>
<jsp:include page="../common/index_header.jsp"></jsp:include>
<jsp:include page="../common/index_nav_left.jsp"></jsp:include>
<div class="content" style="padding-top:5px">
<jsp:include page="../common/index_nav_right.jsp"></jsp:include>
    <!--限时折扣 Start-->
    <!--限时折扣 End-->
    <!--分类1 Start-->
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>闲置数码</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods1}" var="item">
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
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>校园代步</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods2}" var="item">
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
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>电器日用</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods3}" var="item">
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
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>图书教材</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods4}" var="item">
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
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>美妆衣物</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods5}" var="item">
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
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>运动棋牌</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods6}" var="item">
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
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>票券小物</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach items="${catelogGoods7}" var="item">
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
    <!--分类1 End-->
    <div class="yl_list">
        <div class="yl_tt"><span>友情链接</span></div>
        <div class="yl_name">
            <a href="https://www.jsu.edu.cn" target="_blank">吉首大学</a>
            <a href="https://jwxt.jsu.edu.cn/jsxsd/" target="_blank">吉大教务管理系统</a>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        pe_jstime(".huodong_time", '1565166618', 'html');
        $(".jdt_banner").swBanner();
    })
</script>
<div class="clear"></div>
<div class="width980">
</div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/index_footer.jsp"></jsp:include>
<div style="position:relative">
    <span style="background:url('http://www.phpshe.com/template/default/index/images/phone_close.png') no-repeat; width:14px; height:14px; position:absolute; right:18px; top:10px"
          onclick='$("#phone_html").remove()'></span>
</div>
</div>
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
        $("body,html").animate({
            "scrollTop": 0
        });
    }
    pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
</script>
</body>
</html>