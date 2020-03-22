package com.hbpu.controller;

import com.hbpu.pojo.Recharge;
import com.hbpu.service.RechargeService;
import com.hbpu.service.impl.RechargeServiceImpl;
import com.hbpu.util.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/22 10:12
 */
@WebServlet(value = "/ny/rechargesvl")
public class RechargeSvl extends HttpServlet {
    private RechargeService service=new RechargeServiceImpl();
    private PageBean<Recharge> page=new PageBean<>();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if(reqType.equals("getAll")){
            getAll(request,response);
        }
        if(reqType.equals("charge")){
            charge(request,response);
        }
    }

    private void charge(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer recharge_id = Integer.valueOf(request.getParameter("recharge_id"));
        Integer balance = Integer.valueOf(request.getParameter("balance"));
        int i = service.charge(recharge_id, balance);
        if(i>0){
            response.sendRedirect("/ny/xtgl/czgl.jsp");
        }
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("pageNum");
        Integer pageNum=1;
        if(pageStr==null){
            page.setPageNum(pageNum);
        }else{
            pageNum= Integer.valueOf(pageStr);
            page.setPageNum(pageNum);
        }
        page.setTotalCount(service.getCount());
        request.setAttribute("page",page);
        List<Recharge> recharges = service.getAllRecharges();
        request.setAttribute("recharges",recharges);
        request.getRequestDispatcher("/ny/xtgl/czgl.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
