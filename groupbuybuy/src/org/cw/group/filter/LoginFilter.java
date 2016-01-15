package org.cw.group.filter;


import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.cw.group.bean.Order;


public class LoginFilter implements Filter{

	
	public void destroy() {

	}
	
	public void doFilter(ServletRequest req, ServletResponse rsp,
			FilterChain chain) throws IOException, ServletException {
		//�����������������Ӧת����HTTP���������Ӧ
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)rsp;
		
		
		//���Ự���Ƿ����Ѿ���¼���û�����
		HttpSession session=request.getSession();
		//Order order=(Order) session.getAttribute("order");
		System.out.println("���������....");
		if((String)session.getAttribute("userName")==null){
			//���û�е�¼���ض��򵽵�½ҳ��
			response.sendRedirect("/groupbuying/login.jsp");
			return ;
		}else{
			chain.doFilter(req, rsp);
		}
		
		
	}
	
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
}
