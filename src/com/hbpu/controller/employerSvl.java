package com.hbpu.controller;

import com.hbpu.pojo.Employer;
import com.hbpu.pojo.Notice;
import com.hbpu.pojo.PageBean;
import com.hbpu.pojo.Trade;
import com.hbpu.service.EmployerService;
import com.hbpu.service.impl.EmployerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

/**
 * @author qiaolu
 * @time 2020/3/16 11:32
 */
@WebServlet(value = "/ny/employerSvl")
public class employerSvl extends HttpServlet {
    private EmployerService service = new EmployerServiceImpl();
    private PageBean<Employer> page=new PageBean<>();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if (reqType.equals("getAllEmployers")) {
            int pageNow = -1;
            getAllEmployers(request, response);
        }
        if (reqType.equals("queryEmployersWithCond")) {
            queryEmployersWithCond(request, response);
        }
        if (reqType.equals("employerDetail")) {
            employerDetail(request, response);
        }
        if(reqType.equals("addEmployer")){
            addEmployer(request,response);
        }
    }

    private void addEmployer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        Integer age = Integer.valueOf(request.getParameter("age"));
        String minzu = request.getParameter("minzu");
        String jiguan = request.getParameter("jiguan");
        String education = request.getParameter("education");
        String idcard = request.getParameter("idcard");
        String workspace = request.getParameter("worksplace");
        String zhiye = request.getParameter("zhiye");
        String hetonghao = request.getParameter("hetonghao");
        Timestamp hetongqixian = Timestamp.valueOf(request.getParameter("hetongqixian"));
        String shouji = request.getParameter("shouji");
        String zhuzhai = request.getParameter("zhuzhai");
        String hukouaddr = request.getParameter("hukouaddr");
        String serveaddr = request.getParameter("serveaddr");
        String jiatingaddr = request.getParameter("jiatingaddr");
        String jiatingrenshu = request.getParameter("jiatingrenshu");
        String jiatingserve = request.getParameter("jiatingserve");
        String jiatingmianji = request.getParameter("jiatingmianji");
        String jiatingyinshi = request.getParameter("jiatingyinshi");
        String jiatingqita = request.getParameter("jiatingqita");
        Float lowsalary = Float.valueOf(request.getParameter("lowsalary"));
        Float highsalary = Float.valueOf(request.getParameter("highsalary"));
        String[] hires = request.getParameterValues("hire");
        Integer jingbanren = Integer.valueOf(request.getParameter("jingbanren"));
        Timestamp recordtime = Timestamp.valueOf(request.getParameter("recordtime"));
        Employer employer=new Employer(null,null,name,sex,age,minzu,jiguan,education,idcard,zhiye,workspace,hetonghao,hetongqixian,null,shouji,zhuzhai,hukouaddr,serveaddr,jiatingaddr,jiatingrenshu,hires[0],jiatingserve,jiatingmianji,jiatingyinshi,jiatingqita,jingbanren,recordtime,highsalary,lowsalary,null,null);
        int i = service.addEmployer(employer);
        if(i>0){
            request.getRequestDispatcher("/ny/employerSvl?reqType=getAllEmployers").forward(request, response);
        }

    }

    private void employerDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employer_id = request.getParameter("employer_id");
        Employer employerDetail = service.getEmployerDetail(Integer.valueOf(employer_id));
        request.setAttribute("employer", employerDetail);
        request.getRequestDispatcher("/ny/ywgl/gzxx_ck.jsp").forward(request, response);
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

    private void getAllEmployers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("pageNum");
        Integer pageNum=1;
        int totalCount = service.getTotalCount();
        if(pageStr==null){
            page.setPageNum(pageNum);
        }else{
            page.setPageNum(Integer.valueOf(pageStr));
        }
        //System.out.println(allEmployers.size());
        page.setTotalCount(totalCount);
        List<Employer> allEmployers = service.getAllEmployers(page);
        request.setAttribute("page",page);
        request.setAttribute("allEmployers", allEmployers);
        request.getRequestDispatcher("/ny/ywgl/gzxx.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
