package org.cw.group.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class orderservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		doPost(request,response);

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
	    request.setCharacterEncoding("GBK");
	    String action=request.getParameter("action");
	    
	    if(action.equals("insert")){
			insert(request,response);
		}
		if(action.equals("list")){
			list(request,response);
		}
		if(action.equals("delete")){
			delete(request,response);
		}
	    
	}
	public void insert(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		String orderTopic=request.getParameter("title");
		String orderAmount=request.getParameter("amount");
		String allMoney=request.getParameter("money");
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); 
		
		
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
	}

}
