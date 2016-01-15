package org.cw.group.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.cw.group.bean.Answer;
import org.cw.group.util.DBUtil;

public class AnswerDao {
	public boolean insert(Answer a){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="insert into answer values(null,?,?,?,?)";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, a.getaUser());
			st.setString(2, a.getaContent());
			st.setDate(3, new java.sql.Date(a.getaTime().getTime()));
			st.setInt(4, a.getTalkId());
			st.executeUpdate();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public boolean delete(int aId){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="delete from answer where a_id='"+aId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			st.executeUpdate();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public List<Answer> listAnswer(int talkId){
		List<Answer> list=new ArrayList<Answer>();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from answer where talk_id='"+talkId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Answer a=new Answer();
				a.setaId(rs.getInt("a_id"));
				a.setaUser(rs.getString("a_user"));
				a.setaContent(rs.getString("a_content"));
				a.setaTime(rs.getDate("a_time"));
				a.setTalkId(rs.getInt("talk_id"));
				list.add(a);
			}
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	} 

}
