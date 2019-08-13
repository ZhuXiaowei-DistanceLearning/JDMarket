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
        .time {
            border: 1px;
            background: #1867c0;
            padding: 2px 10px;
            margin: 5px 5px;
            color: #fff;
            border-radius: 20px;
        }

        .set {
            background: #337ab7;;
            border: 1px;
            padding: 2px 10px;
            color: #fff;
            border-radius: 15px;
            text-align: center;
            font-size: 15px;
            margin: 0px 3px;
        }
    </style>
</head>
<body>
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main">
        <div class="hy_tt">
            <a href="javascript:;" class="sel">我的收藏<span>(${fn:length(cart)})</span><i></i></a>
        </div>
        <div class="hy_tablelist">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <th colspan="2">商品信息</th>
                    <th width="100">价格</th>
                    <th width="100">状态</th>
                    <th width="80">操作</th>
                </tr>
                <c:forEach items="${goodsAndImage}" var="item">
                    <tr>
                        <td width="50"><a href="<%=basePath%>/goods_queryGoodsById?id=${item.goods.id}"
                                          class="dingdan_img" target="_blank"><img
                                src="<%=basePath%>/upload/${item.images[0].imgUrl}"/></a></td>
                        <td class="aleft" style="padding-left:0;text-align: center">
                                ${item.goods.name}
                        </td>
                        <td>¥${item.goods.price}</td>
                        <td>
                            <c:if test="${item.goods.status==1}">
                                在售
                            </c:if>
                            <c:if test="${item.goods.status==0}">
                                已下架
                            </c:if>
                        </td>
                        <td><a href="<%=basePath%>/focus_clearCart?goodsId=${item.goods.id}" class="tag_gray">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="fenye mat10"></div>
    </div>
</div>
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

<script type="text/javascript">
    $("#foot").css("position","absolute")
</script>
</body>
</html>