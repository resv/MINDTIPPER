package ICANTPICK.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ICANTPICK.Interfaces.ChoiceDAOi;
import ICANTPICK.Models.Choice;

public class ChoiceDAO implements ChoiceDAOi{


	public List<Choice> getChoiceDetails(int decision_id) throws SQLException {
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
		return choiceDetailList;
	}
}