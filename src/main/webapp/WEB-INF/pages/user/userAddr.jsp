<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/9
  Time: 16:09
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
            <a href="javascript:;" class="sel">收货地址<span>(${fn:length(addrList)})</span><i></i></a>
            <a href="<%=basePath%>/page_user_addUserAddr" class="fabu_btn">新增地址</a>
            <div class="clear"></div>
        </div>
        <c:if test="${addrList == null}">
            暂时没有收货地址，快去添加吧
        </c:if>
        <c:if test="${addrList != null}">
            <c:forEach items="${addrList}" var="item">
                <div class="hy_tablelist">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <th width="100">收货人</th>
                            <th width="120">手机号码</th>
                            <th>收货地址</th>
                            <th width="130">操作
                            </td>
                        </tr>
                        <tr>
                            <td>${item.userName}</td>
                            <td>${item.userPhone}</td>
                            <td class="aleft" style="text-align: center">
                                <c:if test="${item.addressDefault == 1}">
                                <span class="cred">
                                    [默认]
                                </span> </c:if>${item.addressProvince}&nbsp;&nbsp;${item.addressCity}&nbsp;&nbsp;${item.addressArea}&nbsp;&nbsp;${item.addressText}
                            </td>
                            <td>
                                <a href="<%=basePath%>/userAddr_delete?id=${item.addressId}" class="tag_gray mar5">修改</a>
                                <a href="javascript:pe_confirm('删除该地址', '<%=basePath%>/userAddr_delete?id=${item.addressId}')"
                                   class="tag_gray">删除</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </c:forEach>
            <div class="fenye mat10"></div>
        </c:if>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
</div>
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
</script>
</body>
</html>