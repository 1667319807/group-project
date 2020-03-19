package com.hbpu.service.impl;

import com.hbpu.dao.MestateDao;
import com.hbpu.pojo.Mestate;
import com.hbpu.service.MestateService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 20:47
 */
public class MestateServiceImpl implements MestateService {
    private MestateDao mestateDao=new MestateDao();
    @Override
    public List<Mestate> getAllMessages() {
        return mestateDao.queryMestate();
    }

    @Override
    public List<Mestate> getAllMessagesWithCond(String sender, String state) {
        return mestateDao.queryMestateWithCond(sender,state);
    }
}
