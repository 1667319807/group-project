package com.hbpu.service.impl;

import com.hbpu.dao.ChargeDao;
import com.hbpu.pojo.Recharge;
import com.hbpu.service.RechargeService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 10:06
 */
public class RechargeServiceImpl implements RechargeService {
private ChargeDao chargeDao=new ChargeDao();
    @Override
    public List<Recharge> getAllRecharges() {
        return chargeDao.queryAll();
    }

    @Override
    public int getCount() {
        return chargeDao.queryCount();
    }

    @Override
    public int charge(Integer recharge_id,Integer balance) {
        return chargeDao.updateBalance(recharge_id,balance);
    }
}
