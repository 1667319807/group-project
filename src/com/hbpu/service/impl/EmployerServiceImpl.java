package com.hbpu.service.impl;


import com.hbpu.dao.EmployerDao;
import com.hbpu.pojo.Employer;
import com.hbpu.service.EmployerService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/16 15:36
 */
public class EmployerServiceImpl implements EmployerService {
    EmployerDao employerDao=new EmployerDao();
    @Override
    public List<Employer> getAllEmployers() {
        return employerDao.selectAllEmployers();
    }

    @Override
    public List<Employer> getEmployersWithCond(Object... para) {
        return employerDao.selectEmployersWithCond(para);
    }

    @Override
    public Employer getEmployerDetail(Integer employer_id) {
        return employerDao.selectEmployerDetail(employer_id);
    }
}
