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
    <script type="text/javascript" src="./js/jquery.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
    <link rel="stylesheet" href="<%=basePath%>css/fileinput.min.css">
    <script type="text/javascript" src="<%=basePath%>js/fileinput.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/zh.js"></script>
</head>
<body style="position: relative">
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main">
        <div class="hy_tt">
            <a href="javascript:;" class="sel">发布闲置<i></i></a>
        </div>
        <div class="hy_table">
            <form id="goodsForm" method="post" enctype="multipart/form-data">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="text-align:right;" width="150">商品名称：</td>
                        <td>
                            <input type="text" name="name" value="${goodsExtend.goods.name}"
                                   class="inputall input200"/>
                            <span id="user_tname_show"></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">出售价格：</td>
                        <td>
                            <input type="text" name="price" value="${goodsExtend.goods.price}"
                                   class="inputall input200"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">原价：</td>
                        <td>
                            <input type="text" name="realPrice" value="${goodsExtend.goods.realPrice}"
                                   class="inputall input200"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">物品类别：</td>
                        <td>
                            <select class="inputall input200" name="catelogId" id="cat">
                                <option value="1">闲置数码</option>
                                <option value="2">校园代步</option>
                                <option value="3">电器日用</option>
                                <option value="4">图书教材</option>
                                <option value="5">美妆衣物</option>
                                <option value="6">运动棋牌</option>
                                <option value="7">票券小物</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">商品描述：</td>
                        <td>
                            <input type="textarea" name="describle" class="inputall input200"
                                   value="${goodsExtend.goods.describle}"/>
                        </td>
                    </tr>
                    <br/>
                    <hr/>
                    <tr>
                        <td style="text-align:right;">图片：</td>
                        <td>
                            <img src="<%=basePath%>upload/${goodsExtend.images[0].imgUrl}"
                                 style="width: 200px;height: 200px" id="img"/>
                            <br/>
                            <input type="file" id="fileUpload"/>
                            <input type="button" value="上传" id="upload"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="hidden" name="imgUrl" id="imgUrl" value="${goodsExtend.images[0].imgUrl}"/>
                            <input type="hidden" name="id" id="goodsId"value="${goodsExtend.goods.id}" />
                            <input type="hidden" name="imageId" value="${goodsExtend.images[0].id}" />
                            <input type="button" id="addOrEditGoods" value="提 交" class="tjbtn"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
</div>
<script type="text/javascript">
    $("#addUserAddr").click(function () {
        if ($("#province option:selected").text() != "" &&
            $("#city option:selected").text() != "" &&
            $("#area option:selected").text() != "") {
            $("#addressProvince").val($("#province option:selected").text());
            $("#addressCity").val($("#city option:selected").text());
            $("#addressText").val($("#area option:selected").text());
            $("#form").submit();
        }
    })
</script>
<script type="text/javascript" src="./js/province.js"></script>
<script type="text/javascript">
    let a = $("#cat").find("option[value='${goodsExtend.goods.catelogId}']");
    a.attr("selected", true);
    $("#upload").click(function () {
        let file = $('#fileUpload')[0].files[0];
        let formData = new FormData();
        formData.append("myfile", file);
        $.ajax({
            url: "<%=basePath%>/goods_uploadFile",
            type: "post",
            processData: false,
            contentType: false,
            data: formData,
            success: function (data) {
                $("#img").attr("src","<%=basePath%>/upload/"+data.imgUrl);
                $("#imgUrl").val(data.imgUrl)
            },
            error: function (data) {
                alert(data)
            }
        })
    })

    $("#addOrEditGoods").click(function(){
        $("#catelog").val($("#cat option:selected").val());
        if($("#goodsId").val()!=""){
            $("#goodsForm").attr("action","<%=basePath%>/goods_editMySell")
        }else{
            $("#goodsForm").attr("action","<%=basePath%>/goods_publishGoods")
        }
        $("#goodsForm").submit();
    })

</script>
</body>
</html>