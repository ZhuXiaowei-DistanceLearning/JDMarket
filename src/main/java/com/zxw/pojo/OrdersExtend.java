package com.zxw.pojo;

import java.util.List;

/**
 * Created by zxw on 2019/8/9.
 */
public class OrdersExtend {
    private List<Image> imageList;
    private Orders orders;

    public List<Image> getImageList() {
        return imageList;
    }

    public void setImageList(List<Image> imageList) {
        this.imageList = imageList;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
