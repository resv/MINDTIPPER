package ICANTPICK.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ICANTPICK.Interfaces.TitleDAOi;
import ICANTPICK.Models.Title;

public class TitleDAO implements TitleDAOi{

	
	public Title getTitles(int decision_id) throws SQLException {
		Title titleInfo = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet result = null;
		
		try {
			conn = OracleConnection.getConnection();
			String sql = "SELECT * FROM TITLE\r\n" + 
						 "WHERE DECISION_ID = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, decision_id);
			result = ps.executeQuery();
			
			titleInfo = new Title();
			
			if (result.next()) {
//				titleInfo.setTitle_id(result.getInt(1));
//				titleInfo.setDecision_id(result.getInt(2));
				titleInfo.setDecision_title(result.getString(3));
				titleInfo.setChoicetitle_a(result.getString(4));
				titleInfo.setChoicetitle_b(result.getString(5));
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
		return titleInfo;
	}
}
