package com.zxw.controller.base;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zxw.util.JsonUtils;
import com.zxw.vo.Page;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
public class BaseController<T> extends ActionSupport implements ModelDriven<T> {
    protected T model;
    private Page page;

    public Page getPage() {
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }

    private DetachedCriteria detachedCriteria = null;

    @Override
    public T getModel() {
        return model;
    }

    public BaseController() {
        System.out.println(this.getClass());
        ParameterizedType genericSuperclass = (ParameterizedType) this.getClass().getGenericSuperclass();
        Type[] actualTypeArguments = genericSuperclass.getActualTypeArguments();
        Class<T> tClass = (Class<T>) actualTypeArguments[0];
        detachedCriteria = DetachedCriteria.forClass(tClass);
        try {
            model = tClass.newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    public void writePageBean2Json(Object info) {
        try {
            ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
            ServletActionContext.getResponse().getWriter().print(JsonUtils.serialize(info));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void writeList2Json(List list) throws IOException {
        ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
        ServletActionContext.getResponse().getWriter().print(JsonUtils.serialize(list));
    }
}
