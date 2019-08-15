package com.zxw.service;

import com.zxw.mapper.CatelogMapper;
import com.zxw.pojo.Catelog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Service
@Transactional
public class CatelogService {

    @Autowired
    private CatelogMapper catelogMapper;

    public Catelog queryByPrimaryKey(Integer catelogId) {
        return catelogMapper.findById(catelogId);
    }

    public void updateCatelogNum(Integer catelogId, int i) {
        Catelog id = catelogMapper.findById(catelogId);
        id.setNumber(i);
        catelogMapper.update(id);
    }

    public void updateCatelogByGoods(Integer catelogId) {
        Catelog byId = catelogMapper.findById(catelogId);
        byId.setNumber(byId.getNumber() - 1);
        catelogMapper.update(byId);
    }

    public List<Catelog> findAll(int i, int i1, String o, String o1, String o2) {
        List<Catelog> list = catelogMapper.findAll(i, i1, o, o1, o2);
        return list;
    }

    public void add(Catelog model) {
        catelogMapper.save(model);
    }

    public void update(Catelog model) {
        Catelog id = catelogMapper.findById(model.getId());
        id.setName(model.getName());
        catelogMapper.update(id);
    }

    public void delete(int id) {
        Catelog catelog = catelogMapper.findById(id);
        if (catelog.getStatus() == 0) {
            catelog.setStatus((byte) 1);
            catelogMapper.update(catelog);
        } else {
            catelog.setStatus((byte) 0);
            catelogMapper.update(catelog);
        }
    }

    public Catelog findById(int id) {
        Catelog byId = catelogMapper.findById(id);
        return byId;
    }
}
