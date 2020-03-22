package com.hbpu.service;

import com.hbpu.pojo.Employer;
import com.hbpu.util.PageBean;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/16 15:35
 */
public interface EmployerService {
    List<Employer> getAllEmployers(PageBean<Employer> page);
    List<Employer> getEmployersWithCond(Object...para);
    Employer getEmployerDetail(Integer employer_id);
    int addEmployer(Employer employer);
    int getTotalCount();
}

