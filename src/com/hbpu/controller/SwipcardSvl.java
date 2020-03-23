package com.hbpu.controller;

import com.hbpu.pojo.Company;
import com.hbpu.pojo.Swipcard;
import com.hbpu.service.SwipcardService;
import com.hbpu.service.impl.SwipcardServiceImpl;
import com.hbpu.util.PageBean;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 17:42
 */
@WebServlet(value = "/ny/swipcardsvl")
public class SwipcardSvl extends HttpServlet {
    private SwipcardService service =new SwipcardServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if(reqType.equals("getAll")){
            getAll(request,response);
        }if(reqType.equals("selectWithCond")){
            selectWithCond(request,response);

        }
    }

    private void selectWithCond(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean<Swipcard> page=new PageBean<>();
        String companyName = request.getParameter("companyName");
        String companyAccount =request.getParameter("companyAccount");
        System.out.println("companyAccount = " + companyAccount);
        String time1 = request.getParameter("time1");
        String time2 = request.getParameter("time2");
        Company company=new Company(null,companyAccount,companyName,null);
        List<Swipcard> withCond = service.getWithCond(new PageBean<>(), company, time1, time2);
        request.setAttribute("list",withCond);
        request.getRequestDispatcher("/ny/xtgl/xfcx.jsp").forward(request,response);
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean<Swipcard> page=new PageBean<>();
        String pageStr = request.getParameter("pageNum");
        Integer pageNum=1;
        if(pageStr==null){
            pageNum=1;
        }else{
            pageNum= Integer.valueOf(pageStr);
        }
        int totalCount = service.getTotalCount();
        page.setPageNum(pageNum);
        page.setTotalCount(totalCount);
        List<Swipcard> swipcards = service.getAll(page);
        request.setAttribute("list",swipcards);
        request.setAttribute("page",page);
        request.getRequestDispatcher("/ny/xtgl/xfcx.jsp").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    this.doPost(request,response);
    }
}
