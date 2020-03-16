package com.hbpu.controller;

import com.hbpu.pojo.Employer;
import com.hbpu.service.EmployerService;
import com.hbpu.service.impl.EmployerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/16 11:32
 */
@WebServlet(value = "/ny/employerSvl")
public class employerSvl extends HttpServlet {
    EmployerService service = new EmployerServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if (reqType.equals("getAllEmployers")) {
            int pageNow = -1;
            getAllEmployers(request, response, pageNow);
        }
        if (reqType.equals("queryEmployersWithCond")) {
            queryEmployersWithCond(request, response);
        }
    }

    private void queryEmployersWithCond(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employername = request.getParameter("employername");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String state = request.getParameter("state");
        String type = request.getParameter("type");
        List<Employer> allEmployers = service.getEmployersWithCond(employername, sex, phone, state, type);
        request.setAttribute("allEmployers", allEmployers);
        request.getRequestDispatcher("/ny/ywgl/gzxx.jsp").forward(request, response);
    }

    private void getAllEmployers(HttpServletRequest request, HttpServletResponse response, int pageNow) throws ServletException, IOException {
        List<Employer> allEmployers = service.getAllEmployers();
        System.out.println(allEmployers.size());
        request.setAttribute("allEmployers", allEmployers);
        request.getRequestDispatcher("/ny/ywgl/gzxx.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
