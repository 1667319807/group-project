package com.hbpu.service.impl;

import com.hbpu.pojo.Notice;
import com.hbpu.dao.NoticeDao;
import com.hbpu.pojo.PageBean;
import com.hbpu.service.NoticeService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 15:09
 */
public class NoticeServiceImpl implements NoticeService {
    private NoticeDao noticeDao = new NoticeDao();

    @Override
    public List<Notice> getAllDetails(PageBean<Notice> page) {
        return noticeDao.selectAllDetails(page);
    }

    @Override
    public int getCount() {
        return noticeDao.queryCount();
    }
}
