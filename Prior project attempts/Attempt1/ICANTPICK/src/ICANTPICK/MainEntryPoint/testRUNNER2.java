

package ICANTPICK.MainEntryPoint;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ICANTPICK.DAO.OracleConnection;
import ICANTPICK.Models.Choice;
import ICANTPICK.Models.DecisionInfo;
import ICANTPICK.Models.Title;

@SuppressWarnings("unused")
public class testRUNNER2 {

	
//----------------MAIN CALLER HERE----------------------------------	
	public static void main(String[] args) throws SQLException {
//		vgetUserByEmail("akim456@gmail.com");
//		vverifyLogin("akim456@gmail.com", "1");
//		vgetDecisionHistory(1);
//		vgetCommunityDecisionHistory("focused");
//		vgetTitles(5);
		vgetChoiceDetails(1);
		
	}


	public static List<Choice> vgetChoiceDetails(int decision_id) throws SQLException {
		List<Choice> choiceDetailList = new ArrayList<Choice>();
		Choice choiceDetails = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;
		
		try {
			conn = OracleConnection.getConnection();
			String sql = "SELECT CHOICEDETAIL_A, CHOICEDETAIL_B, CHOICEDETAIL_ID,"+
					     "SELECTION FROM CHOICE\r\n WHERE DECISION_ID = ?\r\n" + 
						 "ORDER BY CHOICEDETAIL_ID ASC";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, decision_id);
			result = ps.executeQuery();			
			
			while (result.next()) {
				choiceDetails = new Choice();
				choiceDetails.setChoicedetail_a(result.getString(1));
				choiceDetails.setChoicedetail_b(result.getString(2));
				choiceDetails.setSelection(result.getString(4));
				choiceDetailList.add(choiceDetails);
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
		System.out.println("if This printed then choice detail worked.");
		return choiceDetailList;
	}
	
}

	
//		public static Title vgetTitles(int decision_id) throws SQLException {
//			Title titleInfo = null;
//			Connection conn = null;
//			PreparedStatement ps = null;
//			ResultSet result = null;
//			
//			try {
//				conn = OracleConnection.getConnection();
//				String sql = "SELECT * FROM TITLE\r\n" + 
//							 "WHERE DECISION_ID = ?";
//				ps = conn.prepareStatement(sql);
//				ps.setInt(1, decision_id);
//				result = ps.executeQuery();
//				
//				titleInfo = new Title();
//				
//				if (result.next()) {
////					titleInfo.setTitle_id(result.getInt(1));
////					titleInfo.setDecision_id(result.getInt(2));
//					titleInfo.setDecision_title(result.getString(3));
//					titleInfo.setChoicetitle_a(result.getString(4));
//					titleInfo.setChoicetitle_b(result.getString(5));
//				}
//			}catch (Exception e) {
//				e.printStackTrace();
//			}finally {
//				if (result != null) {
//					result.close();
//				}
//				if (ps != null) {
//					ps.close();
//				}
//				if (conn != null) {
//					conn.close();
//				}
//			}
//			System.out.println("testing");
//			return titleInfo;
//		}
//}

//	public static List<DecisionInfo> vgetCommunityDecisionHistory(String keywords) throws SQLException {
//		List<DecisionInfo> comDecisionList = new ArrayList<DecisionInfo>();
//		DecisionInfo decision = null;
//		Connection conn = null;
//		PreparedStatement ps = null;
//		ResultSet result = null;
//		
//		try {
//			conn = OracleConnection.getConnection();
//			String sql = "SELECT d.STAR, t.DECISION_TITLE, t.CHOICETITLE_A, t.CHOICETITLE_B, d.DATE_CREATED, d.WIN_PERCENT, d.WINNER, u.USERNAME, u.LVL\r\n" + 
//					"FROM TITLE t\r\n" + 
//					"JOIN DECISIONINFO d on d.DECISION_ID = t.DECISION_ID\r\n" + 
//					"JOIN USERINFO u on u.USER_ID = d.USER_ID\r\n" + 
//					"WHERE t.DECISION_TITLE LIKE ?\r\n" + 
//					"OR t.CHOICETITLE_A LIKE ?\r\n" + 
//					"OR t.CHOICETITLE_B LIKE ?\r\n" + 
//					"OR u.USERNAME LIKE ?\r\n" + 
//					"ORDER BY TO_DATE(DATE_CREATED,'MM/DD/YYYY') DESC";
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, "%" + keywords + "%");
//			ps.setString(2, "%" + keywords + "%");
//			ps.setString(3, "%" + keywords + "%");
//			ps.setString(4, "%" + keywords + "%");
//			result = ps.executeQuery();			
//			
//			while (result.next()) {
//				decision = new DecisionInfo();
//				decision.setStar(result.getInt(1));
//				decision.setDecision_title(result.getString(2));
//				decision.setChoicetitle_a(result.getString(3));
//				decision.setChoicetitle_b(result.getString(4));
//				decision.setDate_created(result.getString(5));
//				decision.setWin_percent(result.getInt(6));
//				decision.setWinner(result.getString(7));
//				decision.setUsername(result.getString(8));
//				decision.setLvl(result.getInt(9));
//				comDecisionList.add(decision);
//			}
//		}catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			if (result != null) {
//				result.close();
//			}
//			if (ps != null) {
//				ps.close();
//			}
//			if (conn != null) {
//				conn.close();
//			}
//		}
//		System.out.println("comDecisionList returned");
//		return comDecisionList;
//	}
//}
	
	
	
	
	
//	public static Boolean vverifyLogin(String inputEmail, String inputPassword) throws SQLException {
//		UserInfo user = null;
//		Connection conn = null;
//		PreparedStatement ps = null;
//		ResultSet result = null;
//
//		try {
//			conn = OracleConnection.getConnection();
//			String sql ="SELECT * FROM userinfo \r\n" + 
//						"WHERE EMAIL=? and password=?";
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, inputEmail);
//			ps.setString(2, inputPassword);
//			result = ps.executeQuery();
//			
//			user = new UserInfo();
//			
//			if (result.next()) {
//				user.setEmail(result.getString(3));  //REMEMBER, THIS IS GETTING RESULT FROM VIEW COLUMNS SO YOU MUST STATE WHICH COLUMN IN THE VIEW
//				user.setPassword(result.getString(4));  //REMEMBER, THIS IS GETTING RESULT FROM VIEW COLUMNS SO YOU MUST STATE WHICH COLUMN IN THE VIEW
//				user.setUsername(result.getString(2));
//
//				if (String.valueOf(inputEmail).equals(String.valueOf(user.getEmail())) && String.valueOf(inputPassword).equals(String.valueOf(user.getPassword()))) {
//					System.out.println("Verified Login and Password");
//					System.out.println("Welcome " + user.getUsername() + "!");
//					return true;
//				}
//			} else {
//				System.out.println("Incorrect handle/password");
//			}
//				
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			if (result != null) {
//				result.close();
//			}
//			if (ps != null) {
//				ps.close();
//			}
//			if (conn != null) {
//				conn.close();
//			}
//		}
//		return false;
//	}
		

//	//METHOD FOR getUserByEmail() - WORKS!	
//	public static UserInfo vgetUserByEmail(String email) throws SQLException {
//		UserInfo user_info = null;
//		Connection conn = null;
//		PreparedStatement ps = null;
//		ResultSet result = null;
//		
//		try {
//			conn = OracleConnection.getConnection();
//			String sql = "SELECT * FROM USERINFO\r\n WHERE EMAIL =?";
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, email);
//			result = ps.executeQuery();
//			
//			user_info = new UserInfo();
//			
//			if (result.next()) {
//				user_info.setUser_id(result.getInt(1));
//				user_info.setUsername(result.getString(2));
//				user_info.setEmail(result.getString(3));
//				user_info.setLvl(result.getInt(5));
//			}
//		}catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			if (result != null) {
//				result.close();
//			}
//			if (ps != null) {
//				ps.close();
//			}
//			if (conn != null) {
//				conn.close();
//			}
//		}
//		System.out.println("user_info has been returned");
//		return user_info;
//	}
//	
//	
	