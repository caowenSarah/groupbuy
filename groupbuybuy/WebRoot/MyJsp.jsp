<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page language="java" import="org.cw.group.util.*"%>
<%@ page language="java" import="org.cw.group.bean.*"%>
<% 
	int proId=Integer.parseInt(request.getParameter("proId"));
	String username = (String) session.getAttribute("userName");
	System.out.println(username+"000000");
	
	
	Order order=(Order)session.getAttribute("order");           
	List<OrderItem> list=order.getList();
	
	
	
	boolean flag=StringUtil.contains(list,proId);
	System.out.println(flag);
	if(flag)
		out.print(1);
	else
		request.getRequestDispatcher("orderitemservlet?action=insert&proId="+proId+"&username="+username).forward(request,response);
%>