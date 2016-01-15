package org.cw.group.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;


public class Page {
	
	private int m; //��ǰҳ�ĵ�һ����¼
	private int n;//��ǰҳ�����һ����¼
	private int pageCount;  //��ҳ��
	private int pageCurrent;   //��ǰҳҳ��
	private int pageSize;  //ÿҳ�м�����¼
	private int rowCount;  //�ܼ�¼��
	private String sql;
	
	
	public Page(int pageSize,String sql){
		try{
			Connection conn=DBUtil.getConnection();
			PreparedStatement stmt=conn.prepareStatement(sql);
			//System.out.print(sql);
			ResultSet rs=stmt.executeQuery();
			rs.next();
			this.rowCount=rs.getInt("rn");
		}catch(Exception e){
			e.printStackTrace();
		}
		this.pageSize=pageSize;
		this.pageCount=((rowCount%pageSize==0))?rowCount/pageSize:rowCount/pageSize+1;		
	}
	
	public int getM(){

		return (pageCurrent-1)*pageSize+1;
	}
	
	public int getN(){

		return (pageCurrent-1)*pageSize+pageSize;
	}

	
	public int getPageCount(){
		return pageCount;
	}
	

	
	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public int getPageCurrent(){
		return pageCurrent;
	}
	
	public void setPageCurrent(String pageCurrent){
		this.pageCurrent=(pageCurrent==null)?1:Integer.parseInt(pageCurrent);
		this.pageCurrent=(this.pageCurrent<1)?1:this.pageCurrent;
		this.pageCurrent=(this.pageCurrent>this.pageCount)?this.pageCount:this.pageCurrent;
	}
	
	public int getPageSize(){
		return pageSize;
	}
	
	
	public int getRowCount(){
		return rowCount;
	}

}
