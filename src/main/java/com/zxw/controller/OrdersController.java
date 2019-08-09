package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.*;
import com.zxw.service.*;
import com.zxw.vo.PageResult;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class OrdersController extends BaseController<Orders> {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private PurseService purseService;
    @Autowired
    private CatelogService catelogService;
    @Autowired
    private ImageService imageService;
    @Autowired
    private UserAddrService userAddrService;

    /**
     * 我的订单
     *
     * @return
     */
    public String myOrders() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        List<Orders> ordersList1 = new ArrayList<>();
        // 查询已买到的宝贝
        ordersList1 = ordersService.getOrdersByUserId(user.getId());
        for (int i = 0; i < ordersList1.size(); i++) {
            List<Image> list = imageService.queryByImagesByGoodsPrimaryKey(ordersList1.get(i).getGoods().getId());
            ordersList1.get(i).setImgUrl(list.get(0).getImgUrl());
        }
        /*0:代付款1:待发货2:待收货3:已完成*/
        long waitPay = ordersList1.stream().filter(e -> e.getOrderState() == 0).count();
        long waitSend = ordersList1.stream().filter(e -> e.getOrderState() == 1).count();
        long waitAccpt = ordersList1.stream().filter(e -> e.getOrderState() == 2).count();
        long finish = ordersList1.stream().filter(e -> e.getOrderState() == 3).count();
        ServletActionContext.getRequest().setAttribute("waitPay", waitPay);
        ServletActionContext.getRequest().setAttribute("waitSend", waitSend);
        ServletActionContext.getRequest().setAttribute("waitAccpt", waitAccpt);
        ServletActionContext.getRequest().setAttribute("finish", finish);
        ServletActionContext.getRequest().setAttribute("orders", ordersList1);
        return "myOrders";
    }

    /**
     * 添加订单
     *
     * @return
     */
    public String addOrder() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Orders orders = getModel();
        orders.setUserId(user.getId());
        orders.setOrderState(1);
        orders.setOrderDate(sdf.format(new Date()));
        Goods goods = new Goods();
        // 更新商品状态，已被购买，下架
        Goods buyGoods = goodsService.buyGoods(orders.getGoodsId());
        // 更新商品目录下商品数量
        catelogService.updateCatelogByGoods(buyGoods.getCatelogId());
        // 创建订单信息
        ordersService.addOrders(orders);
        Double balance = orders.getOrderPrice();
        // 更新用户余额
        purseService.updatePurseOfDel(user.getId(), balance);
        return "addOrder";
    }

    /**
     * 发货
     *
     * @return
     */
    public String deliver() {
        ordersService.updateDeliverInfo(getModel().getGoodsId());
        return "updateGoodsInfo";
    }

    /**
     * 商品列表
     *
     * @return
     */
    public String ordersList() {
        PageResult list = ordersService.findAll(getiPage().getPage(), getiPage().getRows(), null, null, null);
        ServletActionContext.getRequest().getSession().setAttribute("ordersGrid", list);
        return "ordersList";
    }

    /**
     * 订单信息
     * 地址信息
     * 用户信息
     * 钱包信息
     * 商品信息
     * 生成订单
     */
    public String orderInfo() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Map<String, Object> map = new HashMap<>();
        map.put("userId", user.getId());
        List<Useraddr> useraddrList = userAddrService.findAll(0, 10, null, null, null, map);
        Purse purse = purseService.queryByUserId(user.getId());
        Goods goods = goodsService.queryGoodsByPrimaryKey(getModel().getGoodsId());
        List<Image> imageList = imageService.queryByImagesByGoodsPrimaryKey(goods.getId());
        GoodsExtend goodsExtend = new GoodsExtend();
        goodsExtend.setImages(imageList);
        goodsExtend.setGoods(goods);
        ServletActionContext.getRequest().setAttribute("user", user);
        ServletActionContext.getRequest().setAttribute("purse", purse);
        ServletActionContext.getRequest().setAttribute("useraddrList", useraddrList);
        ServletActionContext.getRequest().setAttribute("goodsExtend", goodsExtend);
        return "orderInfo";
    }
}
