package org.cw.group.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.cw.group.bean.Collection;
import org.cw.group.bean.Produce;
import org.cw.group.util.DBUtil;


public class CollectionDao {
	public boolean insert(String proId,String username){
		Produce p=new Produce();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from produce where pro_id='"+proId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				
				p.setProId(rs.getInt("pro_id"));
				p.setProImg1(rs.getString("pro_img2"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProEndTime(rs.getDate("pro_endtime"));
				
			}
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
			String sql1="insert into collections values(null,?,?,?,?,?,?,?)";
			PreparedStatement st1=conn.prepareStatement(sql1);
			st1.setInt(1, p.getProId());
			st1.setString(2,p.getProImg1());
			st1.setString(3, p.getProTitle());
			st1.setDouble(4, p.getProTprice());
			st1.setDate(5,new java.sql.Date(p.getProEndTime().getTime()));
			st1.setString(6, username);
			st1.setDate(7, new java.sql.Date(sdf.parse(datetime).getTime()));
			st1.executeUpdate();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean delete(String collId){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="delete from collections where collection_id='"+collId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			st.executeUpdate();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<Collection> list(String username){
		List<Collection> list=new ArrayList<Collection>();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from collections where collection_user='"+username+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			
			while(rs.next()){
				Collection c=new Collection();
				c.setCollId(rs.getInt("collection_id"));
				c.setCollProId(rs.getInt("collection_proid"));
				c.setCollImg(rs.getString("collection_img"));
				c.setCollPrice(rs.getDouble("collection_price"));
				c.setCollProEndTime(rs.getDate("collection_proendtime"));
				c.setCollTitle(rs.getString("collection_title"));
				c.setCollTime(rs.getDate("collection_time"));
				list.add(c);
			}
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return list;
	}

}
