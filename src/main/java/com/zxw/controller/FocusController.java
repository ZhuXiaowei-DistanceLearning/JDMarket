package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Focus;
import com.zxw.pojo.User;
import com.zxw.service.FocusService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class FocusController extends BaseController<Focus> {
    @Autowired
    private FocusService focusService;

    /**
     * 添加购物车
     */
    public String addCart() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        if (user == null) {
            writePageBean2Json("error");
            return NONE;
        } else {
            Focus focus = focusService.queryFocusByUserAndFocus(user.getId(), getModel().getGoodsId());
            if (focus != null) {
                writePageBean2Json("repeat");
            } else {
                focusService.addFocusByUserIdAndId(getModel().getGoodsId(), user.getId());
                writePageBean2Json("success");
            }
            return NONE;
        }
    }

    /**
     * 删除购物车
     */
    public String clearCart() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        focusService.deleteFocusByUserIdAndGoodsId(getModel().getGoodsId(), user.getId());
        return "clearCart";
    }

}
