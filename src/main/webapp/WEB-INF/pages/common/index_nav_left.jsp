<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<body>
<div class="nav">
    <ul>
        <li class="sel" style="width:228px; position:relative;z-index:999" id="menu_nav">
            <h3 class="all"><a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list"><span></span>全部商品</a>
            </h3>
            <div id="menu_html">
                <div class="fl_index">
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=1" class="i1">闲置数码</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=2" class="i1">校园代步</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=3" class="i1">电器日用</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=4" class="i1">图书教材</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=5" class="i1">美妆衣物</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=6" class="i1">运动棋牌</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=7" class="i1">票券小物</a>
                            <i class="b_right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <h3><a href="<%=basePath%>/goods_homeGoods" title="首页">首页</a></h3></li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=1" title="品牌专区" target="_self">闲置数码</a></h3></li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=2" title="领券中心" target="_self">校园代步</a></h3></li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=3" title="限时折扣" target="_self">电器日用</a></h3>
        </li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=4" title="限时拼团" target="_self">图书教材</a></h3>
        </li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=5" title="简好网络" target="_blank">美妆衣物</a></h3></li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=6" title="购买授权" target="_blank">运动棋牌</a></h3></li>
        <li>
            <h3><a href="<%=basePath%>/goods_queryGoodsByCatelogId?catelogId=7" title="购买授权" target="_blank">票券小物</a></h3></li>
    </ul>
</div>
<div class="clear"></div>
</body>
