package com.hbpu.service;

import com.hbpu.pojo.Worker;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/14 17:57
 */
public interface WorkerService {
    List<Worker> queryWithCond(Worker worker);
}
