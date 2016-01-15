package org.cw.group.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.cw.group.bean.OrderItem;
import org.cw.group.bean.Produce;
import org.cw.group.util.DBUtil;

public class OrderItemDao {
	int id;

	public boolean delete(int id,String username) {
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "delete from orderitem where oitem_id='" + id + "'and oitem_user='"+username+"'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	public int ordTotal(String flag){
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		int total=0;
		String sql;
		try{
			Connection conn=DBUtil.getConnection();
			if(flag.equals("0")){
			sql="select * from orderitem where oitem_createtime='"+datetime+"'"; 
			}else{
				sql="select * from orderitem";
			}
			PreparedStatement stmt=conn.prepareStatement(sql);
			ResultSet rs=stmt.executeQuery();
			while(rs.next()){
				total=rs.getRow();
			}
			System.out.println(total);
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();}
		return total;
	}
	public OrderItem insert(int proId, String proNum , String name, String sessionId) {
		String status ="未付款";
		OrderItem orderi = new OrderItem();
		Produce p = new Produce();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from produce where pro_id=" + proId;
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				p.setProId(rs.getInt("pro_id"));
				p.setProName(rs.getString("pro_name"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProImg1(rs.getString("pro_img2"));
				orderi.setPro(p);
			}
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
			
			String sql1 = "insert into orderitem(pro_id,oitem_image,oitem_name,oitem_price,oitem_amount,oitem_user,oitem_status,oitem_createtime,session_id) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt1 = conn.prepareStatement(sql1);
			stmt1.setInt(1, proId);
			stmt1.setString(2, orderi.getPro().getProImg1());
			stmt1.setString(3, orderi.getPro().getProName());
			stmt1.setDouble(4, orderi.getPro().getProTprice());
			stmt1.setInt(5, Integer.parseInt(proNum));
			stmt1.setString(6, name);
			stmt1.setString(7, status);
			stmt1.setDate(8, new java.sql.Date(sdf.parse(datetime).getTime()));
			stmt1.setString(9, sessionId);
			stmt1.executeUpdate();
			// String sql1=select LAST_INSERT_ID();
			
			String sql2 = "select max(oitem_id) from orderitem";
			Statement stmt2 = conn.createStatement();
			ResultSet result = stmt2.executeQuery(sql2);
			int oitemId = 0 ;
			if(result.next()){
				oitemId = result.getInt(1);
System.out.println("orderItemDao里的oitemId："+oitemId);
			}
			orderi.setOitemId(oitemId);
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return orderi;
	}

	 public List<OrderItem> list(){
	 List<OrderItem> list=new ArrayList<OrderItem>();
	 try{
	 Connection conn=DBUtil.getConnection();
	 String sql="select * from orderitem";
	 PreparedStatement stmt=conn.prepareStatement(sql);
	 ResultSet rs=stmt.executeQuery();
	 while(rs.next()){
		 OrderItem ori = new OrderItem();
			Produce p=new Produce();
			ori.setOitemId(rs.getInt("oitem_id"));
			p.setProImg1(rs.getString("oitem_image"));
			p.setProName(rs.getString("oitem_name"));
			p.setProTprice(rs.getDouble("oitem_price"));
			//p.setProTitle(rs.getString("oitem_title"));
			ori.setPro(p);
			ori.setAmount(rs.getInt("oitem_amount"));
			ori.setOitemUser(rs.getString("oitem_user"));
			ori.setOitemStatus(rs.getString("oitem_status"));
			ori.setOitemCreatetime(rs.getDate("oitem_createtime"));
			list.add(ori);
	 }
	 }catch(Exception e){
	 e.printStackTrace();
	 return null;
	 }
	 return list;
	 }
	public List<OrderItem> queryByUser(String username) {
		System.out.println(username);
		List<OrderItem> list = new ArrayList<OrderItem>();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from orderitem where oitem_user='"+username+"'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				OrderItem ori = new OrderItem();
				Produce p=new Produce();
				ori.setOitemId(rs.getInt("oitem_id"));
				p.setProId(rs.getInt("pro_id"));
				p.setProImg1(rs.getString("oitem_image"));
				p.setProName(rs.getString("oitem_name"));
				p.setProTprice(rs.getDouble("oitem_price"));
				//p.setProTitle(rs.getString("oitem_title"));
				ori.setPro(p);
				ori.setAmount(rs.getInt("oitem_amount"));
				ori.setOitemUser(rs.getString("oitem_user"));
				ori.setOitemStatus(rs.getString("oitem_status"));
				ori.setOitemCreatetime(rs.getDate("oitem_createtime"));
				list.add(ori);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return list;
	}
	public List<OrderItem> queryByStatus(String username,String status) {
		System.out.println(username);
		List<OrderItem> list = new ArrayList<OrderItem>();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from orderitem where oitem_user='"+username+"'and oitem_status='"+status+"'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				OrderItem ori = new OrderItem();
				Produce p=new Produce();
				ori.setOitemId(rs.getInt("oitem_id"));
				p.setProImg1(rs.getString("oitem_image"));
				p.setProName(rs.getString("oitem_name"));
				p.setProTprice(rs.getDouble("oitem_price"));
				//p.setProTitle(rs.getString("oitem_title"));
				ori.setPro(p);
				ori.setAmount(rs.getInt("oitem_amount"));
				ori.setOitemUser(rs.getString("oitem_user"));
				ori.setOitemStatus(rs.getString("oitem_status"));
				ori.setOitemCreatetime(rs.getDate("oitem_createtime"));
				list.add(ori);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return list;
	}
	public List<OrderItem> queryByStatus(String status) {
		
		List<OrderItem> list = new ArrayList<OrderItem>();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from orderitem where oitem_status='"+status+"'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				OrderItem ori = new OrderItem();
				Produce p=new Produce();
				ori.setOitemId(rs.getInt("oitem_id"));
				p.setProImg1(rs.getString("oitem_image"));
				p.setProName(rs.getString("oitem_name"));
				p.setProTprice(rs.getDouble("oitem_price"));
				//p.setProTitle(rs.getString("oitem_title"));
				ori.setPro(p);
				ori.setAmount(rs.getInt("oitem_amount"));
				ori.setOitemUser(rs.getString("oitem_user"));
				ori.setOitemStatus(rs.getString("oitem_status"));
				ori.setOitemCreatetime(rs.getDate("oitem_createtime"));
				list.add(ori);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return list;
	}

	public boolean updateStatus(String username,String proId,int score){
		int userscore=0;
		int buyamount=0;
		try{
			Connection conn=DBUtil.getConnection();
			String sql="update orderitem set oitem_status=? where oitem_user='"+username+"'and oitem_id='"+proId+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, "已付款");
			st.executeUpdate();
			
			
			String sqluser="select * from user where user_name='"+username+"'";
			PreparedStatement stuser=conn.prepareStatement(sqluser);
			ResultSet rs=stuser.executeQuery();
			if(rs.next()){
				userscore=rs.getInt("user_score");
				
				userscore+=score;
			}
			
			
			String sql1="update user set user_score=? where user_name='"+username+"'";
			PreparedStatement st1=conn.prepareStatement(sql1);
			st1.setInt(1, userscore);
			st1.executeUpdate();
			
			sql1="select * from produce where pro_id='"+proId+"'";
			PreparedStatement st2=conn.prepareStatement(sql1);
			ResultSet rs1=st2.executeQuery();
			if(rs1.next()){
				buyamount=rs1.getInt("pro_buyamount");
				buyamount+=1;
			}
			
			sql1="update produce set pro_buyamount=? where pro_id='"+proId+"'";
			PreparedStatement st3=conn.prepareStatement(sql1);
			st3.setInt(1, buyamount);
			st3.executeUpdate();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public int queryProNumInOrder(int proId){
		int proNum = 0;
		Connection conn =null;
		try{
			conn =DBUtil.getConnection();
			String sql="select oitem_amount from orderItem where pro_id = "+proId;
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()){
				proNum += rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
		return proNum;
	}
	
	public void updateFuKuanStatus(int oitemId){
		Connection conn = null;
		try{
			conn=DBUtil.getConnection();
			String sql="update orderitem set oitem_status='已付款' where oitem_id=" + oitemId;
			System.out.println(sql);
			PreparedStatement st=conn.prepareStatement(sql);
			st.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public OrderItem query(int oitemId){
		OrderItem o = new OrderItem();
		Produce p = new Produce();
		o.setPro(p);
		Connection conn = null;
		try{
			conn=DBUtil.getConnection();
			String sql="select * from orderitem where oitem_id = " + oitemId;
			System.out.println(sql);
			PreparedStatement st=conn.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			if(rs.next()){
				o.setOitemId(oitemId);
				o.setAmount(rs.getInt("oitem_amount"));
				p.setProId(rs.getInt("pro_id"));
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return o;
	}
}
