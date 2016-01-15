package org.cw.group.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SetCharacterEncodingFilter implements Filter {

	protected String encoding = null;
	protected FilterConfig filterconfig = null;
	protected boolean ignore = true;

	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterconfig = filterConfig;
		this.encoding = filterConfig.getInitParameter("enocding");
		String value = filterConfig.getInitParameter("ignore");

		if (value == null) {
			this.ignore = true;
		} else if (value.equalsIgnoreCase("true")) {
			this.ignore = true;
		} else if (value.equalsIgnoreCase("yes")) {
			this.ignore = true;
		} else {
			this.ignore = false;
		}

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		if (ignore || (request.getCharacterEncoding() == null)) {
			String encoding = selectEncoding(request);
			if (encoding != null) {
				request.setCharacterEncoding(encoding);
			}
			response.setContentType("text/html;charset=" + encoding);
			chain.doFilter(request, response);//调用下一个过滤器，如果没有的话直接将请求转给目标资源
		}
	}

	protected String selectEncoding(ServletRequest request) {
		return (this.encoding);
	}

	public void destroy() {
		this.encoding = null;
		this.filterconfig = null;
	}
}
/*
 * 这个过滤器利用程序在web.xml中配置的两个初始化参数来设置正文请求使用的编码，encoding和ignore，前者是用来设定使用编码，后者是用于设定是否忽略客户说指定的编码，默認值是TRUE；
 * init()方法中，獲得過濾器的初始化參數，并根據參數igrone設定值的，確定Boolean類型的實例化ignore；
 * if (ignore || (request.getCharacterEncoding() == null)) {--------chain.doFilter(request, response);判斷ignore是否為TRUE，以及客戶端是否指定了編碼方式，然後根據判斷結果設置請求正式的編碼方式
 * response.setContentType("text/html;charset=" + encoding); 這句設置响应正文的ＭＩＭＥ类型和编码格式，这一句必须是在chain.doFilter()之前调用；
 * 
 * 
 * 
 * */
 