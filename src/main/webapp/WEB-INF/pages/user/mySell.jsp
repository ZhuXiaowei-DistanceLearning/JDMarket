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
    <%--<link rel="stylesheet" href="./css/bootstrap3.css"/>--%>
    <link rel="shortcut icon" type="./js/favicon.ico">
    <style type="text/css">
        .time{
            border: 1px;
            background:#1867c0 ;
            padding: 2px 10px;
            margin: 5px 5px;
            color: #fff;
            border-radius: 20px;
        }
        .set{
            background: #337ab7;;border: 1px; padding: 2px 10px;color: #fff;border-radius: 15px;text-align: center;font-size: 15px;
            margin: 0px 3px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main" style="background: rgb(246, 246, 246)" id="product">
        <div class="hy_tt">
            <a href="<%=basePath%>/page_goods_addGood"
               style="color: #fff;background: #09C878 url(../css/images/fabu_jia.png) no-repeat 6px 5px;padding: 5px 10px 5px 28px;margin: 0 10px 0 0;height: 26px;line-height: 26px;border-radius: 18px;">发布闲置</a>
        </div>
        <div class="mat15">
            <c:if test="${empty goodsList}">
                <div class="no_share">
                    <span>没有任何内容，去逛逛其它的吧！</span>
                </div>
            </c:if>
            <c:if test="${!empty goodsList}">
                <c:forEach var="item" items="${goodsList}">
                    <div class="prolist_html mat20">
                        <div class="prolist"
                             style="padding: 15px;height: 375px;float: left;background: #fff;position: relative;margin-right: 20px;margin-top: 15px;">
                            <a href="<%=basePath%>/goods_queryGoodsById?id=${item.goods.id}"
                               target="_blank">
                                <div class="pro_bq">
                                    <img src="<%=basePath%>upload/${item.images[0].imgUrl}" width="250" height="250"
                                         class="js_imgload"/>
                                </div>
                                <p class="prolist_name" style="font-size: 16px;line-height: 30px"><label>商品名称：</label> <c:out value="${item.goods.name}"></c:out>
                                </p>
                                <p class="prolist_name" style="font-size: 16px"><label>商品描述：</label>
                                    <c:out value="${item.goods.describle}"></c:out>
                                </p>
                                <div id="clear"></div>
                                <div style="margin: 5px auto">
                                <a class="set"
                                   href="<%=basePath%>goods_editGoods?id=${item.goods.id}">编辑</a>
                                <c:if test="${item.goods.status ==1}">
                                    <a class="set" href="<%=basePath%>goods_updateGoodsTime?id=${item.goods.id}&status=${item.goods.status}">擦亮</a></span>
                                </c:if>
                                    <%--  <span class="fa fa-commenting"><a>${item.comments.commetNum}</a></span> --%>
                                <c:if test="${item.goods.status ==1}">
                                    <span class="fa fa-trash fa-lg"><a class="set"
                                            href="<%=basePath%>goods_myGoodsInfo?id=${item.goods.id}&status=${item.goods.status}">下架</a></span>
                                </c:if>
                                <c:if test="${item.goods.status ==0}">
                                        <a class="set"
                                            href="<%=basePath%>goods_myGoodsInfo?id=${item.goods.id}&status=${item.goods.status}">上架</a></span>
                                </c:if>
                                </div>
                                <div class="like_detail">
                                    <div class="like_content" style="font-size: 16px;margin: 10px auto;">
                                        <span>状态：${item.goods.status == 1 ? '正在销售':'已下架'}</span>
                                    </div>
                                    <div class="like_content" style="font-size: 16px">
                                        <c:if test="${item.goods.status == 1}">
                                            <span>最近更新时间：${item.goods.polishTime == null ? item.goods.startTime : item.goods.polishTime}</span>
                                        </c:if>
                                    </div>
                                    <div class="like_content" style="font-size: 16px">
                                        <c:if test="${item.goods.status == 0}">
                                            <span>下架时间：${item.goods.endTime}</span>
                                        </c:if>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
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
            $("#mat20").mousemove(function () {

            });
            function right_scrolltop() {
                $("body,html").animate({"scrollTop": 0});
            }
            pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
        </script>
</body>
</html>