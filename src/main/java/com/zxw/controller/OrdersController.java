package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Orders;
import com.zxw.pojo.User;
import com.zxw.service.OrdersService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class OrdersController extends BaseController<Orders> {
    @Autowired
    private OrdersService ordersService;

    public String myOrders() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        List<Orders> ordersList1 = new ArrayList<>();
        List<Orders> ordersList2 = new ArrayList<>();
        ordersList1 = ordersService.getOrdersByUserId(user.getId());
        ordersList1 = ordersService.getOrdersByUserIdAndGoods(user.getId());

        return "myOrders";
    }
}
