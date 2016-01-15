package org.cw.group.servlet;


import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cw.group.bean.Collection;
import org.cw.group.dao.CollectionDao;

public class collectionservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
		request.setCharacterEncoding("GBK");
		String action=request.getParameter("action");
		if(action.equals("insert"))
			insert(request,response);
		else if(action.equals("delete"))
		delete(request,response);
		else if(action.equals("list"))
		list(request,response);
	}

	public void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String city=request.getParameter("city");
		String proId=request.getParameter("proId");
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("userName");
		CollectionDao dao=new CollectionDao();
		boolean result=dao.insert(proId,username);
		if(result){
			list(request,response);
		}else
		{
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}
		
	}

	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String collId=request.getParameter("collId");
		
		CollectionDao dao=new CollectionDao();
		boolean result=dao.delete(collId);
		if(result){
			list(request,response);
		}else
		{
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}

	}

	public void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String city=request.getParameter("city");
		String username = (String) session.getAttribute("userName");
		CollectionDao dao=new CollectionDao();
		List<Collection> list=dao.list(username);
		
		if(list==null){
			
		}else
		{
			request.setAttribute("city", city);
			request.setAttribute("list", list);
			request.getRequestDispatcher("mycollection.jsp").forward(request, response);
		}
	
	}
}
