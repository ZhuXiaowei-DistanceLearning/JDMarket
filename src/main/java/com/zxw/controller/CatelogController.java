package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Catelog;
import com.zxw.service.CatelogService;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class CatelogController extends BaseController<Catelog> {
    @Autowired
    private CatelogService catelogService;

    public String getCatelog() {
        List<Catelog> visitors = catelogService.findAll(getPage(), getRows(), null, null, null);
        ServletActionContext.getRequest().setAttribute("catelogList", visitors);
        return "success";
    }

    public String addCatelog() {
        Catelog model = getModel();
        model.setNumber(0);
        model.setStatus((byte) 1);
        catelogService.add(this.model);
        return "ok";
    }

    public String editCatelog() {
        catelogService.update(getModel());
        return "ok";
    }

    public String deleteCatelog() {
        catelogService.delete(getModel().getId());
        writePageBean2Json("success");
        return NONE;
    }

    public String editPage() {
        Catelog article = catelogService.findById(getModel().getId());
        writePageBean2Json(article);
        return NONE;
    }
}
