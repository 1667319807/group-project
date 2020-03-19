package com.hbpu.service;

import com.hbpu.pojo.Notice;
import com.hbpu.pojo.PageBean;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 15:08
 */
public interface NoticeService {
    List<Notice> getAllDetails(PageBean<Notice> page);
    int getCount();
}