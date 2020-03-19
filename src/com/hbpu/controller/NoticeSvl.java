package com.hbpu.controller;

import com.hbpu.pojo.Notice;
import com.hbpu.pojo.PageBean;
import com.hbpu.service.NoticeService;
import com.hbpu.service.impl.NoticeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/ny/noticesvl")
public class NoticeSvl extends HttpServlet {
    private NoticeService service=new NoticeServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if (reqType.equals("queryAllNotices")) {
            queryAllNotices(request, response);
        }
    }

    private void queryAllNotices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("pageNum");
        Integer pageNum=1;
        PageBean<Notice> page=new PageBean<>();
        page.setTotalCount(service.getCount());
        if(pageStr==null){
            page.setPageNum(pageNum);
            List<Notice> allDetails = service.getAllDetails(null);
            request.setAttribute("page",page);
            request.setAttribute("details",allDetails);
            request.getRequestDispatcher("/ny/ywgl/mrtz.jsp").forward(request,response);
        }else{
            pageNum= Integer.valueOf(pageStr);
            page.setPageNum(pageNum);
            List<Notice> allDetails = service.getAllDetails(page);
            request.setAttribute("page",page);
            request.setAttribute("details",allDetails);
            request.getRequestDispatcher("/ny/ywgl/mrtz.jsp").forward(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
