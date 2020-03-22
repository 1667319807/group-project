package com.hbpu.service;

import com.hbpu.pojo.Recharge;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 10:05
 */
public interface RechargeService {
    List<Recharge> getAllRecharges();
    int getCount();
    int charge(Integer recharge_id,Integer balance);
}
