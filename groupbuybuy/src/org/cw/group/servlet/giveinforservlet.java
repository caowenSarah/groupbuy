package org.cw.group.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cw.group.bean.GiveInfor;
import org.cw.group.dao.GiveInforDao;

public class giveinforservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
		request.setCharacterEncoding("GBK");
		String action=request.getParameter("action");
		if(action.equals("insert"))
			insert(request,response);
			
	}
	public void insert(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String city1=request.getParameter("city");
		String name=request.getParameter("name");
		String mobile=request.getParameter("mobile");
		String contact=request.getParameter("contact");
		String city=request.getParameter("province");
		String trader=request.getParameter("bizname");
		String type=request.getParameter("type");
		String content=request.getParameter("content");
		GiveInfor g=new GiveInfor();
		g.setGfUser(name);
		g.setGfTel(mobile);
		g.setGfContact(contact);
		g.setGfCity(city);
		g.setGfTrader(trader);
		g.setGfType(type);
		g.setGfContent(content);
		GiveInforDao dao=new GiveInforDao();
		boolean result=dao.insert(g);
		if(result){
			request.setAttribute("city", city1);
			request.getRequestDispatcher("givegroupinforok.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
