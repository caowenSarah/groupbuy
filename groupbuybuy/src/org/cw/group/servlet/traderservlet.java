package org.cw.group.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cw.group.bean.OrderItem;
import org.cw.group.bean.Trader;
import org.cw.group.bean.User;
import org.cw.group.dao.TraderDao;
import org.cw.group.dao.userDao;

public class traderservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
		response.setContentType("text/html");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
		request.setCharacterEncoding("GBK");

		String action = request.getParameter("action");
		if (action.equals("insert"))
			insert(request, response);
		else if (action.equals("list"))
			list(request, response);
		else if (action.equals("saveupdate"))
			saveupdate(request, response);
		else if (action.equals("queryByCus"))
			queryByCus(request, response);
		else if (action.equals("querytrader"))
			querytrader(request,response);
		else if (action.equals("update"))
			update(request, response);
		else if (action.equals("delete"))
			delete(request, response);

	}

	public void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String trName = request.getParameter("name");
		String trPwd = request.getParameter("password");
		String cusName = request.getParameter("customerName");
		String interAdd = request.getParameter("interAddress");
		String conTel = request.getParameter("conTel");
		String khBank = request.getParameter("khbank");
		String khName = request.getParameter("khname");
		String bankAcc = request.getParameter("bankaccount");
		try {
			Trader t = new Trader();
			t.setTrName(trName);
			t.setTrPassword(trPwd);
			t.setCustomerName(cusName);
			t.setInterAddress(interAdd);
			t.setConTel(conTel);
			t.setKhBank(khBank);
			t.setKhName(khName);
			t.setBankAccount(bankAcc);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String datetime = new SimpleDateFormat("yyyy-MM-dd")
					.format(Calendar.getInstance().getTime());
			t.setTrTime(sdf.parse(datetime));
			TraderDao dao = new TraderDao();
			boolean result = dao.insert(t);
			if (result) {
				list(request, response);
			} else
				request.getRequestDispatcher("fail.jsp").forward(request,
						response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TraderDao dao = new TraderDao();
		List<Trader> list = dao.list();
		if (list == null) {

		} else {
			request.setAttribute("list", list);
			request.getRequestDispatcher("mtsh.jsp").forward(request, response);
		}

	}

	public void queryByCus(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String customerName=request.getParameter("customerName");
		TraderDao dao=new TraderDao();
		List<Trader> list=dao.queryByCus(customerName);
		if(list==null)
		{
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}
		else{
			request.setAttribute("list", list);
			request.getRequestDispatcher("mtsh.jsp").forward(request, response);
		}
		

	}
	private void querytrader(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

		  String tName = request.getParameter("name");
		  String tPwd = request.getParameter("password");
		  Trader t = new Trader();
		  TraderDao dao = new TraderDao();
		  t= dao.querytrader(tName,tPwd);
		  String username = t.getTrName();
		  HttpSession session = request.getSession();
		  if(t!=null)
		  {
		    	
			     session.setAttribute("userName",username);
			     session.setAttribute("t",t);
			    request.getRequestDispatcher("index.jsp").forward(request, response);
		 
		  }
	  else 
		  	request.getRequestDispatcher("fail.jsp").forward(request, response);

}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String trId=request.getParameter("id");
		TraderDao dao=new TraderDao();
		Trader t=dao.queryById(trId);
		if(t==null){
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		}
		else{
			request.setAttribute("trader", t);
			request.getRequestDispatcher("shbj.jsp").forward(request, response);
		}
	}

	public void saveupdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String trId=request.getParameter("id");
		String trName = request.getParameter("name");
		String trPwd = request.getParameter("password");
		String cusName = request.getParameter("customerName");
		String interAdd = request.getParameter("interAddress");
		String conTel = request.getParameter("conTel");
		String khBank = request.getParameter("khbank");
		String khName = request.getParameter("khname");
		String bankAcc = request.getParameter("bankaccount");
		try {
			Trader t = new Trader();
			t.setTrId(Integer.parseInt(trId));
			t.setTrName(trName);
			t.setTrPassword(trPwd);
			t.setCustomerName(cusName);
			t.setInterAddress(interAdd);
			t.setConTel(conTel);
			t.setKhBank(khBank);
			t.setKhName(khName);
			t.setBankAccount(bankAcc);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
			t.setTrTime(sdf.parse(datetime));
			TraderDao dao = new TraderDao();
			boolean result = dao.saveupdate(t);
			if (result) {
				list(request, response);
			} else
				request.getRequestDispatcher("fail.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String trId = request.getParameter("id");
		TraderDao dao = new TraderDao();
		boolean result = dao.delete(trId);
		if (result) {
			list(request, response);
		} else {
			request.getRequestDispatcher("mtsh.jsp").forward(request, response);
		}

	}

}
