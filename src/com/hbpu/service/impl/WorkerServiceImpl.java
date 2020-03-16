package com.hbpu.service.impl;

import com.hbpu.dao.WorkerDao;
import com.hbpu.pojo.Worker;
import com.hbpu.service.WorkerService;

import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/14 17:58
 */
public class WorkerServiceImpl  implements WorkerService {
    private WorkerDao workerDao=new WorkerDao();
    @Override
    public List<Worker> queryWithCond(Worker worker) {
        return workerDao.selectWithCond(worker);
    }
}
