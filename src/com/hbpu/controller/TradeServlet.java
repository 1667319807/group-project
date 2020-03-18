package com.hbpu.controller;

import com.hbpu.pojo.Trade;
import com.hbpu.service.TradeService;
import com.hbpu.service.impl.TradeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(value = "/ny/tradeSvl")
public class TradeServlet extends HttpServlet {
    TradeService service=new TradeServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String reqType = request.getParameter("reqType");
        if(reqType.equals("checkOrder")){
            checkOrder(request,response);
        }
    }

    private void checkOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String trade_id = request.getParameter("trade_id");
        Trade tradeList = service.getTrade(Integer.valueOf(trade_id));
        request.setAttribute("tradeList",tradeList);
        request.getRequestDispatcher("/ny/ywgl/ddgl_ck.jsp").forward(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
