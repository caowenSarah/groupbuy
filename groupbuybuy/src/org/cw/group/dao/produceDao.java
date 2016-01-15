package org.cw.group.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.cw.group.bean.Produce;
import org.cw.group.util.DBUtil;
import org.cw.group.util.Page;


public class produceDao {
	
	public List<Produce> successPro(){
		List<Produce> list=new ArrayList<Produce>();
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from produce where pro_buyamount>=pro_lowamount";
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Produce p=new Produce();
				p.setProId(rs.getInt("pro_id"));
				p.setProCity(rs.getString("pro_city"));
				p.setProType(rs.getString("pro_type"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProMprice(rs.getDouble("pro_mprice"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProLowAmount(rs.getInt("pro_lowamount"));
				p.setProHighAmount(rs.getInt("pro_highamount"));
				p.setProStartTime(rs.getDate("pro_starttime"));
				p.setProEndTime(rs.getDate("pro_endtime"));
				p.setProCloseTime(rs.getDate("pro_closetime"));
				p.setProIntroduce(rs.getString("pro_introduce"));
				p.setProPrompt(rs.getString("pro_prompt"));
				p.setProProducer(rs.getString("pro_producer"));
				p.setProName(rs.getString("pro_name"));
				p.setProImg1(rs.getString("pro_img1"));
				p.setProImg2(rs.getString("pro_img2"));
				p.setProImg3(rs.getString("pro_img3"));
				p.setProIndent(rs.getString("pro_indent"));
				p.setProBuyAmount(rs.getInt("pro_buyamount"));
				list.add(p);
			}
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		return list;
	}
	public int proTotal(){
		int total=0;
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from produce";
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			total=rs.getRow();
			System.out.println(total);
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return total;
	}
	public List<Produce> list(String flag){
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()); 
		List<Produce> list=new ArrayList<Produce>();
		String sql;
		try
		{
			Connection conn=DBUtil.getConnection();
			if(flag.equals("0")){
				sql="select * from produce where pro_buyamount>=pro_lowamount";
			}
			else if(flag.equals("1")){
				sql="select * from produce where pro_buyamount<pro_lowamount and pro_closetime<'"+datetime+"'";
			}
			else{
			    sql="select * from produce where pro_closetime>='"+datetime+"'";
			}
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Produce p=new Produce();
				p.setProId(rs.getInt("pro_id"));
				p.setProCity(rs.getString("pro_city"));
				p.setProType(rs.getString("pro_type"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProMprice(rs.getDouble("pro_mprice"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProLowAmount(rs.getInt("pro_lowamount"));
				p.setProHighAmount(rs.getInt("pro_highamount"));
				p.setProStartTime(rs.getDate("pro_starttime"));
				p.setProEndTime(rs.getDate("pro_endtime"));
				p.setProCloseTime(rs.getDate("pro_closetime"));
				p.setProIntroduce(rs.getString("pro_introduce"));
				p.setProPrompt(rs.getString("pro_prompt"));
				p.setProProducer(rs.getString("pro_producer"));
				p.setProName(rs.getString("pro_name"));
				p.setProImg1(rs.getString("pro_img1"));
				p.setProImg2(rs.getString("pro_img2"));
				p.setProImg3(rs.getString("pro_img3"));
				p.setProIndent(rs.getString("pro_indent"));
				p.setProBuyAmount(rs.getInt("pro_buyamount"));
				list.add(p);
			}
			rs.close();
			st.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	public Produce query(String proId){
		Produce p=new Produce();
		try
		{
			Connection conn=DBUtil.getConnection();
			String sql="select * from produce where pro_id='"+proId+"'";
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()){	
				p.setProId(rs.getInt("pro_id"));
				p.setProCity(rs.getString("pro_city"));
				p.setProType(rs.getString("pro_type"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProMprice(rs.getDouble("pro_mprice"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProLowAmount(rs.getInt("pro_lowamount"));
				p.setProHighAmount(rs.getInt("pro_highamount"));
				p.setProStartTime(rs.getDate("pro_starttime"));
				
				p.setProEndTime(rs.getDate("pro_endtime"));
				p.setProCloseTime(rs.getDate("pro_closetime"));
				p.setProIntroduce(rs.getString("pro_introduce"));
				p.setProPrompt(rs.getString("pro_prompt"));
				p.setProProducer(rs.getString("pro_producer"));
				p.setProName(rs.getString("pro_name"));
				p.setProImg1(rs.getString("pro_img1"));
				p.setProImg2(rs.getString("pro_img2"));
				p.setProImg3(rs.getString("pro_img3"));
				p.setProIndent(rs.getString("pro_indent"));
				p.setProBuyAmount(rs.getInt("pro_buyamount"));
				
			}
			rs.close();
			st.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return p;
	}
	public boolean delete(String proId){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="delete from produce where pro_id='"+proId+"'";
			Statement st=conn.createStatement();
			st.executeUpdate(sql);
			st.close();
			conn.close();
			return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	public boolean saveupdate(Produce p){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="update produce set pro_city=?,pro_type=?,pro_title=?,pro_mprice=?,pro_tprice=?,pro_lowamount=?,pro_highamount=?,pro_starttime=?,pro_endtime=?,pro_closetime=?,pro_introduce=?,pro_prompt=?,pro_producer=?,pro_name=?,pro_img1=?,pro_img2=?,pro_img3=?,pro_indent=? pro_buyamount=? where pro_id='"+p.getProId()+"'";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, p.getProCity());
			st.setString(2, p.getProType());
			st.setString(3, p.getProTitle());
			st.setDouble(4, p.getProMprice());
			st.setDouble(5, p.getProTprice());
			st.setInt(6, p.getProLowAmount());
			st.setInt(7, p.getProHighAmount());
			st.setDate(8, new java.sql.Date(p.getProStartTime().getTime()));
			st.setDate(9, new java.sql.Date(p.getProEndTime().getTime()));
			st.setDate(10, new java.sql.Date(p.getProCloseTime().getTime()));
			st.setString(11, p.getProIntroduce());
			st.setString(12,p.getProPrompt());
			st.setString(13, p.getProProducer());
			st.setString(14, p.getProName());
			st.setString(15, p.getProImg1());
			st.setString(16, p.getProImg2());
			st.setString(17, p.getProImg3());
			st.setString(19, p.getProIndent());
			st.setInt(20, p.getProBuyAmount());
			st.executeUpdate();
			st.close();
			conn.close();
			return true;					
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean insert(Produce p){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="insert into produce values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, p.getProCity());
			st.setString(2, p.getProType());
			st.setString(3, p.getProTitle());
			st.setDouble(4, p.getProMprice());
			st.setDouble(5, p.getProTprice());
			st.setInt(6, p.getProLowAmount());
			st.setInt(7, p.getProHighAmount());
			st.setDate(8, new java.sql.Date(p.getProStartTime().getTime()));
			st.setDate(9, new java.sql.Date(p.getProEndTime().getTime()));
			st.setDate(10, new java.sql.Date(p.getProCloseTime().getTime()));
			st.setString(11, p.getProIntroduce());
			st.setString(12,p.getProPrompt());
			st.setString(13, p.getProProducer());
			st.setString(14, p.getProName());
			st.setString(15, p.getProImg1());
			st.setString(16, p.getProImg2());
			st.setString(17, p.getProImg3());
			st.setString(18, p.getProIndent());
			st.setInt(19, p.getProBuyAmount());
			st.executeUpdate();
			st.close();
			conn.close();
			return true;					
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	public List<Produce> listformer(Page page,String city){
		List<Produce> list=new ArrayList<Produce>();
		
		String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		try{
			Connection conn=DBUtil.getConnection();
			String sql="select * from produce where pro_endtime<'"+datetime+"' order by pro_id limit "+page.getM()+" , "+page.getN();
			Statement st=conn.createStatement();
			System.out.print(sql);
			ResultSet rs=st.executeQuery(sql);
			
			while(rs.next()){
				Produce p=new Produce();
				p.setProId(rs.getInt("pro_id"));
				p.setProCity(rs.getString("pro_city"));
				p.setProType(rs.getString("pro_type"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProMprice(rs.getDouble("pro_mprice"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProLowAmount(rs.getInt("pro_lowamount"));
				p.setProHighAmount(rs.getInt("pro_highamount"));
				p.setProStartTime(rs.getDate("pro_starttime"));
				p.setProEndTime(rs.getDate("pro_endtime"));
				p.setProCloseTime(rs.getDate("pro_closetime"));
				p.setProIntroduce(rs.getString("pro_introduce"));
				p.setProPrompt(rs.getString("pro_prompt"));
				p.setProProducer(rs.getString("pro_producer"));
				p.setProName(rs.getString("pro_name"));
				p.setProImg1(rs.getString("pro_img1"));
				p.setProImg2(rs.getString("pro_img2"));
				p.setProImg3(rs.getString("pro_img3"));
				p.setProIndent(rs.getString("pro_indent"));
				p.setProBuyAmount(rs.getInt("pro_buyamount"));
				list.add(p);
			}
			rs.close();
			st.close();
			conn.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Produce> listtoday(String city,String currentPage){
//		int pageSize = 6 ;
//		int page =0;
//		int startRow = 0;
//		if(!"".equals(currentPage)){
//			page = Integer.parseInt(currentPage);
//			startRow = (page-1)*pageSize;
//		}
		List<Produce> list=new ArrayList<Produce>();
		
		try{
			Connection conn=DBUtil.getConnection();
//			String sql0 = "select count(*) as count from produce "; 
//			Statement st0 = conn.createStatement();
//			ResultSet rs0 = st0.executeQuery(sql0);
//			int rowCount = rs0.getInt("count");
			
//			int pageCount=((rowCount%pageSize==0))?rowCount/pageSize:rowCount/pageSize+1;		
//			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
			String sql="select * from produce where pro_starttime<'"+datetime+"' and pro_endtime>'"+datetime+
				"' and pro_city='"+city+"'" ;
//					+	" limit "+startRow+","+pageSize;
			Statement st=conn.createStatement();
	       // System.out.print(sql);
			ResultSet rs=st.executeQuery(sql);
			
			while(rs.next()){
				Produce p=new Produce();
				p.setProId(rs.getInt("pro_id"));
				p.setProCity(rs.getString("pro_city"));
				p.setProType(rs.getString("pro_type"));
				p.setProTitle(rs.getString("pro_title"));
				p.setProMprice(rs.getDouble("pro_mprice"));
				p.setProTprice(rs.getDouble("pro_tprice"));
				p.setProLowAmount(rs.getInt("pro_lowamount"));
				p.setProHighAmount(rs.getInt("pro_highamount"));
				p.setProStartTime(rs.getDate("pro_starttime"));
				p.setProEndTime(rs.getDate("pro_endtime"));
				p.setProCloseTime(rs.getDate("pro_closetime"));
				p.setProIntroduce(rs.getString("pro_introduce"));
				p.setProPrompt(rs.getString("pro_prompt"));
				p.setProProducer(rs.getString("pro_producer"));
				p.setProName(rs.getString("pro_name"));
				p.setProImg1(rs.getString("pro_img1"));
				p.setProImg2(rs.getString("pro_img2"));
				p.setProImg3(rs.getString("pro_img3"));
				p.setProIndent(rs.getString("pro_indent"));
				p.setProBuyAmount(rs.getInt("pro_buyamount"));
				list.add(p);
			}
			rs.close();
			st.close();
			conn.close();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	public void updateProBuyAmount(int proId, int amount) {
		// TODO Auto-generated method stub
		try{
			Connection conn=DBUtil.getConnection();
			String sql="update produce set pro_buyamount = pro_buyamount +"+ amount+" where pro_id ="+proId;
			Statement st=conn.createStatement();
			st.executeUpdate(sql);
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}
