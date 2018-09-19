package ICANTPICK.Interfaces;

import java.sql.SQLException;

import ICANTPICK.Models.Title;

public interface TitleDAOi {
	
	public Title getTitles(int decision_id) throws SQLException;
}
