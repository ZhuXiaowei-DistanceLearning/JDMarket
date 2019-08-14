package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Visitor;
import com.zxw.service.VisitorService;
import com.zxw.vo.PeopleCount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.util.List;

/**
 * Created by zxw on 2019/8/14.
 */
@Controller
public class VisitorController extends BaseController<Visitor> {
    @Autowired
    private VisitorService visitorService;

    public String getVisitor() {
        List<PeopleCount> visitors = visitorService.findAllVisitorByDate();
        try {
            writeList2Json(visitors);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return NONE;
    }
}
