package MT.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MT.entity.Title;

@Repository //must be applied to all DAOimpli
public class TitleDAOImpl implements TitleDAO {

	//need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Title> getTitles() {

		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY INTERFACE OF TYPE<> name of QUERY,            SQL QUERY,       ENTITY
		Query<Title> theQuery = currentSession.createQuery("From Title", Title.class);
		
		//execute query and get result list PUT IT IN A LIST VARIABLE
		List<Title> titles = theQuery.getResultList();
		
		//return the results, RETURN LIST
		return titles;
	}

}
