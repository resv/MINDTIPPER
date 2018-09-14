package MINDTIPPER.Interfaces;

import java.sql.SQLException;

import MINDTIPPER.Models.UserInfo;

public interface UserInfoDAOi {

	UserInfo getUserByEmail(String email) throws SQLException;
	
	Boolean verifyLogin(String inputEmail, String inputPassword) throws SQLException;
}
