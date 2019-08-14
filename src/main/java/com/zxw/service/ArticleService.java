package com.zxw.service;

import com.zxw.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
 * Created by zxw on 2019/8/14.
 */
@Service
@Transactional
public class ArticleService {
    @Autowired
    private ArticleMapper articleMapper;

    public void addTodayPeople(int id) {
    }
}
