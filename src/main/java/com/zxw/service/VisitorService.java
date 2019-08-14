package com.zxw.service;

import com.zxw.mapper.VisitorMapper;
import com.zxw.pojo.Visitor;
import com.zxw.vo.PeopleCount;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by zxw on 2019/8/14.
 */
@Service
@Transactional
public class VisitorService {
    @Autowired
    private VisitorMapper visitorMapper;

    public void addTodayPeople(int userId) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Visitor visitorByUserId = findVisitorByUserId(userId, sdf.format(new Date()));
        if (visitorByUserId == null) {
            Visitor visitor = new Visitor();
            visitor.setUserId(userId);
            visitor.setTime(sdf.format(new Date()));
            visitorMapper.save(visitor);
        }
    }

    public Visitor findVisitorByUserId(int userId, String format) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Visitor.class);
        detachedCriteria.add(Restrictions.eq("userId", userId));
        detachedCriteria.add(Restrictions.eq("time", format));
        List<Visitor> list = visitorMapper.findByCriteria(detachedCriteria);
        return list.size() >= 1 ? list.get(0) : null;
    }

    public List<PeopleCount> findAllVisitorByDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date d = new Date();
        Date date = new Date(d.getYear(), d.getMonth(), d.getDate() - 6);
        String format = sdf.format(date);
        String s = sdf.format(d);
        List list = visitorMapper.countPeople("time", format, s);
        List<PeopleCount> peopleCounts = new ArrayList<>();
        for (Object o : list) {
            PeopleCount p = new PeopleCount();
            Object[] arr = (Object[]) o;
            p.setTime((String) arr[0]);
            Long along = Long.valueOf(arr[1].toString());
            Integer integer = Integer.valueOf(arr[1].toString());
            p.setRows(Integer.valueOf(arr[1].toString()));
            peopleCounts.add(p);
        }
        return peopleCounts;
    }
}
