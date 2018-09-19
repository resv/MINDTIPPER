package MINDTIPPER.IMPL;

import java.sql.SQLException;

import MINDTIPPER.MODEL.User;

public interface UserInfoDAOi {

	User getUserByEmail(String email) throws SQLException;
	
	Boolean verifyLogin(String inputEmail, String inputPassword) throws SQLException;
}
