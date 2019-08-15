package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Article;
import com.zxw.service.ArticleService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zxw on 2019/8/14.
 */
@Controller
public class ArticleController extends BaseController<Article> {
    @Autowired
    private ArticleService articleService;

    public String getArticle() {
        Map<String, Object> map = new HashMap<>();
        map.put("className", getModel().getClassName());
        List<Article> visitors = articleService.findAll(getPage(), getRows(), null, null, null, map);
        ServletActionContext.getRequest().setAttribute("articleList", visitors);
        return "success";
    }

    public String addArticle() {
        Article model = getModel();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        model.setArticleAtime(sdf.format(new Date()));
        model.setArticleClicknum(0);
        model.setClassName("1");
        articleService.add(model);
        return "ok";
    }

    public String editArticle() {
        Article model = getModel();
        articleService.update(model);
        return "ok";
    }

    public String deleteArticle() {
        articleService.delete(getModel().getArticleId());
        writePageBean2Json("success");
        return NONE;
    }

    public String editPage() {
        Article article = articleService.findById(getModel().getArticleId());
        writePageBean2Json(article);
        return NONE;
    }
}
