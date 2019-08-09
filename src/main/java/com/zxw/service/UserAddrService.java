package com.zxw.service;

import com.zxw.mapper.UserAddrMapper;
import com.zxw.pojo.Useraddr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by zxw on 2019/8/9.
 */
@Service
@Transactional
public class UserAddrService {
    @Autowired
    private UserAddrMapper userAddrMapper;

    public List<Useraddr> findAll(int page, int rows, String soryBy, String desc, String search, Map<String, Object> map) {
        List<Useraddr> list = userAddrMapper.findAll(page, rows, soryBy, desc, search, map);
        return list;
    }

    public void addUserAddr(Useraddr useraddr) {
        userAddrMapper.save(useraddr);
    }

    public void update(Useraddr model) {
        userAddrMapper.update(model);
    }

    public void delete(int addressId) {
        Useraddr id = userAddrMapper.findById(addressId);
        userAddrMapper.delete(id);
    }
}
