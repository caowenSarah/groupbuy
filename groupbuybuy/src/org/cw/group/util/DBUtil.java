package org.cw.group.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
		
	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/group" +
					"?useUnicode=true&characterEncoding=GBK",
					"root","");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	
	}
	
}
