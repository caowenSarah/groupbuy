package org.cw.group.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.cw.group.bean.Wzmt;
import org.cw.group.util.DBUtil;

public class wzmtDao {
    public Wzmt getone() 
    {
      Wzmt wz = new Wzmt();
      try{
    	   Connection con=DBUtil.getConnection();
    	      String sql="select * from wzmt";
    		  PreparedStatement stmt  = con.prepareStatement(sql);
    		  ResultSet rs=stmt.executeQuery();
    		  while(rs.next())
    		  {
    			  
    	        
    	          wz.setFenxiang(rs.getString("fenxiang"));
    	          wz.setJfsmh(rs.getString("jfsmh"));
    	          wz.setJfsmhnr(rs.getString("jfsmhnr"));
    	          wz.setJttgbuzemgm(rs.getString("jttgbuzemgm"));
    	          wz.setJttgbuzemgmnr(rs.getString("jttgbuzemgmnr"));
    	          wz.setMtssh(rs.getString("mtssh"));
    	          wz.setMtsshhnr(rs.getString("mtsshnr"));
    	          wz.setMtssm(rs.getString("mtssm"));
    	          wz.setMymti(rs.getString("mymti"));
    	          wz.setMymtjnr(rs.getString("mymtjnr"));
    	          wz.setPingjia(rs.getString("pingjia"));
    	          wz.setRhfk(rs.getString("rhfk"));
    	          wz.setRhfknr(rs.getString("rhfknr"));
    	          wz.setRhtjyj(rs.getString("rhtjyj"));
    	          wz.setRhtjyjnr(rs.getString("rhtjyjnr"));
    	          wz.setShsmtj(rs.getString("shsmtj"));
    	          wz.setShsmtjnr(rs.getString("shsmtjnr"));
    	          wz.setSjzztglx(rs.getString("sjzztglx"));
    	          wz.setSjzztglxnr(rs.getString("sjzztglxnr"));
    	          wz.setSmqktk(rs.getString("smqktk"));
    	          wz.setSmqktknr(rs.getString("smqktknr"));
    	          wz.setSymtjyh(rs.getString("symtjyh"));
    	          wz.setSymtjyhnr(rs.getString("symtjyhnr"));
    	          wz.setTgrsbz(rs.getString("tgrsbz"));
    	          wz.setTgrsbznr(rs.getString("tgrsbznr"));
    	          wz.setWshdyj(rs.getString("wshdyj"));
    	          wz.setWshdyjnr(rs.getString("wshdyjnr"));
    	          wz.setXiaofei(rs.getString("xiaofei"));
    	          
    	        
    	          
    		  }	  
              con.close();
          	
      }catch(Exception e)
	  {
		  e.printStackTrace();
	  } 
        
   
	return wz;

    }
}
