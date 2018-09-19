package MINDTIPPER.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import MINDTIPPER.IMPL.UserInfoDAOi;
import MINDTIPPER.MODEL.User;

public class UserInfoDAO implements UserInfoDAOi{

	 private JdbcTemplate jdbcTemplate;
	
	 public UserInfoDAO(DataSource dataSource) {
	        jdbcTemplate = new JdbcTemplate(dataSource);
	    }
	
	@Override
	public User getUserByEmail(String email) throws SQLException {
		String sql = "SELECT * FROM USER_INFO WHERE EMAIL =" + email;
		return jdbcTemplate.query(sql, new ResultSetExtractor<User>() {

	        @Override
	        public User extractData(ResultSet rs) throws SQLException,
	                DataAccessException {
	            if (rs.next()) {
	                User user = new User();
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
