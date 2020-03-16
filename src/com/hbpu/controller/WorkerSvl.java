package com.hbpu.controller;

import com.hbpu.pojo.Worker;
import com.hbpu.service.WorkerService;
import com.hbpu.service.impl.WorkerServiceImpl;
import org.omg.CORBA.INITIALIZE;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/14 17:51
 */
@WebServlet(value = "/ny/workersvl")
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

    private void queryWorkerWithCond(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String workername = request.getParameter("workername");
        Character sex =request.getParameter("sex").charAt(0);
        Integer select1 =Integer.valueOf(request.getParameter("select1")) ;
        Integer select2 = Integer.valueOf(request.getParameter("select2"));
        Integer age[]={select1,select2};
        String worktime = request.getParameter("worktime");
        Timestamp timestamp = Timestamp.valueOf(worktime);
        String[] educations = request.getParameterValues("education");
        String[] hobbies = request.getParameterValues("hobby");
        String[] languages = request.getParameterValues("language");
        String[] states = request.getParameterValues("state");
        String marriage = request.getParameter("marriage");
        String[] licenses = request.getParameterValues("license");
        String[] personskills = request.getParameterValues("personskill");

        Worker worker=new Worker(null,null,workername,sex,null,null,age,null,null,null,null,
                 timestamp,null,null,null,null,null,null,languages[0],states[0],marriage,licenses[0],
                null,null,personskills[0],null,null,null,null,null,null,null);
        List<Worker> list = service.queryWithCond(worker);
        request.setAttribute("worker",list);
        request.getRequestDispatcher("").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
