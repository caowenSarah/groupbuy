package org.cw.group.servlet;


import java.io.IOException;
import java.io.PrintWriter;
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
import org.cw.group.bean.User;
import org.cw.group.dao.userDao;

public class userservlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			doPost(request,response);
			response.setContentType("text/html");
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("GBK");
		response.setContentType("text/html;charset=GBK");
		
		String action = request.getParameter("action");
		 if(action.equals("insert"))
			 insert(request,response);
		 else if(action.equals("list"))
		 	 list(request,response);
		 else if(action.equals("saveupdate"))
			saveupdate(request,response);
		 else if (action.equals("query"))
			 query(request,response);
		 else if(action.equals("update"))
			 update(request,response);
		 else if(action.equals("delete"))
			 delete(request,response);
		 else if(action.equals("queryuser"))
			 queryuser(request,response);
		 else if(action.equals("queryById"))
			 queryById(request,response);
		 	
		
	}
	public int insert(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String city=request.getParameter("city");
		String userName=request.getParameter("username");
		String userPassword=request.getParameter("password");
		String userEmail=request.getParameter("useremail");
		String userTel=request.getParameter("mobile");
		String userCity=request.getParameter("city_id");
		userDao dao=new userDao();
		User u1 = dao.queryByEmail(userEmail);
		if(u1!=null){
			request.setAttribute("msg", "此邮箱已经注册过！");
			request.getRequestDispatcher("regedit.jsp").forward(request, response);
			return -1;//此邮箱已经注册过
		}
		User u2 = dao.queryByTel(userTel);
		if(u2!=null){
			request.setAttribute("msg", "此电话号码已经注册过！");
			request.getRequestDispatcher("regedit.jsp").forward(request, response);
			return -2;//此电话已经注册过
		}
		User u3 = dao.queryByUsername(userName);
		if(u3!=null){
			request.setAttribute("msg", "此用户名已被注册！");
			request.getRequestDispatcher("regedit.jsp").forward(request, response);
			return -3;//此用户名已被注册
		}
		try{
			User u=new User();
			u.setUserName(userName);
			u.setUserPassword(userPassword);
			u.setUserEmail(userEmail);
			u.setUserCity(userCity);
			u.setUserTel(userTel);
			u.setUserRealName(null);
			u.setUserQq(null);
			u.setUserZipCode(null);
			u.setUserPostAdd(null);
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
			u.setUserCreateTime(sdf.parse(datetime));
			u.setUserScore(0);
			u.setUserAccount(0.0);
			u.setUserStatus(1);
			u.setUserPower("1");
			boolean result=dao.insert(u);
			if(result){
				request.setAttribute("city", city);
				request.setAttribute("username", userName);
				request.getRequestDispatcher("regeditok.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("fail.jsp").forward(request, response);
			}
		return 1;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String userId=request.getParameter("userId");
		userDao dao=new userDao();
		boolean result=dao.delete(userId);
		if(result){
			list(request,response);
		}
		else
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String flag=request.getParameter("flag");
		System.out.println(flag);
		userDao dao=new userDao();
		List list=dao.list();
		
		if(list!=null)
		{
			request.setAttribute("list", list);
		
			if(flag==null)
			request.getRequestDispatcher("userlist.jsp").forward(request, response);
			else
				request.getRequestDispatcher("administerlist.jsp").forward(request, response);
			
			
			
		}
		
		else
			request.getRequestDispatcher("fail.jsp");
		
	}
	public void queryById(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String city=request.getParameter("city");
		String userId=request.getParameter("id");
		User u=new User();
		userDao dao=new userDao();
		u=dao.queryById(userId);
		if(u!=null){
			request.setAttribute("city", city);
			request.setAttribute("user", u);
			request.getRequestDispatcher("edituser.jsp").forward(request, response);
		}
		else
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		
		
	}
	
	public void query(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String username=request.getParameter("username");
		User u=new User();
		userDao dao=new userDao();
		u=dao.query(username);
		if(u!=null){
			request.setAttribute("user", u);
			request.getRequestDispatcher("tijiaodingdan.jsp").forward(request, response);
		}
		else
			request.getRequestDispatcher("fail.jsp").forward(request, response);
		
		
	}
	
	private void queryuser(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

		  String userName = request.getParameter("username");
		  String userPwd = request.getParameter("password");
		  userDao dao = new userDao();
		  User u = dao.queryuser(userName,userPwd);
		  HttpSession session = request.getSession();
		  
		  if(u!=null){
			  int status = u.getUserStatus();
			  String username = u.getUserName();
			  if(u.getUserStatus()==0)  {
				  	 List<OrderItem> list=new ArrayList<OrderItem>();
				     session.setAttribute("id",status);
				     session.setAttribute("userName",username);
				     session.setAttribute("list",list);
				     request.getRequestDispatcher("bgindex.jsp").forward(request, response);
			   }else{
			    	 List<OrderItem> list=new ArrayList<OrderItem>();
				     session.setAttribute("id",status);
				     session.setAttribute("userName",username);
				     session.setAttribute("list",list);
				     request.getRequestDispatcher("index.jsp").forward(request, response);
			   }
		  }
  	  else 
  		  request.getRequestDispatcher("fail.jsp").forward(request, response);
}
	public void update(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String userId=request.getParameter("userId");
		userDao dao=new userDao();
		User u=dao.query(userId);
		if(u!=null)
		{
			request.setAttribute("user", u);
			request.getRequestDispatcher("userupdate.jsp").forward(request, response);
		}
		else
			request.getRequestDispatcher("fail.jsp");
		
	}
	public void saveupdate(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		String userId=request.getParameter("id");
		String userName=request.getParameter("userName");
		String userPassword=request.getParameter("password");
		String userTel=request.getParameter("userTel");
		String userCity=request.getParameter("userCity");
		String userRealName=request.getParameter("realName");
		String userZipCode=request.getParameter("zipcode");
		String userQq=request.getParameter("qq");
		String userPostAdd=request.getParameter("address");
		String userEmail=request.getParameter("userEmail");
		User u=new User();
		u.setUserId(Integer.parseInt(userId));
		u.setUserName(userName);
		u.setUserPassword(userPassword);
		u.setUserRealName(userRealName);
		u.setUserZipCode(userZipCode);
		u.setUserQq(userQq);
		u.setUserPostAdd(userPostAdd);
		u.setUserTel(userTel);
		u.setUserCity(userCity);
		u.setUserEmail(userEmail);
		userDao dao=new userDao();
		boolean result=dao.saveupdate(u);
		if(result)
		{
			queryById(request,response);
		}
		else{
			request.getRequestDispatcher("fail.jsp");
		}
		
	}

}
