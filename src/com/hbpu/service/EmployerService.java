package com.hbpu.service;

import com.hbpu.pojo.Employer;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/16 15:35
 */
public interface EmployerService {
    List<Employer> getAllEmployers();
    List<Employer> getEmployersWithCond(Object...para);
    Employer getEmployerDetail(Integer employer_id);
}
