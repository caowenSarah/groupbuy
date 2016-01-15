package org.cw.group.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.cw.group.bean.Trader;
import org.cw.group.util.DBUtil;


public class TraderDao {
	
	public boolean insert(Trader t){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="insert into trader values(null,?,?,?,?,?,?,?,?,?)";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, t.getTrName());
			st.setString(2, t.getTrPassword());
			st.setString(3, t.getCustomerName());
			st.setString(4, t.getInterAddress());
			st.setString(5, t.getConTel());
			st.setString(6, t.getKhBank());
			st.setString(7,t.getKhName());
			st.setString(8, t.getBankAccount());
			st.setDate(9, new java.sql.Date(t.getTrTime().getTime()));
			st.executeUpdate();
			st.close();
			conn.close();
		
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<Trader> list(){
		List<Trader> list=new ArrayList<Trader>();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from trader";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Trader t=new Trader();
				t.setTrId(rs.getInt("t_id"));
				t.setTrName(rs.getString("t_name"));
				t.setTrPassword(rs.getString("t_password"));
				t.setCustomerName(rs.getString("customer_name"));
				t.setInterAddress(rs.getString("inter_address"));
				t.setConTel(rs.getString("con_tel"));
				t.setKhBank(rs.getString("khbank"));
				t.setKhName(rs.getString("khname"));
				t.setBankAccount(rs.getString("bankaccount"));
				t.setTrTime(rs.getDate("t_time"));
				list.add(t);
			}
			rs.close();
			st.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return list;
	}
	
	public Trader queryById(String trId){
		Trader t=new Trader();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from trader where t_id='"+trId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				t.setTrId(rs.getInt("t_id"));
				t.setTrName(rs.getString("t_name"));
				t.setTrPassword(rs.getString("t_password"));
				t.setCustomerName(rs.getString("customer_name"));
				t.setInterAddress(rs.getString("inter_address"));
				t.setConTel(rs.getString("con_tel"));
				t.setKhBank(rs.getString("khbank"));
				t.setKhName(rs.getString("khname"));
				t.setBankAccount(rs.getString("bankaccount"));
				t.setTrTime(rs.getDate("t_time"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return t;
	}
	
	public Trader querytrader(String name,String pwd){
		Trader t=new Trader();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from trader where t_name='"+name+"'and t_password='"+pwd+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			if(rs.next()){
				t.setTrId(rs.getInt("t_id"));
				t.setTrName(rs.getString("t_name"));
				t.setTrPassword(rs.getString("t_password"));
				t.setCustomerName(rs.getString("customer_name"));
				t.setInterAddress(rs.getString("inter_address"));
				t.setConTel(rs.getString("con_tel"));
				t.setKhBank(rs.getString("khbank"));
				t.setKhName(rs.getString("khname"));
				t.setBankAccount(rs.getString("bankaccount"));
				t.setTrTime(rs.getDate("t_time"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return t;
	}
	
	public boolean delete(String trId){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="delete from trader where t_id='"+trId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			st.executeUpdate();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<Trader> queryByCus(String customerName){
		List<Trader> list=new ArrayList<Trader>();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from trader where customer_name='"+customerName+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs=st.executeQuery();
			while(rs.next()){
				Trader t=new Trader();
				t.setTrId(rs.getInt("t_id"));
				t.setTrName(rs.getString("t_name"));
				t.setTrPassword(rs.getString("t_password"));
				t.setCustomerName(rs.getString("customer_name"));
				t.setInterAddress(rs.getString("inter_address"));
				t.setConTel(rs.getString("con_tel"));
				t.setKhBank(rs.getString("khbank"));
				t.setKhName(rs.getString("khname"));
				t.setBankAccount(rs.getString("bankaccount"));
				t.setTrTime(rs.getDate("t_time"));
				list.add(t);
			}
			rs.close();
			st.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return list;
	}
	
	public boolean saveupdate(Trader t){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="update trader set t_name=?,t_password=?,customer_name=?,inter_address=?,con_tel=?,khbank=?,khname=?,bankaccount=?,t_time=? where t_id='"+t.getTrId()+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, t.getTrName());
			st.setString(2, t.getTrPassword());
			st.setString(3, t.getCustomerName());
			st.setString(4, t.getInterAddress());
			st.setString(5, t.getConTel());
			st.setString(6, t.getKhBank());
			st.setString(7,t.getKhName());
			st.setString(8, t.getBankAccount());
			st.setDate(9, new java.sql.Date(t.getTrTime().getTime()));
			st.executeUpdate();
			st.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
