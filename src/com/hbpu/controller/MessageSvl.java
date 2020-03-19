package com.hbpu.controller;

import com.hbpu.pojo.Mestate;
import com.hbpu.service.MestateService;
import com.hbpu.service.impl.MestateServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.interfaces.RSAKey;
import java.util.List;

/**
 * @author qiaolu
 * @time 2020/3/19 20:45
 */
@WebServlet(value = "/ny/messagesvl")
public class MessageSvl extends HttpServlet {
    private MestateService service=new MestateServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if(reqType.equals("getAllMessages")){
            getAllMessages(request,response);
        }if(reqType.equals("getMessageWithCond")){
            getMessageWithCond(request,response);
        }
    }

    private void getMessageWithCond(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sender = request.getParameter("sender");
        String state = request.getParameter("state");
        List<Mestate> mes = service.getAllMessagesWithCond(sender, state);
        request.setAttribute("mestates",mes);
        request.getRequestDispatcher("/ny/ywgl/message_list.jsp").forward(request,response);
    }

    private void getAllMessages(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Mestate> mes = service.getAllMessages();
        request.setAttribute("mestates",mes);
        request.getRequestDispatcher("/ny/ywgl/message_list.jsp").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
