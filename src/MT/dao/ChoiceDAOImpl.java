package MT.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MT.entity.Choice;

@Repository // must be applied to all DAOImpl
public class ChoiceDAOImpl implements ChoiceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Choice> getChoice() {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY INTERFACE OF TYPE<> name of QUERY,            SQL QUERY,       ENTITY
		Query<Choice> theQuery = currentSession.createQuery("From Choice", Choice.class);
		
		//execute query and get result list PUT IT IN A LIST VARIABLE
		List<Choice> choices = theQuery.getResultList();
		
		//return the results, RETURN LIST
		return choices;
	}

}
