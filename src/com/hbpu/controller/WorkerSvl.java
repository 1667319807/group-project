package com.hbpu.controller;

import com.hbpu.pojo.Employer;
import com.hbpu.pojo.PageBean;
import com.hbpu.pojo.Trade;
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
    private WorkerService service=new WorkerServiceImpl();
    private PageBean<Worker> page=new PageBean<>();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if(reqType.equals("queryWorkerWithCond")){
            queryWorkerWithCond(request,response);
        }if(reqType.equals("getAllTrades")){
            getAllTrades(request,response);
        }if(reqType.equals("getTradesWithCond")){
            getTradesWithCond(request,response);
        }
    }

    private void getTradesWithCond(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employerName = request.getParameter("employerName");
        String recordTime1 = request.getParameter("recordTime1");
        String recordTime2 = request.getParameter("recordTime2");
        String workerName = request.getParameter("workerName");
        String state = request.getParameter("state");

        List<Trade> tradesList = service.getTradesWithCond(employerName, recordTime1, recordTime2, workerName, state);
        System.out.println(tradesList.size());
        request.setAttribute("tradesList",tradesList);
        request.getRequestDispatcher("/ny/ywgl/ddgl.jsp").forward(request,response);
    }

    private void getAllTrades(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("pageNum");
        Integer pageNum=1;
        int totalCount = service.getTotalCount();
        if(pageStr==null){
            page.setPageNum(pageNum);
        }else{
            page.setPageNum(Integer.valueOf(pageStr));
        }
        page.setTotalCount(totalCount);
        List<Trade> tradesList = service.getTradesWithCond();
        request.setAttribute("page",page);
        request.setAttribute("tradesList",tradesList);
        request.getRequestDispatcher("/ny/ywgl/ddgl.jsp").forward(request,response);
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
