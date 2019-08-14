package com.zxw.filter;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.zxw.pojo.Admin;
import com.zxw.pojo.User;
import org.apache.struts2.ServletActionContext;

/**
 * Created by zxw on 2019/8/5.
 */
public class MyFilter extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        String pathInfo = ServletActionContext.getRequest().getServletPath();
        if (pathInfo.contains("login") || pathInfo.contains("register") || pathInfo.contains("queryGoodsById") || pathInfo.contains("goods_homeGoods") || pathInfo.contains("goods_queryGoodsByCatelogId") || pathInfo.contains("goods_queryBySearch") || pathInfo.contains("admin_login")) {
            return invocation.invoke();
        } else {
            User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
            Admin admin = (Admin) ServletActionContext.getRequest().getSession().getAttribute("admin");
            if (user == null) {
                if (admin != null) {
                    return invocation.invoke();
                }
                return "loginPage";
            } else {
                return invocation.invoke();
            }
        }
    }
}
