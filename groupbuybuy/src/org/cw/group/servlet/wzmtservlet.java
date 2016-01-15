package org.cw.group.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cw.group.bean.Wzmt;
import org.cw.group.dao.wzmtDao;

public class wzmtservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	        doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			response.setContentType("text/html;charset=GBK");
		    request.setCharacterEncoding("GBK");
	        String action=request.getParameter("action");
	        if(action.equals("list"))
	        	list(request,response);
	        
	
	}
	public void list (HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String city=request.getParameter("city");
		wzmtDao wdao = new wzmtDao();
		Wzmt wz =wdao.getone(); 
		
		if(wz!=null)
		{
			request.setAttribute("city", city);
			request.setAttribute("tz", wz);
			request.getRequestDispatcher("wzmt.jsp").forward(request, response);
		}
		else
		{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	
	}

}
