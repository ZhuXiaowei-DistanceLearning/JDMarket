package com.zxw.service;

import com.zxw.mapper.ArticleMapper;
import com.zxw.pojo.Article;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Map;

/**
 * Created by zxw on 2019/8/14.
 */
@Service
@Transactional
public class ArticleService {
    @Autowired
    private ArticleMapper articleMapper;


    public List<Article> findArticleByClassName(String className) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Article.class);
        detachedCriteria.add(Restrictions.eq("className", className));
        List<Article> list = articleMapper.findByCriteria(detachedCriteria);
        return list;
    }

    public List<Article> findAll(int i, int i1, String o, String o1, String o2, Map<String, Object> map) {
        List<Article> list = articleMapper.findAll(i, i1, o, o1, o2, map);
        return list;
    }

    public void add(Article model) {
        articleMapper.save(model);
    }

    public void update(Article model) {
        Article article = articleMapper.findById(model.getArticleId());
        article.setArticleName(model.getArticleName());
        article.setArticleText(model.getArticleText());
        articleMapper.update(article);
    }

    public void delete(int id) {
        Article id1 = articleMapper.findById(id);
        articleMapper.delete(id1);
    }

    public Article findById(int articleId) {
        Article article = articleMapper.findById(articleId);
        return article;
    }
}
