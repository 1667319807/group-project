package com.hbpu.service.impl;

import com.hbpu.dao.SwipcardDao;
import com.hbpu.pojo.Company;
import com.hbpu.pojo.Swipcard;
import com.hbpu.service.SwipcardService;
import com.hbpu.util.PageBean;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 17:40
 */
public class SwipcardServiceImpl implements SwipcardService {
    SwipcardDao swipcardDao=new SwipcardDao();
    @Override
    public List<Swipcard> getAll(PageBean<Swipcard> page) {
        return swipcardDao.queryAll(page);
    }

    @Override
    public List<Swipcard> getWithCond(PageBean<Swipcard> page, Company company, String str1, String str2) {
        return swipcardDao.queryWithCond(page,company,str1,str2);
    }

    @Override
    public int getTotalCount() {
        return swipcardDao.queryCount();
    }
}
