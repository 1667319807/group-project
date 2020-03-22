package com.hbpu.service;

import com.hbpu.pojo.Company;
import com.hbpu.pojo.Swipcard;
import com.hbpu.util.PageBean;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 17:39
 */
public interface SwipcardService {

    List<Swipcard> getAll(PageBean<Swipcard> page);
    List<Swipcard> getWithCond(PageBean<Swipcard> page,Company company,String str1,String str2);
    int getTotalCount();
}
