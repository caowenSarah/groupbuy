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

import org.cw.group.bean.User;
import org.cw.group.util.DBUtil;


public class userDao {

	public int regTotal(String flag) {
		String datetime = new SimpleDateFormat("yyyy-MM-dd").format(Calendar
				.getInstance().getTime());
		int total = 0;
		String sql;
		try {
			Connection conn = DBUtil.getConnection();
			if (flag.equals("0")) {
				sql = "select * from user where user_createtime='" + datetime
						+ "'";
			} else {
				sql = "select * from user";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				total = rs.getRow();
			}
			System.out.println(total);
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return total;
	}

	public boolean insert(User u) {
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "insert into user values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, u.getUserName());
			stmt.setString(2, u.getUserPassword());
			stmt.setString(3, u.getUserEmail());
			stmt.setString(4, u.getUserCity());
			stmt.setString(5, u.getUserTel());
			stmt.setString(6, u.getUserRealName());
			stmt.setString(7, u.getUserQq());
			stmt.setString(8, u.getUserZipCode());
			stmt.setString(9, u.getUserPostAdd());
			stmt
					.setDate(10, new java.sql.Date(u.getUserCreateTime()
							.getTime()));
			stmt.setInt(11, u.getUserScore());
			stmt.setDouble(12, u.getUserAccount());
			stmt.setInt(13, u.getUserStatus());
			stmt.setString(14, u.getUserPower());
			stmt.executeUpdate();
			stmt.close();
			conn.close();
			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;

	}

	public User queryById(String userid) {
		User u = new User();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from user where user_id='" + userid + "'";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				u.setUserId(rs.getInt("user_id"));
				u.setUserName(rs.getString("user_name"));
				u.setUserPassword(rs.getString("user_password"));
				u.setUserTel(rs.getString("user_tel"));
				u.setUserCity(rs.getString("user_city"));
				u.setUserRealName(rs.getString("user_realname"));
				u.setUserQq(rs.getString("user_qq"));
				u.setUserZipCode(rs.getString("user_zipcode"));
				u.setUserPostAdd(rs.getString("user_postadd"));
				u.setUserCreateTime(rs.getDate("user_createtime"));
				u.setUserEmail(rs.getString("user_email"));
				u.setUserScore(rs.getInt("user_score"));
				u.setUserAccount(rs.getDouble("user_account"));
				u.setUserStatus(rs.getInt("user_status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public User query(String username) {
		User u = new User();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from user where user_name='" + username
					+ "'";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				u.setUserId(rs.getInt("user_id"));
				u.setUserName(rs.getString("user_name"));
				u.setUserPassword(rs.getString("user_password"));
				u.setUserTel(rs.getString("user_tel"));
				u.setUserCity(rs.getString("user_city"));
				u.setUserRealName(rs.getString("user_realname"));
				u.setUserQq(rs.getString("user_qq"));
				u.setUserZipCode(rs.getString("user_zipcode"));
				u.setUserPostAdd(rs.getString("user_postadd"));
				u.setUserCreateTime(rs.getDate("user_createtime"));
				u.setUserEmail(rs.getString("user_email"));
				u.setUserScore(rs.getInt("user_score"));
				u.setUserAccount(rs.getDouble("user_account"));
				u.setUserStatus(rs.getInt("user_status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean delete(String userId) {
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "delete from user where user_id='" + userId + "'";
			PreparedStatement st = conn.prepareStatement(sql);
			st.executeUpdate();
			st.close();
			conn.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<User> list() {

		List<User> list = new ArrayList<User>();
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from user";
			PreparedStatement st = conn.prepareStatement(sql);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				User u = new User();
				u.setUserId(rs.getInt("user_id"));
				u.setUserName(rs.getString("user_name"));
				u.setUserPassword(rs.getString("user_password"));
				u.setUserTel(rs.getString("user_tel"));
				u.setUserCity(rs.getString("user_city"));
				u.setUserRealName(rs.getString("user_realname"));
				u.setUserQq(rs.getString("user_qq"));
				u.setUserZipCode(rs.getString("user_zipcode"));
				u.setUserPostAdd(rs.getString("user_postadd"));
				u.setUserCreateTime(rs.getDate("user_createtime"));
				u.setUserEmail(rs.getString("user_email"));
				u.setUserScore(rs.getInt("user_score"));
				u.setUserAccount(rs.getDouble("user_account"));
				u.setUserStatus(rs.getInt("user_status"));
				u.setUserPower(rs.getString("user_power"));
				list.add(u);

			}
			st.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public User queryuser(String userName, String userPwd) {

		User u = null;
		try {
			Connection conn = DBUtil.getConnection();
			String sql = " select * from user where user_name=? and user_password=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, userName);
			stmt.setString(2, userPwd);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setUserName(rs.getString("user_name"));
				u.setUserPassword(rs.getString("user_password"));
				u.setUserStatus(rs.getInt("user_status"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return u;
	}

	public boolean saveupdate(User u) {
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "update user set user_name=?,user_password=?,user_email=?,user_city=?,user_tel=?,user_realname=?,user_qq=?,user_zipcode=?,user_postadd=? where user_id='"
					+ u.getUserId() + "'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, u.getUserName());
			stmt.setString(2, u.getUserPassword());
			stmt.setString(3, u.getUserEmail());
			stmt.setString(4, u.getUserCity());
			stmt.setString(5, u.getUserTel());
			stmt.setString(6, u.getUserRealName());
			stmt.setString(7, u.getUserQq());
			stmt.setString(8, u.getUserZipCode());
			stmt.setString(9, u.getUserPostAdd());
			stmt.executeUpdate();
			stmt.close();
			conn.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public User queryByEmail(String userEmail){
		User user = null;
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from user where user_email = '" + userEmail + "'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()){
				user = new User();
				user.setUserId(rs.getInt("user_id"));
			}
			stmt.close();
			conn.close();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public User queryByTel(String tel){
		User user = null;
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from user where user_tel = '" + tel + "'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()){
				user = new User();
				user.setUserId(rs.getInt("user_id"));
			}
			stmt.close();
			conn.close();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public User queryByUsername(String username){
		User user = null;
		try {
			Connection conn = DBUtil.getConnection();
			String sql = "select * from user where user_name = '" + username + "'";
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()){
				user = new User();
				user.setUserId(rs.getInt("user_id"));
			}
			stmt.close();
			conn.close();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
