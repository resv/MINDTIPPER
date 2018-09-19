package ICANTPICK.Interfaces;

import java.sql.SQLException;
import java.util.List;

import ICANTPICK.Models.DecisionInfo;

public interface DecisionInfoDAOi {

	List<DecisionInfo> getDecisionHistory(int user_id) throws SQLException;
	
	List<DecisionInfo> getCommunityDecisionHistory(String keywords) throws SQLException;
	
}
