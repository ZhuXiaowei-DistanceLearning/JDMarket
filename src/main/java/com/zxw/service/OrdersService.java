package com.zxw.service;

import com.zxw.mapper.OrdersMapper;
import com.zxw.pojo.Orders;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Service
@Transactional
public class OrdersService {
    @Autowired
    private OrdersMapper ordersMapper;

    public List<Orders> getOrdersByUserId(int id) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Orders.class);
        detachedCriteria.add(Restrictions.eq("userId", id));
        List<Orders> list = ordersMapper.findByCriteria(detachedCriteria);
        return list;
    }

    public List<Orders> getOrdersByUserIdAndGoods(int id) {
        return null;
    }
}
