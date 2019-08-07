<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PHPSHE B2C商城系统演示站 - Powered by phpshe</title>
    <meta name="viewport" content="width=1200"/>
    <meta name="keywords"
          content="免费商城系统,网上商城系统,多用户商城系统,分销商城系统,微信商城系统,商城源码,手机移动商城系统,b2b2c商城系统,网店系统,购物系统,php商城系统,phpshe,简好网络"/>
    <meta name="description"
          content="PHPSHE网上商城系统具备电商零售业务所需的所有基本功能，以其安全稳定、简单易用、高效专业等优势赢得了用户的广泛好评，为用户提供了一个低成本、高效率的网上商城建设方案。"/>
    <meta name="viewport" content="width=1200"/>
    <link rel="shortcut icon" type="image/ico" href="./favicon.ico">
    <link type="text/css" rel="stylesheet" href="./css/index/style.css"/>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/global.js"></script>
    <script type="text/javascript" src="./js/arttpl.js"></script>
    <script type="text/javascript" src="./js/plugin/layer/layer.js"></script>
</head>

<body>
<div class="quick_menu">
    <div class="width980">
        <span class="fl">欢迎来到PHPSHE B2C商城系统演示站！</span>
        <div class="fr top_r">
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=do&act=login&fromto=http%3A%2F%2Fwww.phpshe.com%2Fdemo%2Fphpshe%2F"
               title="登录">登录</a>
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=do&act=register&fromto=http%3A%2F%2Fwww.phpshe.com%2Fdemo%2Fphpshe%2F"
               title="注册">免费注册</a>
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order" title="我的订单" class="scj">我的订单</a>
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=sign" title="签到有礼">签到有礼</a>
            <a href="http://www.phpshe.com/demo/phpshe/article/news" title="资讯中心" style="border-right:0;">资讯中心</a>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="width980">
</div>
<div style="background:#fff; padding-bottom:20px;">
    <div class="width980">
        <div class="header">
            <div class="fl logo">
                <a href="http://www.phpshe.com/demo/phpshe/" title=""><img
                        src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170509110941s.jpg" alt=""/></a>
            </div>
            <div class="head_gwc">
                <a href="http://www.phpshe.com/demo/phpshe/cart">
                    <div class="head_gwc_tb">购物车 <span class="num cred js_cartnum">0</span> 件　 ></div>
                </a>
            </div>
            <!--<p class="top_tel fr">15839823500</p>-->
            <div class="sear fr">
                <form method="get" action="http://www.phpshe.com/demo/phpshe/index.php">
                    <input type="hidden" name="mod" value="product"/>
                    <input type="hidden" name="act" value="list"/>
                    <div class="inputbg fl"><input type="text" name="keyword" value="" class="fl searinput c666"/></div>
                    <input type="submit" class="fl sear_btn" onclick="this.form.submit();return false;" value="搜 索"/>
                </form>
                <div class="clear"></div>
                <div class="mat5 head_hot">
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=PHPSHE"
                       title="PHPSHE" target="_blank" class="mar5 c666">PHPSHE</a>
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=B2C商城系统"
                       title="B2C商城系统" target="_blank" class="mar5 c666">B2C商城系统</a>
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=简好网络" title="简好网络"
                       target="_blank" class="mar5 c666">简好网络</a>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="clear"></div>
<div class="nav">
    <ul>
        <li class="sel" style="width:228px; position:relative;z-index:999" id="menu_nav">
            <h3 class="all"><a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list"><span></span>全部商品</a>
            </h3>
            <div id="menu_html">
                <div class="fl_index">
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" title="女装 / 男装 / 内衣" class="i1">女装
                                / 男装 / 内衣</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                            <div class="fl_s">
                                <div class="fl fl_s1">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-3"
                                       title="女装"><strong>女装</strong> ></a>
                                </div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-4"
                                       title="连衣裙">|<span>连衣裙</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-5"
                                       title="衬衫">|<span>衬衫</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-6"
                                       title="裤子">|<span>裤子</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-7"
                                       title="半身裙">|<span>半身裙</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-8"
                                       title="男装"><strong>男装</strong> ></a>
                                </div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-9"
                                       title="T恤">|<span>T恤</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-10"
                                       title="衬衫">|<span>衬衫</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-11"
                                       title="牛仔裤">|<span>牛仔裤</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-12"
                                       title="休闲裤">|<span>休闲裤</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-13"
                                       title="卫衣">|<span>卫衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-14"
                                       title="夹克">|<span>夹克</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-15"
                                       title="内衣"><strong>内衣</strong> ></a>
                                </div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-20"
                                       title="情侣睡衣">|<span>情侣睡衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-16"
                                       title="长袖睡衣">|<span>长袖睡衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-17"
                                       title="睡裙">|<span>睡裙</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-18" title="无钢圈内衣">|<span>无钢圈内衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-19"
                                       title="真丝睡衣">|<span>真丝睡衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-21"
                                       title="袜子">|<span>袜子</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-22"
                                       title="内裤">|<span>内裤</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-2" title="鞋靴 / 箱包 / 配件" class="i2">鞋靴
                                / 箱包 / 配件</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                            <div class="fl_s">
                                <div class="fl fl_s1">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-23"
                                       title="鞋靴"><strong>鞋靴</strong> ></a>
                                </div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-24"
                                       title="女鞋">|<span>女鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-25"
                                       title="帆布鞋">|<span>帆布鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-26"
                                       title="小皮鞋">|<span>小皮鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-27"
                                       title="松糕鞋">|<span>松糕鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-28"
                                       title="男鞋">|<span>男鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-29"
                                       title="休闲鞋">|<span>休闲鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-30"
                                       title="板鞋">|<span>板鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-31"
                                       title="运动鞋">|<span>运动鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-32"
                                       title="乐福鞋">|<span>乐福鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-33"
                                       title="豆豆鞋">|<span>豆豆鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-34"
                                       title="商务鞋">|<span>商务鞋</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-35"
                                       title="箱包"><strong>箱包</strong> ></a>
                                </div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-36"
                                       title="女包">|<span>女包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-37"
                                       title="双肩包">|<span>双肩包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-38"
                                       title="男包">|<span>男包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-39"
                                       title="旅行包">|<span>旅行包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-40"
                                       title="钱包">|<span>钱包</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-41"
                                       title="配件"><strong>配件</strong> ></a>
                                </div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-42"
                                       title="帽子">|<span>帽子</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-43"
                                       title="贝雷帽">|<span>贝雷帽</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-44"
                                       title="渔夫帽">|<span>渔夫帽</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-45"
                                       title="丝巾">|<span>丝巾</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-46"
                                       title="披肩">|<span>披肩</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-47" title="童装玩具 / 孕产 / 用品"
                               class="i3">童装玩具 / 孕产 / 用品</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-48" title="家电 / 数码 / 手机" class="i4">家电
                                / 数码 / 手机</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-49" title="美妆 / 洗护 / 保健品"
                               class="i5">美妆 / 洗护 / 保健品</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-50" title="珠宝 / 眼镜 / 手表" class="i6">珠宝
                                / 眼镜 / 手表</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-51" title="运动 / 户外 / 乐器" class="i7">运动
                                / 户外 / 乐器</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <h3><a href="http://www.phpshe.com/demo/phpshe/" title="首页">首页</a></h3></li>
        <li>
            <h3><a href="http://www.phpshe.com/demo/phpshe/brand/list" title="品牌专区" target="_self">品牌专区</a></h3></li>
        <li>
            <h3><a href="http://www.phpshe.com/demo/phpshe/quan/list" title="领券中心" target="_self">领券中心</a></h3></li>
        <li>
            <h3><a href="http://www.phpshe.com/demo/phpshe/huodong/zhekou" title="限时折扣" target="_self">限时折扣</a></h3>
        </li>
        <li>
            <h3><a href="http://www.phpshe.com/demo/phpshe/huodong/pintuan" title="限时拼团" target="_self">限时拼团</a></h3>
        </li>
        <li>
            <h3><a href="http://www.phpshe.com/" title="简好网络" target="_blank">简好网络</a></h3></li>
        <li>
            <h3><a href="http://www.phpshe.com/phpshe" title="购买授权" target="_blank">购买授权</a></h3></li>
    </ul>
</div>
<div class="clear"></div>
<div class="content" style="padding-top:5px">
    <div class="jdt_banner">
        <ul class="banList">
            <li class="active1">
                <a href="" target="_blank"><img
                        src="http://www.phpshe.com/demo/phpshe/data/attachment/2018-08/20180812190103b.jpg"/></a>
            </li>
            <li>
                <a href="" target="_blank"><img
                        src="http://www.phpshe.com/demo/phpshe/data/attachment/2018-08/20180812190305q.jpg"/></a>
            </li>
            <li>
                <a href="" target="_blank"><img
                        src="http://www.phpshe.com/demo/phpshe/data/attachment/2018-08/20180812190436q.jpg"/></a>
            </li>
        </ul>
        <div style="position:relative; width:725px; margin:0 auto; z-index:100">
            <div class="fomW">
                <div class="jsNav">
                    <a href="javascript:;" class="trigger current"></a>
                    <a href="javascript:;" class="trigger "></a>
                    <a href="javascript:;" class="trigger "></a>
                </div>
            </div>
        </div>
    </div>
    <div class="fr top_right">
        <div class="action_list">
            <div class="action_tt">
                <h3 class="fl">网站公告</h3>
                <a class="fr" href="http://www.phpshe.com/demo/phpshe/article/list-1">更多 ></a>
                <div class="clear"></div>
            </div>
            <ul>
                <li>
                    <a href="http://www.phpshe.com/demo/phpshe/article/2" title="PHPSHE B2C商城系统v1.7板演示站上线"
                       target="_blank">PHPSHE B2C商城系统v1.7板演示站上线</a>05-01
                </li>
                <li>
                    <a href="http://www.phpshe.com/demo/phpshe/article/1" title="关于简好" target="_blank">关于简好</a>05-01
                </li>
            </ul>
        </div>
        <div class="top_fuwu">
            <ul>
                <li>
                    <i class="i_1"></i>
                    <h3>正品保证</h3>
                </li>
                <li>
                    <i class="i_3"></i>
                    <h3>闪电发货</h3>
                </li>
                <li style="border-right:0">
                    <i class="i_4"></i>
                    <h3>退货保障</h3>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <div class="clear"></div>
    <!--限时折扣 Start-->
    <!--限时折扣 End-->
    <!--分类1 Start-->
    <div class="prolist_html mat20">
        <div class="prolist_tt">
            <div class="fl">
                <h3>女装 / 男装 / 内衣</h3></div>
            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" target="_blank" class="fr c999">更多 ></a>
            <div class="clear"></div>
        </div>
        <c:forEach varStatus="i" begin="1" end="7">
            <c:forEach items="${catelogGoods}" var="item">
                <div class="prolist" style="margin-right: 15px">
                    <a href="http://www.phpshe.com/demo/phpshe/product/3"
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
        </c:forEach>
        <div class="clear"></div>
    </div>
    <!--分类1 End-->
    <div class="yl_list">
        <div class="yl_tt"><span>友情链接</span></div>
        <div class="yl_name">
            <a href="http://www.phpshe.com" target="_blank" title="简好网络官方网站">简好网络官方网站</a>
            <a href="http://www.phpshe.com/phpshe" target="_blank" title="PHPSHE商城系统">PHPSHE商城系统</a>
        </div>
    </div>
</div>
<script type="text/javascript" src="./js/index/jquery.banner.js"></script>
<script type="text/javascript">
    $(function () {
        pe_jstime(".huodong_time", '1565166618', 'html');
        $(".jdt_banner").swBanner();
    })
</script>
<div class="clear"></div>
<div class="width980">
</div>
<div class="celan">
    <a href="http://www.phpshe.com/demo/phpshe/cart" style="margin-top:90px;">
        <div class="cl_sl js_cartnum">0</div>
        <div class="ico_gwc"><i></i></div>
        <div class="font14 mat8">购<br/>物<br/>车</div>
    </a>
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
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/5" title="购物指南">购物指南</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/6" title="支付方式">支付方式</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/7" title="常见问题">常见问题</a>
                    </li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>配送方式</h3>
                <ul>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/8" title="配送时间及运费">配送时间及运费</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/9" title="验货与签收">验货与签收</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/10" title="订单查询">订单查询</a>
                    </li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>支付方式</h3>
                <ul>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/17" title="货到付款">货到付款</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/18" title="在线支付">在线支付</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/19" title="邮局汇款">邮局汇款</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/20" title="公司转账">公司转账</a>
                    </li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>售后服务</h3>
                <ul>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/11" title="售后政策">售后政策</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/12" title="退货说明">退货说明</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/13" title="取消订单">取消订单</a>
                    </li>
                </ul>
            </div>
            <div class="item_1 fl">
                <h3>关于我们</h3>
                <ul>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/14" title="公司简介">公司简介</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/15" title="联系我们">联系我们</a>
                    </li>
                    <li>
                        <a href="http://www.phpshe.com/demo/phpshe/article/16" title="诚聘英才">诚聘英才</a>
                    </li>
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
        Copyright <span class="num">©</span> 2008-2018 简好网络 All Rights Reserved 豫ICP备17013559号-1 &nbsp; Powered by
        <a href="http://www.phpshe.com" target="_blank" title="PHPSHE商城系统">phpshe1.7</a>
    </div>
</div>
<div style="position:relative">
    <span style="background:url('http://www.phpshe.com/template/default/index/images/phone_close.png') no-repeat; width:14px; height:14px; position:absolute; right:18px; top:10px"
          onclick='$("#phone_html").remove()'></span>
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
</body>
</html>