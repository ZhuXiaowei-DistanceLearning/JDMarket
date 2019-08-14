package com.zxw.pojo;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Objects;

/**
 * Created by zxw on 2019/8/14.
 */
@Entity
public class Article {
    private int articleId;
    private String articleName;
    private String articleText;
    private int articleAtime;
    private int articleClicknum;
    private String className;

    @Id
    @Column(name = "article_id", nullable = false)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    public int getArticleId() {
        return articleId;
    }

    public void setArticleId(int articleId) {
        this.articleId = articleId;
    }

    @Basic
    @Column(name = "article_name", nullable = false, length = 100)
    public String getArticleName() {
        return articleName;
    }

    public void setArticleName(String articleName) {
        this.articleName = articleName;
    }

    @Basic
    @Column(name = "article_text", nullable = false, length = -1)
    public String getArticleText() {
        return articleText;
    }

    public void setArticleText(String articleText) {
        this.articleText = articleText;
    }

    @Basic
    @Column(name = "article_atime", nullable = false)
    public int getArticleAtime() {
        return articleAtime;
    }

    public void setArticleAtime(int articleAtime) {
        this.articleAtime = articleAtime;
    }

    @Basic
    @Column(name = "article_clicknum", nullable = false)
    public int getArticleClicknum() {
        return articleClicknum;
    }

    public void setArticleClicknum(int articleClicknum) {
        this.articleClicknum = articleClicknum;
    }

    @Basic
    @Column(name = "class_name", nullable = false, length = 20)
    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Article article = (Article) o;
        return articleId == article.articleId &&
                articleAtime == article.articleAtime &&
                articleClicknum == article.articleClicknum &&
                Objects.equals(articleName, article.articleName) &&
                Objects.equals(articleText, article.articleText) &&
                Objects.equals(className, article.className);
    }

    @Override
    public int hashCode() {
        return Objects.hash(articleId, articleName, articleText, articleAtime, articleClicknum, className);
    }
}
