package org.cw.group.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cw.group.bean.Order;
import org.cw.group.bean.OrderItem;
import org.cw.group.bean.Produce;
import org.cw.group.dao.OrderItemDao;
import org.cw.group.dao.produceDao;

public class orderitemservlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		request.setCharacterEncoding("GBK");
		String action = request.getParameter("action");

		if (action.equals("insert")) {
			insert(request, response);
		} else if (action.equals("list")) {
			list(request, response);
		} else if (action.equals("delete")) {
			delete(request, response);
		} else if (action.equals("queryByUser")) {
			queryByUser(request, response);
		} else if (action.equals("queryByStatus")) {
			queryByStatus(request, response);
		} else if(action.equals("updateStatus")){
			updateStatus(request,response);
		} else if(action.equals("fukuan")){
			fukuan(request,response);
		}

	}

	private void updateStatus(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String proId = request.getParameter("proId");
		double price=Double.parseDouble(request.getParameter("price"));
		System.out.println(price);
		int score=(int) Math.round(price);
		System.out.println(score);
		
		OrderItemDao dao=new OrderItemDao();
		boolean result=dao.updateStatus(username,proId,score);
		if(result){
			list(request,response);
		}

	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String city=request.getParameter("city");
		String proId = request.getParameter("proId");
		String username = request.getParameter("username");
		HttpSession session = request.getSession();
		Order order = (Order) session.getAttribute("order");
		List<OrderItem> list = order.getList();

		//int position = StringUtil.indexOf(list, Integer.parseInt(proId));
		//System.out.println("position=" + position);
		//list.remove(position);

		OrderItemDao dao = new OrderItemDao();
		boolean result = dao.delete(Integer.parseInt(proId), username);
		if (result) {

			queryByUser(request, response);
		}

	}

	private void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String city=request.getParameter("city");
		String proNum = request.getParameter("dnumber");
		String proId = request.getParameter("proId");
		String username = request.getParameter("userName");

		try {
			OrderItemDao dao = new OrderItemDao();
			HttpSession session = request.getSession();

			Order order = (Order) session.getAttribute("order");
//			List<OrderItem> list = order.getList();
//			 System.out.println(order.getSessionId());
			OrderItem ori = dao.insert(
					Integer.parseInt(proId), 
					proNum,
					username, 
					order.getSessionId());
			// System.out.println(list.size());
//			list.add(ori);
			OrderItemDao odao = new OrderItemDao();
			int produceId = Integer.parseInt(proId);
			int proNumInOrder = odao.queryProNumInOrder(produceId);
			produceDao pdao = new produceDao();
			Produce p = pdao.query(proId);
			
//			request.setAttribute("city", city);
			request.setAttribute("proNum", proNum);
			request.setAttribute("oitemId", ori.getOitemId()+"");
			request.setAttribute("p", p);
			request.setAttribute("proNumInOrder", proNumInOrder);
			request.getRequestDispatcher("order/yourdingdan.jsp").forward(request,response);

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	private void queryByUser(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
//		String city=request.getParameter("city");
		String city = "tianjin";
		String username = request.getParameter("username");
		try {
			OrderItemDao dao = new OrderItemDao();
			List<OrderItem> list = dao.queryByUser(username);
			if (list == null) {
			} else {
//				request.setAttribute("city", city);
				request.setAttribute("list", list);
				request.getRequestDispatcher("alldingdan.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void queryByStatus(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String city=request.getParameter("city");
		String username = request.getParameter("username");
		String status = request.getParameter("status");
		List<OrderItem> list;

		if (status.equals("0"))
			status = "未付款";
		else
			status = "已付款";

		try {
			OrderItemDao dao = new OrderItemDao();
			if (username == null&&status.equals("已付款")) {
				list = dao.queryByStatus(status);
				if (list == null) {

				} else {
					request.setAttribute("city", city);
					request.setAttribute("list", list);
					request.getRequestDispatcher("yifukuan.jsp").forward(
							request, response);
				}
			}else if (username == null&&status.equals("未付款")) {
				list = dao.queryByStatus(status);
				if (list == null) {

				} else {
					request.setAttribute("city", city);
					request.setAttribute("list", list);
					request.getRequestDispatcher("weifukuan.jsp").forward(
							request, response);
				}
			}
			else {
				list = dao.queryByStatus(username, status);

				if (list == null) {

				} else {
					request.setAttribute("city", city);
					request.setAttribute("list", list);
					request.getRequestDispatcher("alldingdan.jsp").forward(
							request, response);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private void list(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String city=request.getParameter("city");
		try {
			OrderItemDao dao = new OrderItemDao();
			List<OrderItem> list = dao.list();
			if (list == null) {

			} else {
				request.setAttribute("city", city);
				request.setAttribute("list", list);
				request.getRequestDispatcher("dangqiandingdan.jsp").forward(
						request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void fukuan(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		try {
			String totalPrice = request.getParameter("totalPrice");
			String oitemId = request.getParameter("oitemId");
			System.out.println(totalPrice);
			OrderItemDao dao = new OrderItemDao();
			OrderItem o = dao.query(Integer.parseInt(oitemId));
			dao.updateFuKuanStatus(Integer.parseInt(oitemId));
			produceDao pdao = new produceDao();
			pdao.updateProBuyAmount(o.getPro().getProId(),o.getAmount());
			request.setAttribute("totalPrice", totalPrice);
			request.getRequestDispatcher("fukuanok.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
