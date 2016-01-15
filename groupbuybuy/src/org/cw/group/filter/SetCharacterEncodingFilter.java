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
			chain.doFilter(request, response);//������һ�������������û�еĻ�ֱ�ӽ�����ת��Ŀ����Դ
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
 * ������������ó�����web.xml�����õ�������ʼ��������������������ʹ�õı��룬encoding��ignore��ǰ���������趨ʹ�ñ��룬�����������趨�Ƿ���Կͻ�˵ָ���ı��룬Ĭ�Jֵ��TRUE��
 * init()�����У��@���^�V���ĳ�ʼ������������������igrone�O��ֵ�ģ��_��Boolean��͵Č�����ignore��
 * if (ignore || (request.getCharacterEncoding() == null)) {--------chain.doFilter(request, response);�Д�ignore�Ƿ��TRUE���Լ��͑����Ƿ�ָ���˾��a��ʽ��Ȼ������Д�Y���O��Ո����ʽ�ľ��a��ʽ
 * response.setContentType("text/html;charset=" + encoding); �@���O����Ӧ���ĵģͣɣͣ����ͺͱ����ʽ����һ���������chain.doFilter()֮ǰ���ã�
 * 
 * 
 * 
 * */
 