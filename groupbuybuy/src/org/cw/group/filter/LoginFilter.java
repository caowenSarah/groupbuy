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
		//将过滤器的请求和响应转换成HTTP的请求和响应
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)rsp;
		
		
		//检查会话中是否有已经登录的用户对象
		HttpSession session=request.getSession();
		//Order order=(Order) session.getAttribute("order");
		System.out.println("进入过滤器....");
		if((String)session.getAttribute("userName")==null){
			//如果没有登录，重定向到登陆页面
			response.sendRedirect("/groupbuying/login.jsp");
			return ;
		}else{
			chain.doFilter(req, rsp);
		}
		
		
	}
	
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
}
