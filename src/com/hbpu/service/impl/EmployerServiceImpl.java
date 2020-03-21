package com.hbpu.service.impl;


import com.hbpu.dao.EmployerDao;
import com.hbpu.pojo.Employer;
import com.hbpu.pojo.PageBean;
import com.hbpu.service.EmployerService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/16 15:36
 */
public class EmployerServiceImpl implements EmployerService {
    EmployerDao employerDao=new EmployerDao();
    @Override
    public List<Employer> getAllEmployers(PageBean<Employer> page) {
        return employerDao.selectAllEmployers(page);
    }

    @Override
    public List<Employer> getEmployersWithCond(Object... para) {
        return employerDao.selectEmployersWithCond(para);
    }

    @Override
    public Employer getEmployerDetail(Integer employer_id) {
        return employerDao.selectEmployerDetail(employer_id);
    }

    @Override
    public int addEmployer(Employer employer) {
        return employerDao.addEmployer(employer);
    }

    @Override
    public int getTotalCount() {
        return employerDao.queryCount();
    }
}
