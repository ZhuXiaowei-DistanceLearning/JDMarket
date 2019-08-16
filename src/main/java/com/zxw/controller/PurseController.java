package com.zxw.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.config.AlipayConfig;
import com.zxw.controller.base.BaseController;
import com.zxw.pojo.Purse;
import com.zxw.pojo.User;
import com.zxw.service.PurseService;
import com.zxw.vo.PageResult;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by zxw on 2019/8/5.
 */
@Controller
public class PurseController extends BaseController<Purse> {
    @Autowired
    private PurseService purseService;

    /**
     * 查看个人钱包
     */
    public String getMoney() {
        User user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
        Purse purse = purseService.queryByUserId(user.getId());
        ServletActionContext.getRequest().setAttribute("myPurse", purse);
        return "money";
    }

    /**
     * 充值
     */
    public String updatePurse() throws UnsupportedEncodingException, AlipayApiException {
        //获取支付宝GET过来反馈信息
        Map<String, String> params = new HashMap<String, String>();
        Map requestParams = ServletActionContext.getRequest().getParameterMap();
        for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext(); ) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        //获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
        //商户订单号

        String out_trade_no = new String(ServletActionContext.getRequest().getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

        //支付宝交易号

        String trade_no = new String(ServletActionContext.getRequest().getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

        //获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//
        //计算得出通知验证结果
        //boolean AlipaySignature.rsaCheckV1(Map<String, String> params, String publicKey, String charset, String sign_type)
        String total_mount = params.get("total_amount");
        Double money = Double.valueOf(total_mount);
        boolean verify_result = AlipaySignature.rsaCheckV1(params, AlipayConfig.ALIPAY_PUBLIC_KEY, AlipayConfig.CHARSET, "RSA2");
        if(verify_result){
            User cur_user = (User) ServletActionContext.getRequest().getSession().getAttribute("cur_user");
            Purse purse = getModel();
            purse.setUserId(cur_user.getId());
            purse.setState(0);
            purse.setRecharge(money);
            if (purse.getRecharge() != null) {
                purseService.updatePurse(purse);
            }
            if (purse.getWithdrawals() != null) {
                purseService.updatePurse(purse);
            }
            return "updatePurse";
        }
        return "updatePurse";
    }

    public String purseList() {
        PageResult list = purseService.findAll(getiPage().getPage(), getiPage().getRows(), "", "", "");
        ServletActionContext.getRequest().getSession().setAttribute("purseGrid", list);
        return "purseList";
    }

}
