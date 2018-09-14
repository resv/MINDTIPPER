package MINDTIPPER.spring.interfaces;

import java.sql.SQLException;

import MINDTIPPER.spring.models.UserInfo;

public interface UserInfoDAOi {

	UserInfo getUserByEmail(String email) throws SQLException;
	
	Boolean verifyLogin(String inputEmail, String inputPassword) throws SQLException;
}
