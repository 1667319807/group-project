package com.hbpu.controller;

import com.hbpu.pojo.Worker;
import com.hbpu.service.WorkerService;
import com.hbpu.service.impl.WorkerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author qiaolu
 * @time 2020/3/14 17:51
 */
@WebServlet(value = "/workersvl")
public class WorkerSvl extends HttpServlet {
    WorkerService service=new WorkerServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if(reqType.equals("queryWorkerWithCond")){
            queryWorkerWithCond(request,response);
        }
    }

    private void queryWorkerWithCond(HttpServletRequest request, HttpServletResponse response) {
        Worker worker=new Worker();
        service.queryWithCond(worker);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
