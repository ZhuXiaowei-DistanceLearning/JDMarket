<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>提交订单 - PHPSHE B2C商城系统演示站 - Powered by phpshe</title>
    <meta name="viewport" content="width=1200" />
    <meta name="keywords" content="免费商城系统,网上商城系统,多用户商城系统,分销商城系统,微信商城系统,商城源码,手机移动商城系统,b2b2c商城系统,网店系统,购物系统,php商城系统,phpshe,简好网络" />
    <meta name="description" content="PHPSHE网上商城系统具备电商零售业务所需的所有基本功能，以其安全稳定、简单易用、高效专业等优势赢得了用户的广泛好评，为用户提供了一个低成本、高效率的网上商城建设方案。" />
    <meta name="viewport" content="width=1200" />
    <link rel="shortcut icon" type="image/ico" href="http://www.phpshe.com/demo/phpshe/favicon.ico">
    <link type="text/css" rel="stylesheet" href="http://www.phpshe.com/demo/phpshe/template/default/index/css/style.css" />
    <script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/jquery.js"></script>
    <script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/global.js"></script>
    <script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/arttpl.js"></script>
    <script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/plugin/layer/layer.js"></script>
</head>
<body>
<div class="quick_menu">
    <div class="width980">
        <span class="fl">欢迎来到PHPSHE B2C商城系统演示站！</span>
        <div class="fr top_r">
            您好：<a href="http://www.phpshe.com/demo/phpshe/user.php" style="color:#DF002F;padding:0;border:0">zxcasdqwe</a>
            <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=do&act=logout" title="退出" style="padding-left:0;color:#999">[退出]</a>
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
            <div class="fl logo"><a href="http://www.phpshe.com/demo/phpshe/" title=""><img src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170509110941s.jpg" alt="" /></a></div>
            <div class="head_gwc"><a href="http://www.phpshe.com/demo/phpshe/cart"><div class="head_gwc_tb">购物车 <span class="num cred js_cartnum">2</span> 件　 ></div></a></div>
            <!--<p class="top_tel fr">15839823500</p>-->
            <div class="sear fr">
                <form method="get" action="http://www.phpshe.com/demo/phpshe/index.php">
                    <input type="hidden" name="mod" value="product" />
                    <input type="hidden" name="act" value="list" />
                    <div class="inputbg fl"><input type="text" name="keyword" value="" class="fl searinput c666" /></div>
                    <input type="submit" class="fl sear_btn" onclick="this.form.submit();return false;" value="搜 索" />
                </form>
                <div class="clear"></div>
                <div class="mat5 head_hot">
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=PHPSHE" title="PHPSHE" target="_blank" class="mar5 c666">PHPSHE</a>
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=B2C商城系统" title="B2C商城系统" target="_blank" class="mar5 c666">B2C商城系统</a>
                    <a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list&keyword=简好网络" title="简好网络" target="_blank" class="mar5 c666">简好网络</a>
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
            <h3 class="all"><a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list"><span></span>全部商品</a></h3>
            <div id="menu_html" style="display:none">
                <div class="fl_index">
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" title="女装 / 男装 / 内衣" class="i1" >女装 / 男装 / 内衣</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-3" title="女装"><strong>女装</strong> ></a></div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-4" title="连衣裙">|<span>连衣裙</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-5" title="衬衫">|<span>衬衫</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-6" title="裤子">|<span>裤子</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-7" title="半身裙">|<span>半身裙</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-8" title="男装"><strong>男装</strong> ></a></div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-9" title="T恤">|<span>T恤</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-10" title="衬衫">|<span>衬衫</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-11" title="牛仔裤">|<span>牛仔裤</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-12" title="休闲裤">|<span>休闲裤</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-13" title="卫衣">|<span>卫衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-14" title="夹克">|<span>夹克</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-15" title="内衣"><strong>内衣</strong> ></a></div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-20" title="情侣睡衣">|<span>情侣睡衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-16" title="长袖睡衣">|<span>长袖睡衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-17" title="睡裙">|<span>睡裙</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-18" title="无钢圈内衣">|<span>无钢圈内衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-19" title="真丝睡衣">|<span>真丝睡衣</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-21" title="袜子">|<span>袜子</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-22" title="内裤">|<span>内裤</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-2" title="鞋靴 / 箱包 / 配件" class="i2" >鞋靴 / 箱包 / 配件</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-23" title="鞋靴"><strong>鞋靴</strong> ></a></div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-24" title="女鞋">|<span>女鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-25" title="帆布鞋">|<span>帆布鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-26" title="小皮鞋">|<span>小皮鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-27" title="松糕鞋">|<span>松糕鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-28" title="男鞋">|<span>男鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-29" title="休闲鞋">|<span>休闲鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-30" title="板鞋">|<span>板鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-31" title="运动鞋">|<span>运动鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-32" title="乐福鞋">|<span>乐福鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-33" title="豆豆鞋">|<span>豆豆鞋</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-34" title="商务鞋">|<span>商务鞋</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-35" title="箱包"><strong>箱包</strong> ></a></div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-36" title="女包">|<span>女包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-37" title="双肩包">|<span>双肩包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-38" title="男包">|<span>男包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-39" title="旅行包">|<span>旅行包</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-40" title="钱包">|<span>钱包</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-41" title="配件"><strong>配件</strong> ></a></div>
                                <div class="fl fl_s2">
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-42" title="帽子">|<span>帽子</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-43" title="贝雷帽">|<span>贝雷帽</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-44" title="渔夫帽">|<span>渔夫帽</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-45" title="丝巾">|<span>丝巾</span></a>
                                    <a href="http://www.phpshe.com/demo/phpshe/product/list-46" title="披肩">|<span>披肩</span></a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-47" title="童装玩具 / 孕产 / 用品" class="i3" >童装玩具 / 孕产 / 用品</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-48" title="家电 / 数码 / 手机" class="i4" >家电 / 数码 / 手机</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-49" title="美妆 / 洗护 / 保健品" class="i5" >美妆 / 洗护 / 保健品</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-50" title="珠宝 / 眼镜 / 手表" class="i6" >珠宝 / 眼镜 / 手表</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-51" title="运动 / 户外 / 乐器" class="i7" >运动 / 户外 / 乐器</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/" title="首页">首页</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/brand/list" title="品牌专区" target="_self">品牌专区</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/quan/list" title="领券中心" target="_self">领券中心</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/zhekou" title="限时折扣" target="_self">限时折扣</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/pintuan" title="限时拼团" target="_self">限时拼团</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/" title="简好网络" target="_blank">简好网络</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/phpshe" title="购买授权" target="_blank">购买授权</a></h3></li>
    </ul>
</div>
<div class="clear"></div>
<div class="wgw_box">
    <div class="wgw_btn"></div>
    <div class="mat20 font16 c666">你的购物车里还没有商品</div>
    <div class="g_btn"><a href="http://www.phpshe.com/demo/phpshe/">去逛逛</a></div>
</div>
<div class="content">
    <form method="post" id="form">
        <div class="dd_box">
            <div class="liucheng">收货地址</div>
            <div class="order_addbox" style="padding:0 0 0 45px">
                <div class="dddz_l" id="useraddr_html">
                    <script type="text/html" id="useraddr_html_tpl">
                        {{each list as v k}}
                        <div class="addr_list js_radio" val="{{v.address_id}}" onclick="useraddr_select('{{v.address_id}}')">
                            <i></i><span class="cred">寄送至　</span>{{v.address_province}} {{v.address_city}} {{v.address_area}} {{v.address_text}} （{{v.user_tname}} 收） <span class="c999">{{v.user_phone}}</span>
                        </div>
                        {{/each}}
                    </script>
                </div>
                <div class="xzdz_btn"><a href="http://www.phpshe.com/demo/phpshe/index.php?mod=useraddr&act=add" onclick="return pe_dialog(this, '新增地址', 630, 380)">+ 新增收货地址</a></div>
                <div class="clear"></div>
            </div>
            <div class="xuxian mat20"></div>
            <div class="liucheng">支付方式</div>
            <div class="fkfs">
                <ul>
                    <li class="js_radio">
                        <label for="order_payment_balance">
                            <input type="radio" name="order_payment" value="balance" id="order_payment_balance" style="display:none" />
                            <img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/balance/logo.png" class="fl" />
                            <span class="fr mat5 mal10">余额：<span class="corg">0.0元</span></span>
                            <div class="clear"></div><i></i>
                        </label>
                    </li>
                    <li class="js_radio">
                        <label for="order_payment_alipay">
                            <input type="radio" name="order_payment" value="alipay" id="order_payment_alipay" style="display:none" />
                            <img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/alipay/logo.png" class="fl" />
                            <div class="clear"></div><i></i>
                        </label>
                    </li>
                    <li class="js_radio">
                        <label for="order_payment_wechat">
                            <input type="radio" name="order_payment" value="wechat" id="order_payment_wechat" style="display:none" />
                            <img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/wechat/logo.png" class="fl" />
                            <div class="clear"></div><i></i>
                        </label>
                    </li>
                    <li class="js_radio">
                        <label for="order_payment_bank">
                            <input type="radio" name="order_payment" value="bank" id="order_payment_bank" style="display:none" />
                            <img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/bank/logo.png" class="fl" />
                            <div class="clear"></div><i></i>
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
                        <tr class="js_cart" id="13">
                            <td class="hotimg1"><img src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/thumb_100x100_20180812173557u.jpg" /></td>
                            <td style="text-align:left;padding-left:0">
                                <a href="http://www.phpshe.com/demo/phpshe/product/4" target="_blank" class="cblue">phpshe测试商品秋冬纯色系带百搭两件套连衣裙女中长款v领背心裙</a>
                            </td>
                            <td style="text-align:left;"><div class="c888">女装尺码：L</div></td>
                            <td class="num">¥ 169</td>
                            <td>1</td>
                            <td>
                                <span class="num corg">¥ 169</span>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="fukuan">
                    <div class="fl" style="padding:5px 10px; width:600px;">
                        <div class="mat10">
                            订单留言：<input type="text" name="order_text" placeholder="请填写您的其他要求" class="ds_input" style="width:320px" />
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
                        <div class="mat15">本次使用：<input type="text" name="order_point_use" class="ds_input"> 积分</span><span class="c999 mal10">（积分余额：10个，可抵：0.1元）</span></div>
                    </div>
                    <div class="fk_tb">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>商品金额：</td>
                                <td width="80" class="num font14 cfen">¥ <span id="order_product_money">169.0</span></td>
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
                                <td class="num font18 cfen strong">¥ <span id="order_money">169.0</span></td>
                            </tr>
                        </table>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="ddtj_btn_box" style="background:none;">
                    <input type="hidden" name="address_id" />
                    <input type="hidden" name="pesubmit" />
                    <input type="button" class="ddtj_btn ddtj_btn1" id="order_btn" value="提交订单" />
                    <a href="http://www.phpshe.com/demo/phpshe/cart" class="fhgw fr">< 返回购物车</a>
                </div>
            </div>
        </div>
    </form>
    <script type="text/html" id="quan_duihuan_html">
        <form method="post" id="quan_form" style="text-align:center;margin-top:50px">
            <input type="text" name="quan_key" value="" placeholder="请输入10位优惠券码" class="inputall input200" />
            <input type="hidden" name="pesubmit" />
            <p class="mat30"><input type="button" value="兑 换" class="tjbtn" onclick="quan_duihuan()" /></p>
        </form>
    </script>
</div>
<script type="text/javascript">
    $(function(){
        cart_check();
        useraddr_list(0);
        //支付方式
        pe_select_radio('order_payment', $(":input[name='order_payment']:eq(0)").val());
        //选择优惠券
        $(":input[name='order_quan_id']").live("change", function(){
            $("#order_quan_money").html($(this).find("option:selected").attr("quan_money"));
            order_money();
        })
        if ($(":input[name='order_quan_id'] option").length > 1) {
            $(":input[name='order_quan_id'] option:eq(1)").attr("selected", "selected");
            $(":input[name='order_quan_id']").change();
        }
        //使用积分
        $(":input[name='order_point_use']").keyup(function(){
            var point = pe_num($(this).val(), 'floor');
            var point_money = '0.0';
            if (point > 10) {
                point = 10;
            }
            $(this).val(point);
            if (100 > 0) {
                point_money = pe_num(point/100, 'floor', 1, true);
            }
            $("#order_point_money").html(point_money);
            order_money();
        })
        $("#order_btn").click(function(){
            pe_submit("http://www.phpshe.com/demo/phpshe/index.php?mod=order&act=add&id=25", function(json){
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
        pe_getinfo("http://www.phpshe.com/demo/phpshe/index.php?mod=useraddr&id="+id, function(json){
            if (json.result) {
                $(":input[name='address_id']").val(json.info.address_id);
                pe_jshtml('useraddr_html', json);
                $("#useraddr_html .js_radio[val='"+json.info.address_id+"']").addClass("sel");
            }
        });
    }
    //选择收货地址
    function useraddr_select(id) {
        pe_getinfo("http://www.phpshe.com/demo/phpshe/index.php?mod=useraddr&id="+id, function(json){
            if (typeof(json.info.address_id) != 'undefined') {
                $(":input[name='address_id']").val(id);
                $("#useraddr_html .js_radio").removeClass("sel")
                $("#useraddr_html .js_radio[val='"+json.info.address_id+"']").addClass("sel");
            }
        });
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
