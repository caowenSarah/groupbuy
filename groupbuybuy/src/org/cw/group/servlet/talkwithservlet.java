package org.cw.group.servlet;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cw.group.bean.talkwith;
import org.cw.group.dao.talkWithDao;

public class talkwithservlet extends HttpServlet {

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
            {
            	list(request,response);
            }
            else if(action.equals("insert"))
            {
            
            	insertOne(request,response);
            }
	}
	private void list(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException,IOException{
			String city=request.getParameter("city");
           List<talkwith> list= new ArrayList<talkwith>();
           talkWithDao tdao = new talkWithDao();
           list = tdao.getall();
           if(list !=null)
           {
        	   
        	   request.setAttribute("city", city);
        	   request.setAttribute("list", list);
        	   request.getRequestDispatcher("all.jsp").forward(request, response);
           }else
           {
        	   request.getRequestDispatcher("error.jsp").forward(request, response);
           }
           
	}
	private void insertOne(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException,IOException{
		String city=request.getParameter("city");
		String saddress = request.getParameter("saddress");
		String stopic = request.getParameter("stopic");
		String sinfo = request.getParameter("sinfo");
		String tuser = request.getParameter("tuser");
		
		talkwith tw =new talkwith();
		tw.setTalkAddress(saddress);
		tw.setTalkInfo(sinfo);
		tw.setTalkTopic(stopic);
		tw.setTalkUser(tuser);
		talkWithDao tdao = new talkWithDao();
		boolean flage = tdao.insert(tw);
		if(flage)
		{
			list(request,response);
		}else
		{
			System.out.print("1");
		}
		
	}

}
