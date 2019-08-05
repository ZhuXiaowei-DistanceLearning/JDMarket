package com.zxw.controller;

import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Goods;
import com.zxw.pojo.GoodsExtend;
import com.zxw.pojo.Image;
import com.zxw.pojo.User;
import com.zxw.service.GoodsService;
import com.zxw.service.ImageService;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class GoodsController extends BaseController<Goods> {
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private ImageService imageService;

    private File uploadFile;
    private String uploadImageContentType; //得到文件的类型
    private String uploadImageFileName; //得到文件的名称

    public String homeGoods() {
        // 商品种类数量
        int rows = 7;
        // 每个种类显示商品数量
        List<Goods> goodsList = null;
        List<GoodsExtend> goodsAndImage = new ArrayList<>();
        // 获取最新发布的商品列表
        goodsList = goodsService.queryByGoodsOrderByDate(1, rows, "startTime", "", "");
        for (int i = 0; i < goodsList.size(); i++) {
            GoodsExtend goodsExtend = new GoodsExtend();
            Goods goods = goodsList.get(i);
            List<Image> images = imageService.queryByImagesByGoodsPrimaryKey(goods.getId());
            goodsExtend.setGoods(goods);
            goodsExtend.setImages(images);
            goodsAndImage.add(goodsExtend);
        }
        ServletActionContext.getRequest().setAttribute("catelogGoods", goodsAndImage);
        // 获取其他发布列表
        for (int i = 1; i <= rows; i++) {
            goodsList = goodsService.queryByGoodsByCatelogOrderByDate(rows, i);
            goodsAndImage = new ArrayList<>();
            for (int j = 0; j < goodsList.size(); j++) {
                GoodsExtend goodsExtend = new GoodsExtend();
                Goods goods = goodsList.get(j);
                List<Image> images = imageService.queryByImagesByGoodsPrimaryKey(goods.getId());
                goodsExtend.setGoods(goods);
                goodsExtend.setImages(images);
                goodsAndImage.add(goodsExtend);
            }
            ServletActionContext.getRequest().setAttribute("catelogGoods" + i, goodsAndImage);
        }
        return "homeGoods";
    }

    /**
     * 发布商品信息
     */
    public String publishGoods() {
        User cur_user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Goods goods = getModel();
        goods.setUserId(cur_user.getId());
//        goodsService.addGoods(goods,10);
        return "publishGoods";
    }

    /**
     * 图片上传
     *
     * @return
     */
    public String uploadFile() {
        // 得到upload文件上传路径
        String realPath = ServletActionContext.getRequest().getRealPath("/upload");
        File file = new File(realPath);
        // 如果该目录不存在，则创建
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            FileUtils.copyFile(uploadFile, new File(file, uploadImageFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return NONE;
    }

    public File getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(File uploadFile) {
        this.uploadFile = uploadFile;
    }

    public String getUploadImageContentType() {
        return uploadImageContentType;
    }

    public void setUploadImageContentType(String uploadImageContentType) {
        this.uploadImageContentType = uploadImageContentType;
    }

    public String getUploadImageFileName() {
        return uploadImageFileName;
    }

    public void setUploadImageFileName(String uploadImageFileName) {
        this.uploadImageFileName = uploadImageFileName;
    }
}
