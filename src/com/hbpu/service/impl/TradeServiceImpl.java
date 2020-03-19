package com.hbpu.service.impl;

import com.hbpu.dao.TradeDao;
import com.hbpu.pojo.Trade;
import com.hbpu.service.TradeService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/18 18:42
 */
public class TradeServiceImpl implements TradeService {
    TradeDao dao = new TradeDao();

    @Override
    public Trade getTrade(Integer employer_id) {
        return dao.selectTrade(employer_id);
    }
}
