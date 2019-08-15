package com.zxw.controller;

import com.zxw.service.PurseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * Created by zxw on 2019/8/6.
 */
@Controller
public class PageController {
    @Autowired
    private PurseService purseService;

    public String execute() {
        return "success";
    }

    public String redirect_action(){
        return "ok";
    }
}
