package ICANTPICK.Interfaces;

import java.sql.SQLException;
import java.util.List;

import ICANTPICK.Models.Choice;

public interface ChoiceDAOi {

	public List<Choice> getChoiceDetails(int decision_id) throws SQLException;
	
}
