package com.zxw.service;

import com.zxw.mapper.GoodsMapper;
import com.zxw.pojo.Goods;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Service
@Transactional
public class GoodsService {

    @Autowired
    GoodsMapper goodsMapper;

    public List<Goods> queryByGoodsOrderByDate(Integer page, Integer rows, String sortBy, String desc, String search) {
        List<Goods> list = goodsMapper.findAll(page, rows, sortBy, desc, search);
        return list;
    }

    public List<Goods> queryByGoodsByCatelogOrderByDate(int rows, int catelogId) {
        DetachedCriteria forClass = DetachedCriteria.forClass(Goods.class);
        forClass.add(Restrictions.eq("catelogId", catelogId));
        forClass.add(Restrictions.eq("status", 1));
        forClass.addOrder(Order.desc("polishTime"));
        List<Goods> list = goodsMapper.findByCriteria(forClass, 0, rows);
        return list;
    }

    public List<Goods> queryGoodsByUserId(int id) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Goods.class);
        detachedCriteria.add(Restrictions.eq("userId", id));
        List<Goods> list = goodsMapper.findByCriteria(detachedCriteria);
        return list;
    }

    public Goods queryGoodsByPrimaryKey(Integer getGoodsId) {
            return goodsMapper.findById(getGoodsId);
    }

    public void addGoods(Goods goods, int i) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        goods.setStartTime(sdf.format(new Date()));
        goodsMapper.save(goods);
    }
}
