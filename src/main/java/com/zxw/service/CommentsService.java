package com.zxw.service;

import com.zxw.mapper.CommentsMapper;
import com.zxw.pojo.Comments;
import org.hibernate.criterion.DetachedCriteria;
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
public class CommentsService {
    @Autowired
    private CommentsMapper commentsMapper;

    public Comments queryCommentByGoodsAndUserId(int id, Integer goodsId) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Comments.class);
        detachedCriteria.add(Restrictions.eq("userId", id));
        detachedCriteria.add(Restrictions.eq("goodsId", goodsId));
        List<Comments> list = commentsMapper.findByCriteria(detachedCriteria);
        return list.size() >= 1 ? list.get(0) : null;
    }

    public List<Comments> queryCommentByGoodsId(Integer goodsId) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Comments.class);
        detachedCriteria.add(Restrictions.eq("goodsId", goodsId));
        List<Comments> list = commentsMapper.findByCriteria(detachedCriteria);
        return list;
    }

    public void addComment(int id, Comments model) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        model.setUserId(id);
        model.setCreateAt(sdf.format(new Date()));
        commentsMapper.save(model);
    }
}
