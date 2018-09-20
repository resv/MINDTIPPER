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

		//GET THE CURRENT HIBERNATE SESSION
		Session currentSession = sessionFactory.getCurrentSession();
		
		//QUERY OF TYPE<> //QUERY NAME//                  //SQL QUERY//   //ENTITY//
		Query<Title> theQuery = currentSession.createQuery("From Title", Title.class);
		
		//EXCECUTE QUERY AND GET RESULT LIST, PUT IT IN A LIST
		List<Title> titles = theQuery.getResultList();
		
		//RETURN LIST
		return titles;
	}

}
