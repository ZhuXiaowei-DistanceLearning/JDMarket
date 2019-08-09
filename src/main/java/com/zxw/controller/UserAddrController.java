package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.User;
import com.zxw.pojo.Useraddr;
import com.zxw.service.UserAddrService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zxw on 2019/8/9.
 */
@Controller
public class UserAddrController extends BaseController<Useraddr> {
    @Autowired
    private UserAddrService userAddrService;

    public String findAll() {
        // 线程不安全，1.8开始底层使用链表,红黑树,
        // HashSet在HashMap的基础上实现
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Map<String, Object> map = new HashMap<>();
        map.put("userId", user.getId());
        List<Useraddr> list = userAddrService.findAll(getPage(), getRows(), null, null, null, map);
        ServletActionContext.getRequest().setAttribute("addrList", list);
        return "findAll";
    }

    public String addUserAddr() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        getModel().setUserId(user.getId());
        userAddrService.addUserAddr(getModel());
        return "addAddr";
    }

    /**
     * 更改地址
     */
    public String update() {
        userAddrService.update(getModel());
        return "addAddr";
    }

    /**
     * 删除地址
     * @return
     */
    public String delete() {
        userAddrService.delete(getModel().getAddressId());
        return "addAddr";
    }
}
