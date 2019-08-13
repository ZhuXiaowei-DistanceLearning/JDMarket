package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Comments;
import com.zxw.pojo.User;
import com.zxw.service.CommentsService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class CommentsController extends BaseController<Comments> {
    @Autowired
    private CommentsService commentsService;

    /**
     * 查看商品评论
     *
     * @return
     */
    public String queryCommentByGoodsAndUserId() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Comments comments = commentsService.queryCommentByGoodsAndUserId(user.getId(), getModel().getGoodsId());
        return "";
    }

    /**
     * 查看商品所有的评论
     *
     * @return
     */
    public String queryCommentByGoodsId() {
        List<Comments> commentsList = commentsService.queryCommentByGoodsId(getModel().getGoodsId());
        return "";
    }

    /**
     * 添加评论
     *
     * @return
     */
    public String addComment() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        commentsService.addComment(user.getId(),getModel());
        return "addComment";
    }

    /**
     * 修改评论
     *
     * @return
     */
    public String updateComment() {
        return "";
    }

    /**
     * 删除评论
     *
     * @return
     */
    public String deleteComment() {
        return "";
    }
}
