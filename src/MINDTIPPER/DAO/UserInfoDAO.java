package MINDTIPPER.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import MINDTIPPER.Interfaces.UserInfoDAOi;
import MINDTIPPER.Models.UserInfo;

public class UserInfoDAO implements UserInfoDAOi{

	 private JdbcTemplate jdbcTemplate;
	
	 public UserInfoDAO(DataSource dataSource) {
	        jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	
	@Override
	public UserInfo getUserByEmail(String email) throws SQLException {
		String sql = "SELECT * FROM USER_INFO WHERE EMAIL =" + email;
		return jdbcTemplate.query(sql, new ResultSetExtractor<UserInfo>() {

	        @Override
	        public UserInfo extractData(ResultSet rs) throws SQLException,
	                DataAccessException {
	            if (rs.next()) {
	                UserInfo user = new UserInfo();
	                user.setUser_id(rs.getInt("user_id"));
	                user.setUsername(rs.getString("username"));
	                user.setEmail(rs.getString("email"));
	                user.setLvl(rs.getInt("lvl"));
	                return user;
	            }
	            return null;
	        }
	    });
	}

	@Override
	public Boolean verifyLogin(String inputEmail, String inputPassword) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
