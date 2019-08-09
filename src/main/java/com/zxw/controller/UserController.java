package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.*;
import com.zxw.service.*;
import com.zxw.util.MD5;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class UserController extends BaseController<User> {
    @Autowired
    private UserService userService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private ImageService imageService;
    @Autowired
    private PurseService purseService;
    @Autowired
    private FocusService focusService;
    @Autowired
    private OrdersService ordersService;

    /**
     * 注册验证
     *
     * @return
     */
    public String accountCheck() {
        boolean flag;
        String username = getModel().getUsername();
        String phone = getModel().getPhone();
        User user = userService.AccountCheck(username, phone);
        if (user == null) {
            flag = true;
            writePageBean2Json(flag);
            return NONE;
        } else {
            flag = false;
            writePageBean2Json(flag);
            return NONE;
        }
    }

    /**
     * 注册
     *
     * @return
     */
    public String register() {
        User user = getModel();
        if (user.getUsername() == null) {
            return NONE;
        } else {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            user.setCreateAt(sdf.format(new Date()));
            user.setPower(100);
            user.setGoodsNum(0);
            user.setStatus((byte) 1);
            user.setPassword(MD5.md5(user.getPassword()));
            userService.register(user);
            purseService.initPurse(user.getId());
            return "register";
        }
    }

    /**
     * 登录
     *
     * @return
     */
    public String login() {
        User user = getModel();
        User u = userService.login(user);
        if (u.getStatus() == 1) {
            ServletActionContext.getRequest().getSession().setAttribute("cur_user", u);
        }
        return u == null ? NONE : "login";
    }

    /**
     * 查询我发布的商品信息
     *
     * @return
     */
    public String queryBySellProduct() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        List<Orders> ordersList2 = new ArrayList<>();
        // 查询我卖的宝贝订单
        ordersList2 = ordersService.getOrdersByUserIdAndGoods(user.getId());
        for (int i = 0; i < ordersList2.size(); i++) {
            List<Image> list = imageService.queryByImagesByGoodsPrimaryKey(ordersList2.get(i).getGoods().getId());
            ordersList2.get(i).setImgUrl(list.get(0).getImgUrl());
        }
        long waitPay = ordersList2.stream().filter(e -> e.getOrderState() == 0).count();
        long waitSend = ordersList2.stream().filter(e -> e.getOrderState() == 1).count();
        long waitAccpt = ordersList2.stream().filter(e -> e.getOrderState() == 2).count();
        long finish = ordersList2.stream().filter(e -> e.getOrderState() == 3).count();
        ServletActionContext.getRequest().setAttribute("waitPay", waitPay);
        ServletActionContext.getRequest().setAttribute("waitSend", waitSend);
        ServletActionContext.getRequest().setAttribute("waitAccpt", waitAccpt);
        ServletActionContext.getRequest().setAttribute("finish", finish);
        ServletActionContext.getRequest().setAttribute("ordersOfSell", ordersList2);
        return "sellProductByUser";
    }

    /**
     * 购物车
     *
     * @return
     */
    public String cart() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        // 获取所有关注
        List<Focus> focusList = focusService.queryFocusByUserId(user.getId());
        // 存放商品和图片的信息
        List<GoodsExtend> goodsExtendList = new ArrayList<>();
        for (Focus focus : focusList) {
            GoodsExtend goodsExtend = new GoodsExtend();
            Goods goods = goodsService.queryGoodsByPrimaryKey(focus.getGoodsId());
            List<Image> imageList = imageService.queryByImagesByGoodsPrimaryKey(focus.getGoodsId());
            goodsExtend.setGoods(goods);
            goodsExtend.setImages(imageList);
            goodsExtendList.add(goodsExtend);
        }
        Purse purse = purseService.queryByUserId(user.getId());
        ServletActionContext.getRequest().setAttribute("goodsAndImage", goodsExtendList);
        ServletActionContext.getRequest().setAttribute("myPurse", purse);
        return "focus";
    }

    /**
     * 查询个人信息
     */
    public String basic() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Purse purse = purseService.queryByUserId(user.getId());
        ServletActionContext.getRequest().setAttribute("myPurse", purse);
        ServletActionContext.getRequest().setAttribute("user", user);
        return "basic";
    }

    /**
     * 修改个人信息
     */
    public String updateUserInfo() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        user.setQq(getModel().getQq());
        user.setUsername(getModel().getUsername());
        userService.updateUserInfo(user);
        ServletActionContext.getRequest().setAttribute("cur_user", user);
        return "updateUserInfo";
    }

    /**
     * 个人中心
     */
    public String home() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Purse purse = purseService.queryByUserId(user.getId());
        List<Orders> list = ordersService.getOrdersByUserId(user.getId());
        List<Orders> ordersList = ordersService.getOrdersByUserIdAndGoods(user.getId());
        ServletActionContext.getRequest().setAttribute("user", user);
        ServletActionContext.getRequest().setAttribute("purse", purse);
        ServletActionContext.getRequest().setAttribute("orderList", list);
        ServletActionContext.getRequest().setAttribute("mySell", ordersList);
        return "home";
    }

    /**
     * 退出
     */
    public String logout() {
        ServletActionContext.getRequest().getSession().invalidate();
        return "logout";
    }

}
