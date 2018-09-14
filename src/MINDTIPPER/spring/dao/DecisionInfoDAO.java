package MINDTIPPER.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import MINDTIPPER.spring.interfaces.DecisionInfoDAOi;
import MINDTIPPER.spring.models.DecisionInfo;

public class DecisionInfoDAO implements DecisionInfoDAOi {

	private JdbcTemplate jdbcTemplate;
	 
    public DecisionInfoDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
	
	
    public List<DecisionInfo> list() {
    	String sql = "SELECT * FROM DECISIONINFO";
        List<DecisionInfo> dList = jdbcTemplate.query(sql, new RowMapper<DecisionInfo>() {
     
            @Override
            public DecisionInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
            	DecisionInfo dInfo = new DecisionInfo();
     
            	dInfo.setDecision_id(rs.getInt("DECISION_ID"));
            	dInfo.setUser_id(rs.getInt("USER_ID"));
                dInfo.setDate_created(rs.getString("DATE_CREATED"));
                dInfo.setWinner(rs.getString("WINNER"));
                dInfo.setWin_percent(rs.getInt("WIN_PERCENT"));
                dInfo.setComplete(rs.getString("COMPLETE"));
                dInfo.setPrivacy(rs.getString("PRIVACY"));
                dInfo.setStar(rs.getInt("STARS"));
                
     
                return dInfo;
            }
     
        });
     
        return dList;
    }
	
	
	
	
	
	
	
}

