<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/8
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
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
            <c:forEach items="${articleList}" var="item">
            <li>
                <a href="#" title=""
                   target="_blank">${item.articleName}</a><p>${item.articleAtime.substring(5)}</p>
            </li>
            </c:forEach>
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
</body>
<script type="text/javascript">

</script>
