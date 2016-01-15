package org.cw.group.listener;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.cw.group.bean.Order;
import org.cw.group.bean.OrderItem;
import org.cw.group.util.DBUtil;

public  class MySessionListener implements HttpSessionListener{
	
	public void sessionCreated(HttpSessionEvent httpSessionEvent){
		HttpSession session=httpSessionEvent.getSession();
		System.out.println("Session Start!");
		Order order=new Order();
		session.setAttribute("order",order);
		order.setSessionId((String)session.getId());
		order.setList(new ArrayList<OrderItem>());
		
		try{
			Connection  conn=DBUtil.getConnection();
			String sql="insert into ordert(session_id) values('"+order.getSessionId()+"')";
			System.out.print(sql);
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.executeUpdate();
			
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void sessionDestroyed(HttpSessionEvent httpSessionEvent){
		try{
			HttpSession session=httpSessionEvent.getSession();
			Order order=(Order)session.getAttribute("order");
			String sessionId=order.getSessionId();
			
			Connection conn=DBUtil.getConnection();
			String sql="delete from ordert where session_id='"+sessionId+"'";
			System.out.print(sql);
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.executeUpdate();
			conn.close();
			
		}catch(Exception e){
			
		}
	}
}
