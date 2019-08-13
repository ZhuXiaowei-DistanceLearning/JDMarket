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
<body>
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main">
        <div class="hy_tt">
            <a href="javascript:;" class="sel">我的评价<span>(0)</span><i></i></a>
        </div>
        <div class="hy_tablelist">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <th>评价详情</th>
                    <th colspan="2">商品信息</th>
                </tr>
            </table>
        </div>
        <div class="fenye mat10"></div>
    </div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    $(function () {
        //晒图预览
        $(".pj_img img").live("click", function () {
            var pj_bigimg = $(this).parents(".pj_img").next(".pj_bigimg");
            $(this).parents(".pj_img").find("img").removeClass("sel");
            if (pj_bigimg.find("img").attr("src") == $(this).attr("src")) {
                pj_bigimg.empty();
            }
            else {
                $(this).addClass("sel");
                pj_bigimg.html('<img src="' + $(this).attr("src") + '" />');
            }
        })
    })
</script>
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
