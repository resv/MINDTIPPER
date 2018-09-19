package ICANTPICK.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ICANTPICK.Interfaces.UserInfoDAOi;
import ICANTPICK.Models.UserInfo;

public class UserInfoDAO implements UserInfoDAOi {

	public UserInfo getUserByEmail(String email) throws SQLException {
		UserInfo user = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;
		
		try {
			conn = OracleConnection.getConnection();
			String sql = "SELECT * FROM USER_INFO\r\n WHERE EMAIL =?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			result = ps.executeQuery();
			
			user = new UserInfo();
			
			if (result.next()) {
				user.setUser_id(result.getInt(1));
				user.setUsername(result.getString(2));
				user.setEmail(result.getString(3));
				user.setLvl(result.getInt(5));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (result != null) {
				result.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return user;
	}
	
	
	public Boolean verifyLogin(String inputEmail, String inputPassword) throws SQLException {
		UserInfo user = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;

		try {
			conn = OracleConnection.getConnection();
			String sql ="SELECT * FROM USERINFO \r\n" + 
						"WHERE EMAIL=? AND PASSWORD=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, inputEmail);
			ps.setString(2, inputPassword);
			result = ps.executeQuery();
			
			user = new UserInfo();
			
			if (result.next()) {
				user.setEmail(result.getString(3));  //REMEMBER, THIS IS GETTING RESULT FROM VIEW COLUMNS SO YOU MUST STATE WHICH COLUMN IN THE VIEW
				user.setPassword(result.getString(4));  //REMEMBER, THIS IS GETTING RESULT FROM VIEW COLUMNS SO YOU MUST STATE WHICH COLUMN IN THE VIEW
				user.setUsername(result.getString(2));

				if (String.valueOf(inputEmail).equals(String.valueOf(user.getEmail())) && String.valueOf(inputPassword).equals(String.valueOf(user.getPassword()))) {
					System.out.println("Verified Login and Password");
					System.out.println("Welcome " + user.getUsername() + "!");
					return true;
				}
			} else {
				System.out.println("Incorrect handle/password");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (result != null) {
				result.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return false;
	}
}
