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
<div class="content" style="padding-top:0">
    <div class="now mat10"><a href='<%=basePath%>/goods_homeGoods'>首页</a> >
        <a href='<%=basePath%>/catelog_goods?id=${goodsExtend.goods.catelog.id}'>
            ${goodsExtend.goods.catelog.name}>
        </a>
        ${goodsExtend.goods.name}
    </div>
    <div class="pro_box">
        <div class="pro_left">
            <div id="duotu_html">
                <div class="proimg jqzoom MagnifierMain">
                    <img src="<%=basePath%>/upload/${goodsExtend.images[0].imgUrl}"
                         jqimg="<%=basePath%>/upload/${goodsExtend.images[0].imgUrl}"
                         width="381" height="381"/>
                </div>
                <div class="clear"></div>
                <span class="spe_leftBtn" style="display:none">&lt;</span>
                <span class="spe_rightBtn" style="display:none">&gt;</span>
                <div class="spec-items">
                    <ul>
                        <c:forEach items="${goodsExtend.images}" var="item">
                            <li><img
                                    src="<%=basePath%>/upload/${item.imgUrl}"
                                    bigimg="<%=basePath%>/upload/${item.imgUrl}"/>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
            <a href="javascript:collect_add('3');" class="sctj fl">收藏商品</a>
            <div class="clear"></div>
        </div>
        <div class="fl proinfo">
            <h3>${goodsExtend.goods.name}</h3>
            <div class="proinfo_box">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="50">原价</td>
                        <td>
						<span class="jg_price">
							<span class="font18">¥</span>
							<span style="text-decoration:line-through;">${goodsExtend.goods.realPrice}</span>
						</span>
                        </td>
                    </tr>
                    <tr>
                        <td width="50">折扣</td>
                        <td>
						<span class="jg_price">
							<span class="font18">¥</span>
							<span id="product_money">${goodsExtend.goods.price}</span>
						</span>
                        </td>
                    </tr>
                </table>
                <div class="pro_ewm"><img
                        src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/fc22ad0b303c52fd3fd94a64f1958b76.png"/>
                </div>
            </div>
            <div class="xl_box">
                <span class="xl_li">运费：包邮</span>
                <span class="xl_li" style="border-right:0;">奖励：<span class="cgreen">0</span> 积分</span>
                <div class="clear"></div>
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="mat10">
                <!--<tr>
        <td>评分</td>
        <td>
            <div class="fl mat2"><img src='http://www.phpshe.com/demo/phpshe/include/plugin/raty/images/star-on.png' title='1' style='width:16px;margin-right:1px' /><img src='http://www.phpshe.com/demo/phpshe/include/plugin/raty/images/star-on.png' title='2' style='width:16px;margin-right:1px' /><img src='http://www.phpshe.com/demo/phpshe/include/plugin/raty/images/star-on.png' title='3' style='width:16px;margin-right:1px' /><img src='http://www.phpshe.com/demo/phpshe/include/plugin/raty/images/star-on.png' title='4' style='width:16px;margin-right:1px' /><img src='http://www.phpshe.com/demo/phpshe/include/plugin/raty/images/star-half.png' title='5' style='width:16px;margin-right:1px' /></div>
            <span class="fl mal5 corg">4.3 分</span>
            <span class="fl mal10 c888">3人评价</span>
            <div class="clear"></div>
        </td>
    </tr>-->
                <c:if test="${goodsExtend.goods.status==1}">
                    <tr>
                        <td>
                            <div class="mab5">发布于</div>
                        </td>
                        <td class="js_rule">
                            <span rule_id="1" ruledata_id="1"
                                  class="js_ruledata prodata_span">${goodsExtend.goods.startTime}</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="mab5">最近更新时间</div>
                        </td>
                        <td class="js_rule">
                            <span rule_id="1" ruledata_id="1"
                                  class="js_ruledata prodata_span">${goodsExtend.goods.polishTime}</span>
                        </td>
                    </tr>
                    <tr>
                        <td>数量</td>
                        <td class="shuliang">
                            <input type="hidden" name="product_guid" value=""/>
                                <%--<span class="img1" onclick="pe_numchange('product_num', '-', 1);"><i></i></span>--%>
                            <span class="img1"><i></i></span>
                            <div class="shuliang_box"><input type="text" name="product_num" value="1"/></div>
                                <%--<span class="img2" onclick="pe_numchange('product_num', '+', 999999);"><i></i></span>--%>
                            <span class="img2"><i></i></span>
                                <%--<span class="fl c999 mal10 mat3 font12">库存<span id="product_num">295</span>件</span>--%>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <c:if test="${user!=null}">
                                <a href="<%=basePath%>/orders_orderInfo?goodsId=${goodsExtend.goods.id}"
                                   class="fl ljgm">立即购买</a>
                            </c:if>
                            <c:if test="${user==null}">
                                <a href="<%=basePath%>/page_common_user_login" class="fl ljgm">立即购买</a>
                            </c:if>
                            <a onclick="addMyStart(${goodsExtend.goods.id})" class="fl jiagwc"><i></i>加入收藏</a>
                            <div class="clear"></div>
                        </td>
                    </tr>
                </c:if>
                <c:if test="${goodsExtend.goods.status==0}">
                    <tr>
                        <td>
                            <div class="mab5">商品下架时间</div>
                        </td>
                        <td class="js_rule">
                            <span rule_id="1" ruledata_id="1"
                                  class="js_ruledata prodata_span">${goodsExtend.goods.endTime}</span>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <c:if test=""></c:if>
                            <a class="fl ljgm" disabled>该商品已下架</a>
                            <div class="clear"></div>
                        </td>
                    </tr>
                </c:if>
            </table>
            <div class="clear"></div>
        </div>
        <div class="proview_tj">
            <div class="proview_tjtt">
                <i></i>
                <span>新品推荐</span>
            </div>
            <c:forEach items="${newGoodsRecommend}" var="item">
                <div class="mat10">
                    <a href="<%=basePath%>/goods_queryGoodsById?id=${item.goods.id}"
                       target="_blank"><img
                            src="<%=basePath%>/upload/${item.images[0].imgUrl}" width="180" height="180"
                            class="js_imgload"/></a>
                </div>
                <p class="proview_tjname mat5"><a href="<%=basePath%>/goods_queryGoodsById?id=${item.goods.id}"
                                                  target="_blank">${item.goods.name}</a>
                </p>
                <p class="money3 fl">¥${item.goods.realPrice}</p>
                <div class="c999 fr font12">更新时间:${item.goods.polishTime}</div>
                <div class="clear"></div>
            </c:forEach>
        </div>
        <div class="clear"></div>
    </div>
    <div style="margin-top:20px;"></div>
    <div class="fr xiangqing">
        <div class="caidan1" id="js_menu">
            <ul class="fl">
                <li class="sel"><a href="javascript:;">商品详情</a><i></i></li>
                <li><a href="javascript:;">用户提问 <span class="corg">(${fn:length(commentsList)})</span></a><i></i></li>
            </ul>
            <div class="clear"></div>
        </div>
        <!--详情 Start-->
        <div class="promain js_menuhtml">
            ${goodsExtend.goods.describle}
        </div>
        <!--详情 end-->
        <!--评论 Start-->
        <div class="promain js_menuhtml" style="display:none">
            <div class="plrate">
                <div class="plrate_l fl">
                    <h3>提问:</h3>
                    <form action="<%=basePath%>/comment_addComment" method="post">
                        <input type="text" style="margin-left: 90px" name="content"/>
                        <input type="hidden" style="margin-left: 90px" name="goodsId" value="${goodsExtend.goods.id}"/>
                        <input type="hidden" style="margin-left: 90px" name="cid" value=""/>
                        <input type="submit" style="margin-left: 90px;margin-top: 10px" value="提交"/>
                    </form>
                </div>
            </div>
            <div class="clear"></div>
            <div class="plmenu" id="js_commentmenu">
                <p href="javascript:;" val="0" class="sel"><label>用户提问列表</label></p>
                <%-- <a href="javascript:;" val="0" class="sel"><label><input name="comment_rate" type="radio"
                                                                          class="inputfix mar5">全部(3)</label></a>
                 <a href="javascript:;" val="hao"><label><input name="comment_rate" type="radio" class="inputfix mar5">好评(2)</label></a>
                 <a href="javascript:;" val="zhong"><label><input name="comment_rate" type="radio" class="inputfix mar5">中评(1)</label></a>
                 <a href="javascript:;" val="cha"><label><input name="comment_rate" type="radio" class="inputfix mar5">差评(0)</label></a>--%>
            </div>
            <div id="js_commenthtml" class="promain">
                <c:forEach items="${commentsList}" var="item" varStatus="i">
                    <div class="pj_box">
                        <div class="pj_tx">
                            <p>用户:${item.user.username}</p></div>
                        <div class="pj_r">
                            <ul class="plmain_ul">
                                <li>提问：</li>
                            </ul>
                            <div class="pingjia font14">${item.content}
                                <a
                                        style="display: inline-block;color: blue;margin-left: 50px"
                                        id="reply${i.index+1}" onclick="reply(${i.index+1})">回复</a>
                                <form action="<%=basePath%>/comment_addComment" style="display: none;margin-left: 20px;"
                                      id="replyInput${i.index+1}">
                                    <input type="text" name="content"/>
                                    <input type="hidden" name="goodsId" value="${goodsExtend.goods.id}"/>
                                    <input type="hidden" name="cid" value="${item.id}"/>
                                    <button onclick="commentReply(${i.index+1})">提交</button>
                                </form>
                            </div>
                            <div class="pj_bigimg"></div>
                            <c:forEach items="${item.comments}" var="comment">
                                <div class="mjhf">
                                    用户${comment.user.username}回复：${comment.content}
                                </div>
                            </c:forEach>
                        </div>
                        <div class="clear"></div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<!--评论 End-->
</div>
</div>
<script type="text/javascript">
    var menu_top = $("#js_menu").offset().top;
    template.config('escape', false);
    $(function () {
        MagnifierF("duotu_html");
        $(".jqzoom").jqueryzoom();
        $(":input[name='product_num']").keyup(function () {
            if (!$(this).val().match(/^[1-9]+[0-9]*$/)) $(this).val(1);
        })
        pe_jstime("#huodong_time", '1565229867', 'html');
        //标签切换
        $("#js_menu").find("li").click(function () {
            var num = $(this).index();
            $("#js_menu li").removeClass("sel").eq(num).addClass("sel");
            $(".js_menuhtml").hide().eq(num).show();
            if (num == 1) {
                comment_page(1);
            }
            else if (num == 2) {
                ask_page(1);
            }
            else {
                $("body,html").scrollTop(menu_top);
            }
        })
        //评价切换
        $("#js_commentmenu").find("a").click(function () {
            $("#js_commentmenu").find("a").removeClass("sel");
            $(this).addClass("sel");
            comment_page(1);
        })
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
        //规格选择
        prodata_check();
        $(".js_ruledata").click(function () {
            if ($(this).hasClass("prodata_lock")) return;
            if ($(this).hasClass("prodata_sel")) {
                $(this).removeClass("prodata_sel");
            }
            else {
                $(this).parent(".js_rule").find(".js_ruledata").removeClass("prodata_sel");
                $(this).addClass("prodata_sel");
            }
            prodata_check();
        })
    })
    var videoObject = {
        container: '#product_video',//“#”代表容器的ID，“.”或“”代表容器的class
        variable: 'player',//该属性必需设置，值等于下面的new chplayer()的对象
        flashplayer: false,//如果强制使用flashplayer则设置成true
        poster: "http://www.phpshe.com/demo/phpshe/data/attachment/2018-08/20180812173352k.jpg",
        video: "http://www.phpshe.com/demo/phpshe/"//视频地址
    };
    var player = new ckplayer(videoObject);
    //收藏商品
    function collect_add(id) {
        pe_getinfo("http://www.phpshe.com/demo/phpshe/index.php?mod=product&act=collect&id=" + id, function (json) {
            $("#js_collectnum").html('（' + json.num + '）');
        });
    }
    //评价翻页
    function comment_page(page) {
        var star = $("#js_commentmenu").find(".sel").attr("val");
        pe_getinfo("http://www.phpshe.com/demo/phpshe/index.php?mod=comment&id=3&star=" + star + "&page=" + page, function (json) {
            $("#js_commenthtml").html(template('js_commenttpl', json));
            $("body,html").scrollTop(menu_top);
        });
    }
    //评价跳转
    function comment_jump() {
        $("#js_menu").find("li").eq(1).click();
    }
    //立即购买/加入购物车按钮
    function buy_btn(act, id) {
        if (act == 'add') {
            $.ajax({
                url: "<%=basePath%>focus_addCart",
                data: {'goodsId': id},
                type: "post",
                success: function () {
                    alert(data);
                    if (data == "success") {
                        layer.open({
                            type: 1,
                            title: false,
                            closeBtn: 1,
                            id: 'order_add',
                            content: '<div class="gw"><p>商品已加入购物车！</p><a class="gw2" href="<%=basePath%>">去结算</a><a class="gw1" href="javascript:layer.closeAll();">继续购物</a><div class="clear"></div></div>'
                        });
                    } else if (data == "error") {
                        window.location.href = "page_common_user_login";
                    }
                },
                error: function (data) {
                    if (data.responseText == "success") {
                        layer.open({
                            type: 1,
                            title: false,
                            closeBtn: 1,
                            id: 'order_add',
                            content: '<div class="gw"><p>商品已加入购物车！</p><a class="gw2" href="<%=basePath%>">去结算</a><a class="gw1" href="javascript:layer.closeAll();">继续购物</a><div class="clear"></div></div>'
                        });
                    } else if (data.responseText == "error") {
                        window.location.href = "page_common_user_login";
                    }
                }
            })
        } else if (act == 'buy') {

        }
    }
    //规格检测
    function prodata_check() {
        var prodata_list = [{
            "product_guid": "8",
            "product_ruleid": "1",
            "product_money": "128.0",
            "product_mmoney": "0.0",
            "product_num": "97"
        }, {
            "product_guid": "9",
            "product_ruleid": "2",
            "product_money": "128.0",
            "product_mmoney": "0.0",
            "product_num": "99"
        }, {
            "product_guid": "10",
            "product_ruleid": "3",
            "product_money": "128.0",
            "product_mmoney": "0.0",
            "product_num": "99"
        }];
        $(".js_ruledata").each(function () {
            var sel_arr = new Array();
            var rule_id = $(this).attr("rule_id");
            var ruledata_id = $(this).attr("ruledata_id");
            sel_arr.push(ruledata_id);
            $(".prodata_sel[rule_id!=" + rule_id + "]").each(function () {
                sel_arr.push($(this).attr("ruledata_id"));
            })
            for (var i in prodata_list) {
                var match_num = 0;
                var product_ruleid = prodata_list[i]['product_ruleid'].split(',');
                for (id in sel_arr) {
                    if (jQuery.inArray(sel_arr[id], product_ruleid) >= 0) match_num++;
                }
                if (match_num == sel_arr.length) {
                    var match_result = true;
                    break;
                }
                else {
                    var match_result = false;
                }
            }
            if (match_result) {
                $(this).removeClass('prodata_lock');
            }
            else {
                $(this).addClass('prodata_lock');
            }
        })
        //更新选中规格组合
        var prodata_sel = new Array();
        $(".prodata_sel").each(function () {
            prodata_sel.push($(this).attr("ruledata_id"));
        })
        var product_ruleid = prodata_sel.join(',');
        $(":input[name='product_ruleid']").val('');
        //循环规格选中的有效列表
        for (var i in prodata_list) {
            //如果选中规格组合完成
            if (prodata_list[i]['product_ruleid'] == product_ruleid) {
                $(":input[name='product_guid']").val(prodata_list[i]['product_guid']);
                $("#product_money").html(prodata_list[i]['product_money']);
                $("#product_mmoney").html(prodata_list[i]['product_mmoney']);
                $("#product_num").html(prodata_list[i]['product_num']);
            }
        }
    }
</script>
<div class="clear"></div>
<div class="width980">
</div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/index_footer.jsp"></jsp:include>
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

<script type="text/javascript">
    $("#reply").click(function () {
        $("#replyInput").css("display", "block");
    })
    function reply(data) {
        let len = $(".pj_box").length;
        for (let i = 1; i <= len; i++) {
            $("#replyInput" + i).hide();
        }
        $("#replyInput" + data).show();
    }

    function commentReply(data) {
        $("#replyInput" + data).submit();
    }

    function addMyStart(data) {
        $.ajax({
            url: "<%=basePath%>/focus_addCart?goodsId="+data,
            type: "get",
            success: function (data) {
                alert(data)
            },
            error: function (data) {
                if(data.responseText=="repeat"){
                    alert("已添加收藏，请勿重复添加")
                }else if(data.responseText=="success"){
                    alert("添加收藏成功")
                }
            }
        })
    }
</script>
</body>
</html>