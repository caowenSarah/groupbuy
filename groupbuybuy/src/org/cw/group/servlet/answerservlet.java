package org.cw.group.servlet;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.cw.group.bean.Answer;
import org.cw.group.bean.talkwith;
import org.cw.group.dao.AnswerDao;
import org.cw.group.dao.talkWithDao;

public class answerservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			response.setContentType("text/html;charset=GBK");
			request.setCharacterEncoding("GBK");
			String action=request.getParameter("action");
			if(action.equals("listanswer"))
				listanswer(request,response);
			else if(action.equals("delete"))
				delete(request,response);
			else if(action.equals("insert"))
				insert(request,response);
		
	}
	public void insert(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String city=request.getParameter("ctiy");
		String userName = request.getParameter("userName");
		String content=request.getParameter("content");
		String talkId=request.getParameter("talkId");
		try {
		Answer a=new Answer();
		a.setaUser(userName);
		a.setaContent(content);
		a.setTalkId(Integer.parseInt(talkId));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		a.setaTime(sdf.parse(datetime));
		AnswerDao dao=new AnswerDao();
		boolean result=dao.insert(a);
		if(result){
			listanswer(request,response);
		}
		else{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String aId=request.getParameter("aId");
		String talkId=request.getParameter("talkId");
		String city=request.getParameter("ctiy");
		AnswerDao dao=new AnswerDao();
		boolean result=dao.delete(Integer.parseInt(aId));
		if(result){
			listanswer(request,response);
		}else{
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	
	public void listanswer(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String city=request.getParameter("city");
		String talkId=request.getParameter("talkId");
		talkWithDao tdao=new talkWithDao();
		talkwith t=new talkwith();
		t=tdao.query(Integer.parseInt(talkId));
		String topic=t.getTalkTopic();
		
		AnswerDao dao=new AnswerDao();
		List<Answer> list=dao.listAnswer(Integer.parseInt(talkId));
		
		if(list==null){
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}else{
			request.setAttribute("city", city);
			request.setAttribute("talkId", talkId);
			request.setAttribute("topic", topic);
			request.setAttribute("list", list);
			request.getRequestDispatcher("answers.jsp").forward(request, response);
		}
		
	}
	

}
