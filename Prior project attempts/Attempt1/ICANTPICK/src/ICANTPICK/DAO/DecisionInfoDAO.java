package ICANTPICK.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ICANTPICK.Interfaces.DecisionInfoDAOi;
import ICANTPICK.Models.DecisionInfo;

public class DecisionInfoDAO implements DecisionInfoDAOi{

	public List<DecisionInfo> getDecisionHistory(int user_id) throws SQLException {
		List<DecisionInfo> userDecisionList = new ArrayList<DecisionInfo>();
		DecisionInfo decision = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;
		
		try {
			conn = OracleConnection.getConnection();
			String sql = "SELECT d.STAR,  t.DECISION_TITLE, t.CHOICETITLE_A, " +
					" t.CHOICETITLE_B, d.DATE_CREATED, d.WIN_PERCENT, d.WINNER, "+
					"d.COMPLETE, d.PRIVACY\r\n FROM DECISIONINFO d\r\n" + 
					"JOIN TITLE t on d.DECISION_ID = t.DECISION_ID\r\n" + 
					"WHERE USER_ID = ?\r\n" + 
					"ORDER BY TO_DATE(DATE_CREATED,'MM/DD/YYYY') DESC";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, user_id);
			result = ps.executeQuery();			
			
			while (result.next()) {
				decision = new DecisionInfo();
				decision.setStar(result.getInt(1));
				decision.setDecision_title(result.getString(2));
				decision.setChoicetitle_a(result.getString(3));
				decision.setChoicetitle_b(result.getString(4));
				decision.setDate_created(result.getString(5));
				decision.setWin_percent(result.getInt(6));
				decision.setWinner(result.getString(7));
				decision.setComplete(result.getString(8));
				decision.setPrivacy(result.getString(9));
				userDecisionList.add(decision);
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
		return userDecisionList;
	}

	
	public List<DecisionInfo> getCommunityDecisionHistory(String keywords) throws SQLException {
		List<DecisionInfo> comDecisionList = new ArrayList<DecisionInfo>();
		DecisionInfo decision = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;
		
		try {
			conn = OracleConnection.getConnection();
			String sql = "SELECT d.STAR, t.DECISION_TITLE, t.CHOICETITLE_A, "+
					"t.CHOICETITLE_B, d.DATE_CREATED, d.WIN_PERCENT, d.WINNER, "+
					"u.USERNAME, u.LVL\r\n" + "FROM TITLE t\r\n" + 
					"JOIN DECISIONINFO d on d.DECISION_ID = t.DECISION_ID\r\n" + 
					"JOIN USERINFO u on u.USER_ID = d.USER_ID\r\n" + 
					"WHERE t.DECISION_TITLE LIKE ?\r\n" + 
					"OR t.CHOICETITLE_A LIKE ?\r\n" + 
					"OR t.CHOICETITLE_B LIKE ?\r\n" + 
					"OR u.USERNAME LIKE ?\r\n" + 
					"ORDER BY TO_DATE(DATE_CREATED,'MM/DD/YYYY') DESC";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keywords + "%");
			ps.setString(2, "%" + keywords + "%");
			ps.setString(3, "%" + keywords + "%");
			ps.setString(4, "%" + keywords + "%");
			result = ps.executeQuery();			
			
			while (result.next()) {
				decision = new DecisionInfo();
				decision.setStar(result.getInt(1));
				decision.setDecision_title(result.getString(2));
				decision.setChoicetitle_a(result.getString(3));
				decision.setChoicetitle_b(result.getString(4));
				decision.setDate_created(result.getString(5));
				decision.setWin_percent(result.getInt(6));
				decision.setWinner(result.getString(7));
				decision.setUsername(result.getString(8));
				decision.setLvl(result.getInt(9));
				comDecisionList.add(decision);
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
		return comDecisionList;
	}
}

