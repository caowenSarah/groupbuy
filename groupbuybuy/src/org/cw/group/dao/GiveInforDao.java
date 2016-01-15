package org.cw.group.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.cw.group.bean.GiveInfor;
import org.cw.group.util.DBUtil;


public class GiveInforDao {

	public boolean insert(GiveInfor g){
		try{
			Connection conn=DBUtil.getConnection();
			String sql="insert into giveinfor values(null,?,?,?,?,?,?,?)";
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, g.getGfUser());
			st.setString(2, g.getGfTel());
			st.setString(3, g.getGfContact());
			st.setString(4, g.getGfCity());
			st.setString(5, g.getGfTrader());
			st.setString(6, g.getGfType());
			st.setString(7, g.getGfContent());
			st.executeUpdate();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return true;
	}
}
