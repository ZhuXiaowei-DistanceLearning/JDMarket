<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<div class="nav">
    <ul>
        <li class="sel" style="width:228px; position:relative;z-index:999" id="menu_nav">
            <h3 class="all"><a href="http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=list"><span></span>全部商品</a>
            </h3>
            <div id="menu_html" style="display:none">
                <div class="fl_index">
                    <div class="fenlei_li ">
                        <div class="fenlei_h3">
                            <a href="http://www.phpshe.com/demo/phpshe/product/list-1" title="女装 / 男装 / 内衣" class="i1">女装
                                / 男装 / 内衣</a>
                            <i class="b_right"></i>
                        </div>
                        <div class="js_right" style="display:none;">
                            <div class="fl_s">
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-3"
                                                         title="女装"><strong>女装</strong> ></a></div>
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
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-8"
                                                         title="男装"><strong>男装</strong> ></a></div>
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
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-15"
                                                         title="内衣"><strong>内衣</strong> ></a></div>
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
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-23"
                                                         title="鞋靴"><strong>鞋靴</strong> ></a></div>
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
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-35"
                                                         title="箱包"><strong>箱包</strong> ></a></div>
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
                                <div class="fl fl_s1"><a href="http://www.phpshe.com/demo/phpshe/product/list-41"
                                                         title="配件"><strong>配件</strong> ></a></div>
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
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/" title="首页">首页</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/brand/list" title="品牌专区" target="_self">品牌专区</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/quan/list" title="领券中心" target="_self">领券中心</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/zhekou" title="限时折扣" target="_self">限时折扣</a></h3>
        </li>
        <li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/pintuan" title="限时拼团" target="_self">限时拼团</a></h3>
        </li>
        <li><h3><a href="http://www.phpshe.com/" title="简好网络" target="_blank">简好网络</a></h3></li>
        <li><h3><a href="http://www.phpshe.com/phpshe" title="购买授权" target="_blank">购买授权</a></h3></li>
    </ul>
</div>
<div class="clear"></div>
</body>
