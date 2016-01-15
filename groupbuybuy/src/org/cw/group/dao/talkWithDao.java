package org.cw.group.dao;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.cw.group.bean.talkwith;
import org.cw.group.util.DBUtil;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class talkWithDao {
	//查询所有记录
     public List<talkwith> getall()
     {
    	 List<talkwith> list = new ArrayList<talkwith>();
         talkwith tw =null;
    	 try{
    		 Connection con = (Connection) DBUtil.getConnection();
    		 String sql = "select * from talkwith";
    		 Statement stmt = (Statement) con.createStatement();
    		 ResultSet rs = stmt.executeQuery(sql);
    		 while(rs.next())
    		 {
    			 tw = new talkwith();
    			 tw.setTalkid(rs.getInt("talk_id"));
    			 tw.setTalkTopic(rs.getString("talk_topic"));
    			 tw.setTalkUser(rs.getString("talk_user"));
    			 tw.setTalkAddress(rs.getString("talk_user"));
    			 tw.setTalkAddress(rs.getString("talk_address"));
    			 tw.setTalkTime(rs.getDate("talk_time"));
    			 tw.setTalkInfo(rs.getString("talk_info"));
    			 list.add(tw);
    		 }
    		 stmt.close();
    		 con.close();
    	 }catch(Exception e)
    	 {
    		 e.printStackTrace();
    	 }
    	 return list;
     }
     //添加记录
     public boolean insert(talkwith tw)
     {
    	
    	 try
    	 {
    		 Connection con = (Connection) DBUtil.getConnection();
    		 String sql ="insert into talkwith values(null,?,?,?,?,?)";
    		 PreparedStatement stmt = (PreparedStatement) con.prepareStatement(sql);    		 
    		 stmt.setString(1, tw.getTalkTopic());
    		 stmt.setString(2,tw.getTalkUser());
    		 stmt.setString(3, tw.getTalkAddress());
    		 stmt.setDate(4, new java.sql.Date(new java.util.Date().getTime()));
    		 stmt.setString(5, tw.getTalkInfo());
    		 stmt.executeUpdate();
    		 stmt.close();
    		 con.close();
    		 return true;
    	 }catch(Exception e)
    	 {
    		 e.printStackTrace();
    		 return false;
    	 }
     }
     public talkwith query(int tId){
    	
         talkwith tw =null;
    	 try{
    		 Connection con = (Connection) DBUtil.getConnection();
    		 String sql = "select * from talkwith where talk_id='"+tId+"'";
    		 Statement stmt = (Statement) con.createStatement();
    		 ResultSet rs = stmt.executeQuery(sql);
    		if(rs.next())
    		 {
    			 tw = new talkwith();
    			 tw.setTalkid(rs.getInt("talk_id"));
    			 tw.setTalkTopic(rs.getString("talk_topic"));
    			 tw.setTalkUser(rs.getString("talk_user"));
    			 tw.setTalkAddress(rs.getString("talk_user"));
    			 tw.setTalkAddress(rs.getString("talk_address"));
    			 tw.setTalkTime(rs.getDate("talk_time"));
    			 tw.setTalkInfo(rs.getString("talk_info"));
    			;
    		 }
    		 stmt.close();
    		 con.close();
    	 }catch(Exception e)
    	 {
    		 e.printStackTrace();
    	 }
    	 return tw;
     }
}
